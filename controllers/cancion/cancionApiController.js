import cancionController from '../../controllers/cancionController.js';


const getAll = async (req, res) => {
    let result = await cancionController.getAll2();
    res.json(result);
}



const getById = async (req, res) => {
    let { id } = req.params;
    let result = await cancionController.getById2(id);
    res.json(result);
}


export default {
    getAll,
    getById,
}