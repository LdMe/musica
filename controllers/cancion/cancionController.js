import { getAllSongs,getSongById } from "../../models/cancion.js";

async function getAll(){
    let result = await getAllSongs();
    let canciones = result.map((row)=>{
        let cancion = {
            id:row.cancion_id,
            titulo:row.titulo,
            duracion:row.duracion,
            genero:row.nombre_genero,
            albumes: result.filter((row2)=>row2.cancion_id == row.cancion_id).map((row2)=>row2.album)
        }
        return cancion;
    });
    let ids = [];
    let cancionesSet = canciones.filter((cancion)=>{
        console.log("ids",ids);
        console.log("cancion",cancion);
        if(!ids.includes(cancion.id)){
            ids.push(cancion.id);
            return true;
        }
        return false;
    });
    return cancionesSet;
}

async function getById(id){
    let result = await getSongById(id);
    console.log("resultado: ",result);
    let cancion = {
        id:result[0].cancion_id,
        titulo:result[0].titulo,
        duracion:result[0].duracion,
        genero:result[0].nombre_genero,
        albumes: result.map((row)=>row.album)
    }
    return [cancion];
}

export default {
    getAll,
    getById
}

