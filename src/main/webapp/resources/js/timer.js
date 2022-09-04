let timer = document.querySelector("#timer");

let activeTime = setInterval(() => {
    let date = new Date();
    let hours = date.getHours() < 10 ? "0"+date.getHours() : date.getHours();
    let minutes = date.getMinutes() < 10 ? "0"+date.getMinutes() : date.getMinutes();
    let seconds = date.getSeconds() < 10 ? "0"+date.getSeconds() : date.getSeconds();;

    timer.innerHTML =
        hours + ":" + minutes + ":" + seconds;
})