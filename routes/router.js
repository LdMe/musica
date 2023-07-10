import {Router} from "express";
import cancionRouter from "./cancion.js";
import usuarioRouter from "./usuario.js";

const router  = Router();

router.get("/",(req,res)=>{
    console.log(res);
    res.render("index");
})

router.use("/cancion",cancionRouter);
router.use("/usuario",usuarioRouter);

export default router;

