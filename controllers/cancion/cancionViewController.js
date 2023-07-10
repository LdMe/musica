import cancionController from "./cancionController.js";

async function getAll(req,res){
    let result = await cancionController.getAll();
    
    res.render("cancion/list",{canciones:result});
}

async function getAll2(req,res){
    let result = await cancionController.getAll2();
    result = result.map((cancion)=>{
        cancion.duracion = new Date(cancion.duracion * 1000).toISOString().slice(11, 19);
        return cancion;
    });
    res.render("cancion/list",{canciones:result,user:req.session.usuario});
}

async function getById(req,res){
    let {id} = req.params;
    let result = await cancionController.getById2(id);
    result = result.map((cancion)=>{
        cancion.duracion = new Date(cancion.duracion * 1000).toISOString().slice(11, 19);
        return cancion;
    });
    res.render("cancion/list",{canciones:result,user:req.session.usuario})
}

export default {
    getAll,
    getAll2,
    getById,

}
