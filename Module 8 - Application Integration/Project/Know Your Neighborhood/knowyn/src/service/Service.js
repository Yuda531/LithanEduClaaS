import { API_BASE_URL } from "../util/port";
import axios from "axios";
import Swal from "sweetalert2";

export const SendAMessage = (message) => {
    axios
        .post(API_BASE_URL + "/messages/AgungYuda",{
            text: message,
        })
        .then((response) => {
            successAlert();
        })
        .catch((err) => {
            alert(err);
            console.log(err);
        });
};

const successAlert = () => {
    Swal.fire({
        title: "Success",
        text: "Message sent successfully!",
        icon: "success",
        confirmButtonText: "OK",
        confirmButtonClass: "btn btn-primary"
    }).then(() => {
        window.location.href = "/contact";
    });
};

