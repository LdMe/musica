import {Router} from "express";
import usuarioController from "../controllers/usuario/usuarioController.js";

const router  = Router();

router.get("/register",(req,res)=>{
    usuarioController.registerForm(req,res);
});

router.post("/register", (req,res)=>{
    usuarioController.register(req,res);
});

router.get("/login",(req,res)=>{
    usuarioController.loginForm(req,res);
});

router.post("/login", (req,res)=>{
    usuarioController.login(req,res);
});

export default router;