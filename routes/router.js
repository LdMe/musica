import {Router} from "express";
import cancionRouter from "./cancion.js";
import usuarioRouter from "./usuario.js";
import cancionApiRouter from "./cancionApi.js";
import {loggedInMiddleware as isLoggedIn, jwtMiddleware} from "../middlewares/isLoggedIn.js";

const router  = Router();

router.get("/",(req,res)=>{
    console.log(res);
    res.render("index");
})

router.use("/cancion",isLoggedIn,cancionRouter);
//router.use("/cancion",cancionRouter);
router.use("/",usuarioRouter);

router.use("/api/cancion",cancionApiRouter);

export default router;

