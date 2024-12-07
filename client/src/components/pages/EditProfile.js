import { useEffect, useState } from "react";
import EditProfileForm from "../form/EditProfileForm";
import styles from "./EditProfile.module.css";
import { useLocation, useNavigate } from "react-router-dom";
import Message from "../layout/Message";

function EditProfile() {
    const [profiles, setProfiles] = useState([]);
    const [profile, setProfile] = useState({});
    const [message, setMessage] = useState({});

    const navigate = useNavigate();
    const location = useLocation();

    useEffect(() => {
        const profile = location.state?.profile
        const profiles = location.state?.profiles

        if (!profile || !profiles) {
            navigate("/login");
        } else {
            setProfile(location.state.profile);
            setProfiles(location.state.profiles);
        }
    }, [location, navigate]);

    function profileMatch() {
        return profiles.some(p => (p["email"] === profile["emailSignUp"] || p["nome"] === profile["nameSignUp"]))
    }

    function setMessageWithReset(newMessage, type) {
        setMessage(null);

        setTimeout(() => {
            setMessage({message: newMessage, type: type});
        }, 1);
    }

    function handleOnSubmit(e) {
        e.preventDefault();

        if (!profileMatch()) {    
            if (!profile["bio"]) profile["bio"] = "";

            navigate("/profilePreferences", {state: {profileReady: profile}});
        } else {
            setMessageWithReset("Já existe um perfil com o mesmo nome.", "error");
        }
    }

    return (
        <main className={styles.edit_profile_page}>
            {message && <Message message={message.message} type={message.type}/>}
            <EditProfileForm handleSubmit={handleOnSubmit} profile={profile} setProfile={setProfile}/>
        </main>
    );
}

export default EditProfile;