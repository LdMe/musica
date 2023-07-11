import {Router} from "express";
import usuarioController from "../controllers/usuario/usuarioController.js";
import usuarioApiController from "../controllers/usuario/usuarioApiController.js";
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

router.get("/logout", (req,res)=>{
    usuarioController.logout(req,res);
});

router.post("/api/login", (req,res)=>{
    usuarioApiController.login(req,res);
});

router.post("/api/register", (req,res)=>{
    usuarioApiController.register(req,res);
}
);




export default router;