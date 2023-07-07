
import express from "express";
import router from "./routes/router.js";
import andaluh from "@andalugeeks/andaluh";

const app = express();
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

