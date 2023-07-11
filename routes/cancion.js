import {Router} from "express";
import cancionController from "../controllers/cancion/cancionViewController.js";
import cancionApiController from "../controllers/cancion/cancionApiController.js";
const router  = Router();

/*
* obtener todas las canciones
*/
router.get("/", (req,res)=>{
    cancionController.getAll2(req,res);
});

router.get("/canciones2", (req,res)=>{
    cancionController.getAll2(req,res);
});

/*
* obtener la cancion con id específico
*/

router.get("/api", (req,res)=>{
    cancionApiController.getAll(req,res);
});
router.get("/:id",async(req,res)=>{
    cancionController.getById(req,res);
})





export default router;

