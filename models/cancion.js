import getConnection from "../config/db.js";

async function getAllSongs() {
    try{
        const connection = await getConnection();
        const query ="SELECT cancion.*, genero.nombre as nombre_genero,album.nombre as album\
        FROM cancion\
        INNER JOIN cancion_has_album ON cancion.cancion_id = cancion_has_album.cancion_id\
        INNER JOIN album ON cancion_has_album.album_id = album.album_id\
        INNER JOIN genero ON cancion.genero_id = genero.genero_id\
        "
        const [rows] = await connection.query(query);
        connection.release();
        console.log(rows);
        return rows;
    }
    catch(error){
        console.log(error);
    }
}

async function getSongById(id) {
    try{
        const connection = await getConnection();
        const query ="SELECT cancion.*, genero.nombre as nombre_genero,album.nombre as album\
        FROM cancion\
        INNER JOIN cancion_has_album ON cancion.cancion_id = cancion_has_album.cancion_id\
        INNER JOIN album ON cancion_has_album.album_id = album.album_id\
        INNER JOIN genero ON cancion.genero_id = genero.genero_id\
        WHERE cancion.cancion_id = ?\
        "
        const [rows] = await connection.query(query,[id]);
        connection.release();
        console.log(rows);
        return rows;
    }
    catch(error){
        console.log(error);
    }
}


export {
    getAllSongs,
    getSongById
};

