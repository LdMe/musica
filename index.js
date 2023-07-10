
import express from "express";
import router from "./routes/router.js";
import andaluh from "@andalugeeks/andaluh";
import session from "express-session";
import cors from "cors";

const app = express();

app.use(cors());
app.use(express.urlencoded({extended: true}));
app.use(express.json()) 
app.use(session({
    secret: process.env.SESSION_SECRET, // Clave de encriptación de las cookies (puede ser cualquier string)
    resave: false, // No guardar la sesión en cada petición si no hay cambios
    saveUninitialized: false, // No crear automáticamente una sesión vacía para cada petición
    cookie: { 
        secure: false, // La cookie se debe enviar sólo sobre HTTPS (true) o también sobre HTTP (false)
        maxAge: 1000 * 60  * 2// Caducidad de la cookie: 2 minutos
    }, 
    
}));
app.use(express.static('public'))
app.set('views', './views');
app.set('view engine', 'pug');

app.use("/",router);

app.get("/andaluh",(req,res)=>{
    let texto = req.query.texto;
    const andaluhEPA = new andaluh.EPA();
    res.send(andaluhEPA.transcript(texto));
});


app.listen(3000,()=>{console.log("servidor en marcha en el puerto 3000")});

