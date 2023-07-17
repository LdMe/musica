import {Router} from "express";
import cancionController from "../controllers/cancion/cancionApiController.js";

const router  = Router();

/*
* obtener todas las canciones
*/
router.get("/", (req,res)=>{
    cancionController.getAll(req,res);
});

router.post("/",async(req,res)=>{
    cancionController.createSong(req,res);
});


router.get("/:id",async(req,res)=>{
    cancionController.getById(req,res);
})





export default router;

