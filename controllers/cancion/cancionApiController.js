import cancionController from './cancionController.js';


const getAll = async (req, res) => {
    let result = await cancionController.getAll2();
    res.send(result);
}



const getById = async (req, res) => {
    let { id } = req.params;
    let result = await cancionController.getById2(id);
    res.json(result);
}

const createSong = async (req, res) => {
    let cancion = req.body;
    let result = await cancionController.createSong(cancion);
    res.json(result);
}


export default {
    getAll,
    getById,
    createSong
}