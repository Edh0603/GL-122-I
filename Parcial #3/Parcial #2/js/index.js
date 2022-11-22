/*<article>
    <div>
        <img src="../img/plato1.jpg"  alt="" class="imagen"></div>
        <h3 class="info_art">Salmón con trigueros y judías blancas
            <br>
            Desayuno Nutritivo
        </h3>
    <p class="parraf_art">
        Una buena opción para empezar el día de manera nutritiva sin perder ese sabor y nutrientes exclusivos del salmón
    </p>
        <button class="button">Leer Más...</button>
</article>*/

const contenedor = document.querySelector("#contenedor");
const url = "http://localhost:8080/comidas/all";

const addComidas = data=>{
    data.forEach(element => {
        const articulo = document.createElement("article");
        articulo.innerHTML = `
        <div>
        <img src="${element.imagen}"  alt="" class="imagen"></div>
        <h3 class="info_art">${element.nombre}
            <br>
            ${element.tipo}
        </h3>
        <p class="parraf_art">
            ${element.descripcion}
        </p>
        <button class="button">Leer Más...</button>`
        contenedor.appendChild(articulo)
    });
}

fetch(url).then(data=>data.json()).then(addComidas)