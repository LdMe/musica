import {Router} from "express";
import cancionRouter from "./cancion.js";
import usuarioRouter from "./usuario.js";
import {loggedInMiddleware as isLoggedIn} from "../middlewares/isLoggedIn.js";

const router  = Router();

router.get("/",(req,res)=>{
    console.log(res);
    res.render("index");
})

router.use("/cancion",isLoggedIn,cancionRouter);
//router.use("/cancion",cancionRouter);
router.use("/",usuarioRouter);

export default router;

