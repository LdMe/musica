import {Router} from "express";
import cancionRouter from "./cancion.js";

const router  = Router();

router.get("/",(req,res)=>{
    console.log(res);
    res.render("index");
})

router.use("/cancion",cancionRouter);

export default router;

