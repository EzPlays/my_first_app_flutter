import express from "express";
import morgan from "morgan";
import cors from "cors";
import indexRoutes from "./routes/blogApi.js";


const app = express();


//? Middelwares
app.use(express.json());
app.use(morgan('dev'))
app.use(cors())
app.use(indexRoutes)
app.use((request, response) => {
    response.status(404)
})
  
app.get('/',(req,res) => {
    res.send('blog api flutter');
})
  

//? Puerto
const PORT = 5000;
  
app.listen(PORT,() => {
    console.log(`Running on PORT ${PORT}`);
})






