import {Router} from "express";
import cancionController from "../controllers/cancion/cancionViewController.js";
const router  = Router();

/*
* obtener todas las canciones
*/
router.get("/", (req,res)=>{
    cancionController.getAll(req,res);
});

/*
* obtener la cancion con id específico
*/

router.get("/:id",async(req,res)=>{
    cancionController.getById(req,res);
})



export default router;

