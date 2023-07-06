import cancionController from "./cancionController.js";

async function getAll(req,res){
    let result = await cancionController.getAll();
    res.render("cancion/list",{canciones:result});
}

async function getAll2(req,res){
    let result = await cancionController.getAll2();
    res.send(result);
}

async function getById(req,res){
    let {id} = req.params;
    let result = await cancionController.getById(id);
    res.render("cancion/list",{canciones:result})
}

export default {
    getAll,
    getAll2,
    getById,

}
