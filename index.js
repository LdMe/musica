import express from "express";
import router from "./routes/router.js";

const app = express();
app.use(express.static('public'))
app.set('views', './views');
app.set('view engine', 'pug');

app.use("/",router);


app.listen(3001,()=>{console.log("servidor en marcha en el puerto 3001")});

