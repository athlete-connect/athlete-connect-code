import { useEffect, useState } from "react";
import styles from "./Post.module.css";
import likedIcon from "../../img/icons/socialMedia/likedIcon.png";
import likeIcon from "../../img/icons/socialMedia/likeIcon.png";
import commentIcon from "../../img/icons/socialMedia/commentIcon.png";
import shareIcon from "../../img/icons/socialMedia/shareIcon.png";
import complaintIcon from "../../img/icons/socialMedia/complaintIcon.png";
import complaintedIcon from "../../img/icons/socialMedia/complaintedIcon.png";
import tagsIcon from "../../img/icons/socialMedia/tagsIcon.png";
import hashtagsIcon from "../../img/icons/socialMedia/hashtagsIcon.png";
import axios from "axios"
import InputSearchField from "../layout/InputSearchField";
import SubmitButton from "../form/SubmitButton";
import InputField from "../form/InputField";
import ProfileSmallerContainer from "./ProfileSmallerContainer";
import { useProfile } from "../../ProfileContext";
import ProfilePhotoContainer from "./ProfilePhotoContainer";

function Post({authorUserName, authorPhotoPath, moment, mediasPath=[], blobUrlsMedias=[], caption, isInCreating, setHashtagsInPost, setTagsInPost, setSharings, setPostComplaintReasons, setSharingCaption, sharingCaption, setCommentText, commentText, commentSubmit, setComplaintDescription, complaintDescription, postHashtags, postTags, likeAction, comments, sharingSubmit, complaintSubmit, isLiked, isComplainted, post}) {
    const [medias, setMedias] = useState([]);
    const [hashtags, setHashtags] = useState([]);
    const [showHashtags, setShowHashtags] = useState(false);  
    const [selectedHashtags, setSelectedHashtags] = useState([]);
    const [filteredHashtags, setFilteredHashtags] = useState([]);
    const [searchTextHashtag, setSearchTextHashtag] = useState("");
    const [tags, setTags] = useState([]);
    const [showTags, setShowTags] = useState(false);  
    const [selectedTags, setSelectedTags] = useState([]);
    const [filteredTags, setFilteredTags] = useState([]);
    const [searchTextTag, setSearchTextTag] = useState("");
    const [showSharing, setShowSharing] = useState(false); 
    const [selectedSharings, setSelectedSharings] = useState([]);
    const [filteredSharings, setFilteredSharings] = useState([]);
    const [searchTextSharing, setSearchTextSharing] = useState("");
    const [showComments, setShowComments] = useState(false); 
    const [currentMediaIndex, setCurrentMediaIndex] = useState(0);
    const [complaintReasons, setComplaintReasons] = useState([]);
    const [showComplaintReasons, setShowComplaintReasons] = useState(false);  
    const [selectedComplaintReasons, setSelectedComplaintReasons] = useState([]);
    const {profileId} = useProfile();
    const [formattedMoment, setFormattedMoment] = useState();

    useEffect(() => {
        if (!blobUrlsMedias || blobUrlsMedias.length === 0) {
            const newMedias = mediasPath.map((mediaPath) => {
                const isImage = /\.(jpg|jpeg|png|webp)$/i.test(mediaPath);
                const isVideo = /\.(mp4|webm|ogg)$/i.test(mediaPath);
        
                return {
                    type: isImage ? 'image' : isVideo ? 'video' : 'unknown',
                    path: require(`../../img/${mediaPath}`),
                    duration: isVideo ? null : undefined,
                };
            });
    
            if (JSON.stringify(newMedias) !== JSON.stringify(medias)) {
                setMedias(newMedias);
            }
        } else {
            if (JSON.stringify(blobUrlsMedias) !== JSON.stringify(medias)) {
                setMedias(blobUrlsMedias);
            }
        }
    }, [blobUrlsMedias, medias, mediasPath]);

    useEffect(() => {
        if (blobUrlsMedias && blobUrlsMedias.length !== 0) {
            setCurrentMediaIndex(0);
        }
    }, [blobUrlsMedias]);

    useEffect(() => {
        axios.get("http://localhost:5000/hashtags")
        .then(resp => {
            setHashtags(resp.data);
            setFilteredHashtags(resp.data);
        })
        .catch(err => {
            console.error('Erro ao fazer a requisição:', err);
        });
    }, []);

    useEffect(() => {
        axios.get("http://localhost:5000/tags")
        .then(resp => {
            const data = resp.data;
            const confirmedProfileId = profileId || localStorage.getItem("athleteConnectProfileId");

            const filteredData = data.filter(tag => tag["nome"] !== authorUserName && String(tag["id_perfil"]) !== String(confirmedProfileId));
            console.log(confirmedProfileId);
            console.log(filteredData);

            setTags(filteredData);
            setFilteredTags(filteredData);
            setFilteredSharings(filteredData);
        })
        .catch(err => {
            console.error('Erro ao fazer a requisição:', err);
        });
    }, [authorUserName, profileId]);

    useEffect(() => {
        axios.get("http://localhost:5000/complaintReasons")
        .then(resp => {
            setComplaintReasons(resp.data);
        })
        .catch(err => {
            console.error('Erro ao fazer a requisição:', err);
        });
    }, []);

    const handleVideoLoad = (index, videoElement) => {
        if (videoElement) {
            const duration = videoElement.duration;
            const minutes = Math.floor(duration / 60);
            const seconds = Math.floor(duration % 60);
            const newDuration =  `${minutes}:${seconds < 10 ? "0" : ""}${seconds}`;

            setMedias((prevMedias) => {
                const newMedias = [...prevMedias];
                newMedias[index].duration = newDuration;
                return newMedias;
            });
        }
    };

    useEffect(() => {
        const filtered = hashtags.filter((hashtag) =>
            hashtag.nome.toLowerCase().includes(searchTextHashtag.toLowerCase())
        );
        setFilteredHashtags(filtered);
    }, [searchTextHashtag, hashtags]);
    
    useEffect(() => {
        const filtered = tags.filter((tag) =>
            tag.nome.toLowerCase().includes(searchTextTag.toLowerCase())
        );
        setFilteredTags(filtered);
    }, [searchTextTag, tags]);

    useEffect(() => {
        const filtered = tags.filter((tag) =>
            tag.nome.toLowerCase().includes(searchTextSharing.toLowerCase())
        );
        setFilteredSharings(filtered);
    }, [searchTextSharing, tags]);
    
    useEffect(() => {
        const date = new Date(moment);

        const day = String(date.getDate()).padStart(2, '0');
        const month = String(date.getMonth() + 1).padStart(2, '0');
        const year = date.getFullYear();

        const hours = String(date.getHours() + 1).padStart(2, '0');
        const minutes = String(date.getMinutes() + 1).padStart(2, '0');

        setFormattedMoment(`${day}/${month}/${year} ${hours}:${minutes}`);
    }, [moment]);

    const handleSearchHashtagChange = (e) => {
        setSearchTextHashtag(e.target.value);
    };

    const handleSearchTagChange = (e) => {
        setSearchTextTag(e.target.value);
    };

    const handleSearchSharingChange = (e) => {
        setSearchTextSharing(e.target.value);
    };

    const handleClickHashtag = (hashtag) => {
        setHashtagsInPost(prevHashtags => {
            if (prevHashtags.includes(hashtag)) {
                return prevHashtags.filter(item => item !== hashtag);
            } else {
                return [...prevHashtags, hashtag];
            }
        });

        setSelectedHashtags(prevSelected => {
            if (prevSelected.includes(hashtag)) {
                return prevSelected.filter(item => item !== hashtag);
            } else {
                return [...prevSelected, hashtag];
            }
        });
    };

    const handleClickTag = (tag) => {
        setTagsInPost(prevTags => {
            if (prevTags.includes(tag)) {
                return prevTags.filter(item => item !== tag);
            } else {
                return [...prevTags, tag];
            }
        });

        setSelectedTags(prevSelected => {
            if (prevSelected.includes(tag)) {
                return prevSelected.filter(item => item !== tag);
            } else {
                return [...prevSelected, tag];
            }
        });
    };

    const handleClickSharing = (tag) => {
        setSharings(prevTags => {
            if (prevTags.includes(tag)) {
                return prevTags.filter(item => item !== tag);
            } else {
                return [...prevTags, tag];
            }
        });

        setSelectedSharings(prevSelected => {
            if (prevSelected.includes(tag)) {
                return prevSelected.filter(item => item !== tag);
            } else {
                return [...prevSelected, tag];
            }
        });
    };

    const handleClickComplaintReason = (item) => {
        setPostComplaintReasons(prevs => {
            if (prevs.includes(item)) {
                return prevs.filter(prevItem => prevItem !== item);
            } else {
                return [...prevs, item];
            }
        });

        setSelectedComplaintReasons(prevSelected => {
            if (prevSelected.includes(item)) {
                return prevSelected.filter(prevItem => prevItem !== item);
            } else {
                return [...prevSelected, item];
            }
        });
    };

    function viewHashtags() {
        setShowHashtags(!showHashtags);  
    }

    function viewTags() {
        setShowTags(!showTags);  
    }

    function viewSharing() {
        setSelectedSharings([]);
        setSearchTextSharing("");
        setSharings([]);
        setSharingCaption("");
        setShowSharing(!showSharing);  
    }

    function viewComplaint() {
        setSelectedComplaintReasons([]);
        setPostComplaintReasons([])
        setComplaintDescription("");
        setShowComplaintReasons(!showComplaintReasons);  
    }

    function viewComments() {
        setShowComments(!showComments);
        setCommentText("");
    }

    const slideToLeft = () => {
        setCurrentMediaIndex((prevIndex) => (prevIndex > 0 ? prevIndex - 1 : medias.length - 1));
    };

    const slideToRight = () => {
        setCurrentMediaIndex((prevIndex) => (prevIndex < medias.length - 1 ? prevIndex + 1 : 0));
    };

    function handleOnChangeSharingCaption(e) {
        e.target.value = e.target.value.replace(/\s{2,}/g, ' ').trimStart();

        setSharingCaption(e.target.value);
    }

    function handleOnChangeComplaintDescription(e) {
        e.target.value = e.target.value.replace(/\s{2,}/g, ' ').trimStart();

        setComplaintDescription(e.target.value);
    }

    function handleOnChangeCommentText(e) {
        e.target.value = e.target.value.replace(/\s{2,}/g, ' ').trimStart();

        setCommentText(e.target.value);
    }

    function handleSharingSubmit(e) {
        e.preventDefault();
    
        sharingSubmit(e, post);
    
        setSelectedSharings([]);
        setSearchTextSharing("");
        setSharings([]);
        setSharingCaption("");
        setShowSharing(!showSharing); 
    };

    function handleComplaintSubmit(e) {
        e.preventDefault();
    
        complaintSubmit(e, post);
    
        setSelectedComplaintReasons([]);
        setPostComplaintReasons([]);
        setComplaintDescription("");
        setShowComplaintReasons(!showComplaintReasons);  
    };

    function handleCommentSubmit(e) {
        e.preventDefault();
    
        commentSubmit(e, post);
    
        setCommentText("");
        // setShowComments(!showComments);
    };

    return (
        <div className={styles.post}>
            <div className={styles.first_post_container}>
                <div className={styles.post_author_container}>
                    <ProfileSmallerContainer profilePhotoPath={authorPhotoPath} profileName={authorUserName}/>
                </div>

                <div className={styles.medias} id="medias">
                    {medias.length > 0 && (
                        <div id={`media${currentMediaIndex}`}>
                            <div className={styles.media_controls}>
                                {medias.length !== 1 && <p>{`${currentMediaIndex + 1}/${medias.length}`}</p>}
                                {medias[currentMediaIndex].duration && <p>{medias[currentMediaIndex].duration}</p>}
                            </div>

                            <div className={styles.slide_container}>
                                <div className={styles.slide_left} onClick={slideToLeft}></div>
                                <div className={styles.slide_right} onClick={slideToRight}></div>
                            </div>

                            {medias[currentMediaIndex].type === 'image' ? (
                                <img src={medias[currentMediaIndex].path} alt={`Media ${currentMediaIndex + 1}`} />
                            ) : medias[currentMediaIndex].type === 'video' ? (
                                <video 
                                    controls
                                    onLoadedMetadata={(e) => handleVideoLoad(currentMediaIndex, e.target)}
                                >
                                    <source src={medias[currentMediaIndex].path} type="video/mp4" />
                                    Seu navegador não suporta a tag de vídeo.
                                </video>
                            ) : null}
                        </div>
                    )}
                </div>
            </div>

            <div className={styles.container_divisor}></div>

            <div className={styles.second_post_container}>    
                <span className={styles.date}>{formattedMoment}</span>

                <div className={styles.caption}>
                    <p><span>{authorUserName}:</span> {caption}</p>
                </div>

                <div className={styles.post_actions}>
                    <ul>
                        <div>
                            <li><img src={isLiked ? likedIcon : likeIcon} alt="Like" onClick={!isInCreating ? likeAction : undefined}/></li>
                            <li>
                                <img src={shareIcon} alt="Share" onClick={!isInCreating ? viewSharing : undefined}/>
                                {!isInCreating && showSharing && (
                                    <div className={styles.actions_itens}>
                                        <form onSubmit={handleSharingSubmit}>
                                            <SubmitButton text="Compartilhar" haveError={!selectedSharings || selectedSharings.length === 0}/>
                                            <InputField 
                                                type="text" 
                                                name="sharingCaption" 
                                                placeholder="Escreva sua legenda aqui" 
                                                alertMessage="A legenda não pode ter mais que 255 caracteres"
                                                handleChange={handleOnChangeSharingCaption}    
                                                showAlert={sharingCaption && sharingCaption.length > 255}
                                                value={sharingCaption}
                                            />
                                        </form>
                                        <InputSearchField 
                                            type="text" 
                                            name="SharingSearch"
                                            placeholder="Pesquisar perfis..." 
                                            value={searchTextSharing}
                                            handleChange={handleSearchSharingChange}
                                        />
                                        <ul>
                                            {searchTextSharing && filteredSharings.length > 0 ? filteredSharings.map((tag, index) => (
                                                <li 
                                                    key={index} 
                                                    onClick={() => handleClickSharing(tag)}
                                                    className={selectedSharings.includes(tag) ? styles.selectedHashtag : ""}
                                                >
                                                    <ProfileSmallerContainer profilePhotoPath={tag["caminho"]} profileName={tag["nome"]}/>
                                                </li>
                                            )) : (
                                                searchTextSharing && <li>Perfil inexistente ou indisponível</li>
                                            )}
                                        </ul>
                                    </div>
                                )}
                            </li>
                            <li>
                                <img src={commentIcon} alt="Comment" onClick={!isInCreating ? viewComments : undefined}/>
                                {!isInCreating && showComments && (
                                    <div className={styles.actions_itens}>
                                        <form onSubmit={handleCommentSubmit}>
                                            <SubmitButton text="Comentar" haveError={!commentText || commentText.length < 0}/>
                                            <InputField 
                                                type="text" 
                                                name="commentText" 
                                                placeholder="Escreva seu comentário aqui" 
                                                alertMessage="Um comentário não pode ter mais que 255 caracteres"
                                                handleChange={handleOnChangeCommentText}    
                                                showAlert={commentText && commentText.length > 255}
                                                value={commentText}
                                            />
                                        </form>
                                        <ul>
                                            {comments.length > 0 ? comments.map((comment, index) => (
                                                <li key={index}>
                                                    <ProfilePhotoContainer profilePhotoPath={comment["caminho"]}/>
                                                    <p className={styles.comment_text}>{comment["texto"]}</p>
                                                </li>
                                            )) : (
                                                <li>Faça o primeiro comentário</li>
                                            )}
                                        </ul>
                                    </div>
                                )}    
                            </li>
                        </div>

                        <div>
                            <li>
                                <img src={tagsIcon} alt="Tags" onClick={viewTags}/>
                                {isInCreating && showTags ? (
                                    <div className={styles.actions_itens}>
                                        <InputSearchField 
                                            type="text" 
                                            name="tagsSearch"
                                            placeholder="Pesquisar perfis..." 
                                            value={searchTextTag}
                                            handleChange={handleSearchTagChange}
                                        />
                                        <ul>
                                            {searchTextTag && filteredTags.length > 0 ? filteredTags.map((tag, index) => (
                                                <li 
                                                    key={index} 
                                                    onClick={() => handleClickTag(tag)}
                                                    className={selectedTags.includes(tag) ? styles.selectedHashtag : ""}
                                                >
                                                    <ProfileSmallerContainer profilePhotoPath={tag["caminho"]} profileName={tag["nome"]}/>
                                                </li>
                                            )) : (
                                                searchTextTag && <li>Não existe um perfil com esse nome</li>
                                            )}
                                        </ul>
                                    </div>
                                ) : !isInCreating && showTags ? (
                                    <div className={styles.actions_itens}>
                                        <ul>
                                            {postTags.length !== 0 ? postTags.map((tag, index) => (
                                                <li key={index}><ProfileSmallerContainer profilePhotoPath={tag["caminho"]} profileName={tag["nome"]}/></li>
                                            )) : (
                                                <li>Sem marcações</li>
                                            )}
                                        </ul>
                                    </div>
                                ) : null}
                            </li>

                            <li>
                                <img src={hashtagsIcon} alt="Hashtags" onClick={viewHashtags}/>
                                {isInCreating && showHashtags ? (
                                    <div className={styles.actions_itens}>
                                        <InputSearchField 
                                            type="text" 
                                            name="hashtagsSearch"
                                            placeholder="Pesquisar hashtags..." 
                                            value={searchTextHashtag}
                                            handleChange={handleSearchHashtagChange}
                                        />
                                        <ul>
                                            {searchTextHashtag && filteredHashtags.length > 0 ? filteredHashtags.map((hashtag, index) => (
                                                <li 
                                                    key={index} 
                                                    onClick={() => handleClickHashtag(hashtag)}
                                                    className={selectedHashtags.includes(hashtag) ? styles.selectedHashtag : ""}
                                                >
                                                    # {hashtag['nome']}
                                                </li>
                                            )) : (
                                                searchTextHashtag && <li>Nenhuma hashtag encontrada</li>
                                            )}
                                        </ul>
                                    </div>
                                ) : !isInCreating && showHashtags ? (
                                    <div className={styles.actions_itens}>
                                        <ul>
                                            {postHashtags.length !== 0 ? postHashtags.map((hashtag, index) => (
                                                <li key={index}># {hashtag['nome']}</li>
                                            )) : (
                                                <li>Sem hashtags</li>
                                            )}
                                        </ul>
                                    </div>
                                ) : null}
                            </li>
                        </div>
                        
                        <div>
                            <li><img src={isComplainted ? complaintedIcon : complaintIcon} alt="Complaint" onClick={!isInCreating && !isComplainted ? viewComplaint : undefined}/></li>
                            {showComplaintReasons && (
                                <div className={styles.actions_itens}>
                                    <form onSubmit={handleComplaintSubmit}>
                                        <SubmitButton text="Denunciar" haveError={!complaintDescription && (!selectedComplaintReasons || selectedComplaintReasons.length === 0)}/>
                                        <InputField 
                                            type="text" 
                                            name="complaintDescription" 
                                            placeholder="Descreva o motivo da sua denúncia" 
                                            alertMessage="A descrição não pode ter mais que 255 caracteres"
                                            handleChange={handleOnChangeComplaintDescription}    
                                            showAlert={complaintDescription && complaintDescription.length > 255}
                                            value={complaintDescription}
                                        />
                                    </form>
                                    <ul>
                                        <p>Motivos:</p>
                                        <hr/>
                                        <br/>   
                                        {complaintReasons.map((reason, index) => (
                                            <li 
                                                key={index} 
                                                onClick={() => handleClickComplaintReason(reason)}
                                                className={selectedComplaintReasons.includes(reason) ? styles.selectedHashtag : ""}
                                            >
                                                {reason["motivo"]}
                                            </li>
                                        ))}
                                    </ul>
                                </div>
                            )}
                        </div>
                    </ul>
                </div>
            </div>
        </div>
    );
}

export default Post;
