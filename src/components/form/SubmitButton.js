import styles from "./SubmitButton.module.css";

function SubmitButton({text}) {
    return (
        <button type="submit" className={styles.submitButton}>
            {text}
        </button>
    );
}

export default SubmitButton;