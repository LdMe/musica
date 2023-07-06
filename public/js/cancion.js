

let canciones = document.querySelectorAll(".cancion");
canciones.forEach(cancion=>{
    cancion.addEventListener("click",()=>{
        let titulo = cancion.querySelector("h2").innerText;
        alert(titulo)
    })
});