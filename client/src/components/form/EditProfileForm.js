import InputField from "./InputField";
import SubmitButton from "./SubmitButton";
import styles from "./EditProfileForm.module.css"
import { useCallback, useEffect, useState } from "react";

function EditProfileForm({handleSubmit, profile, setProfile}) {
    const [privateProfile, setPrivateProfile] = useState(false);
    const [acceptTerms, setAcceptTerms] = useState(false);
    const [haveError, setHaveError] = useState(false);

    function handleOnChange(e) {
        if (e.target.name === "nameSignUp") e.target.value = e.target.value.replace(/\s+/g, "");

        setProfile({ ...profile, [e.target.name]: e.target.value });
    }

    function handleOnChangePrivate() {
        const newPrivateProfile = !privateProfile;
        setPrivateProfile(newPrivateProfile); 
        setProfile({ ...profile, private: newPrivateProfile });
    }

    function handleOnChangeAcceptTerms() {
        const newAcceptTerms = !acceptTerms;
        setAcceptTerms(newAcceptTerms);
        setProfile({...profile, acceptTerms: newAcceptTerms })
    }

    const validateName = useCallback(() => {
        return profile["nameSignUp"] && /^[a-zA-Z0-9_@+&.]{4,30}$/.test(profile["nameSignUp"]);
    }, [profile]); 
    
    const validateBio = useCallback(() => {
        return (profile["bio"] && profile["bio"].length <= 150) || !profile["bio"];
    }, [profile]);

    useEffect(() => {
        setHaveError(!(validateName() && validateBio() && acceptTerms));
    }, [acceptTerms, profile, validateBio, validateName]);

    return (
        <form onSubmit={handleSubmit} className={`${styles.edit_profile_form}`}>
            <h2>Editar Perfil</h2>

            <p className={styles.empty_field_alert}>- Campos obrigatórios são marcados com "*"</p>

            <div className={styles.inputs_container}>
                <InputField 
                    type="text" 
                    name="nameSignUp" 
                    placeholder="Insira o nome de usuário" 
                    labelText="Nome de Usuário*" 
                    alertMessage='O nome de usuário deve ter entre 4 e 30 caracteres, sem espaços e símbolos diferentes de: "_", "@", "+","&" e ".".' 
                    handleChange={handleOnChange} 
                    showAlert={profile["nameSignUp"] && !validateName()}
                    value={profile["nameSignUp"]}
                />

                <InputField 
                    type="text" 
                    name="bio" 
                    placeholder="Insira sua biografia" 
                    labelText="Biografia" 
                    alertMessage="A biografia não pode ter mais que 150 caracteres." 
                    handleChange={handleOnChange} 
                    showAlert={profile["bio"] && !validateBio()}
                />

                <InputField 
                    type="checkbox" 
                    name="private"  
                    labelText="Clique na caixa abaixo para tornar seu perfil privado" 
                    handleChange={handleOnChangePrivate} 
                />

                <InputField 
                    type="checkbox" 
                    name="acceptTerms"  
                    labelText="Ao clicar na caixa abaixo, você estará aceitando os termos e condições do Athlete Connect" 
                    handleChange={handleOnChangeAcceptTerms} 
                    alertMessage="Aceite os termos e condições para criar uma conta." 
                    showAlert={!acceptTerms}
                />
            </div>

            <div className={styles.buttons_container}>
                <SubmitButton text="Criar perfil" haveError={haveError}/>
            </div>
        </form>
    );
}

export default EditProfileForm;