import { useEffect, useState } from "react";
import { useLocation, useNavigate } from "react-router-dom";
import SportCard from "../layout/SportCard";
import styles from "./ProfilePreferences.module.css";
import SubmitButton from "../form/SubmitButton";
import axios from "axios"

import futebolIcon from "../../img/icons/sports/futebolIcon.png";

function ProfilePreferences() {
    const [sports, setSports] = useState([]);
    const [profilePreferences, setProfilePreferences] = useState([]);
    const [profile, setProfile] = useState({});
    const [isSubmitting, setIsSubmitting] = useState(false);

    const navigate = useNavigate()
    const location = useLocation();

    useEffect(() => {
        const profile = location.state?.profileReady

        if (!profile) {
            navigate("/login");
        } else {
            setProfile(location.state.profileReady);
        }
    }, [location, navigate]);

    useEffect(() => {
        axios.get("http://localhost:5000/sports")
        .then(resp => {
            console.log(resp.data)
            setSports(resp.data);
        })
        .catch(err => {
            console.error('Erro ao fazer a requisição:', err);
        });
    }, []);

    function handleOnClick(sport) {
        setProfilePreferences(prevPreferences => {
            if (prevPreferences.includes(sport)) {
                return prevPreferences.filter(item => item !== sport);
            } else {
                return [...prevPreferences, sport];
            }
        });
    }

    function handleOnSubmit(e) {
        e.preventDefault();

        if (isSubmitting) return; 

        setIsSubmitting(true);

        const sportsIds = profilePreferences.map(sport => sport.id_esporte);
        profile['preferences'] = sportsIds;

        axios.post("http://localhost:5000/profiles", profile)
        .then(resp => {
            localStorage.setItem("athleteConnectProfileId", resp.data.profileId)
            
            navigate("/", {state: {athleteConnectProfileId: resp.data.profileId}});
        })
        .catch(err => {
            console.error('Erro ao fazer a requisição:', err);
            setIsSubmitting(false);
        });
    }

    return (
        <main className={styles.profile_preferences_page}>
            <header className={styles.title_section}> 
                <h1>Suas Preferências</h1>
                <p>Selecione os esportes que te agradam para personalizarmos seu feed de acordo com seu gosto.</p>
            </header>

            <hr/>

            <div className={styles.sports_cards}>
                {sports.map((sport) => (
                    <SportCard 
                        key={sport.id_esporte}
                        icon={futebolIcon} 
                        sportName={sport.nome} 
                        categories={sport.categories} 
                        handleClick={() => handleOnClick(sport)}
                        selected={profilePreferences.includes(sport)}
                    />
                ))}
            </div>

            <form onSubmit={handleOnSubmit}>
                <SubmitButton text="Confirmar preferências"/>
            </form>
        </main>
    );
}

export default ProfilePreferences;
























