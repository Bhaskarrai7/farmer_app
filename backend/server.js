const express = require('express');
const dotenv = require('dotenv'); 
// const mongoose = require('mongoose');
// const User = require('./models/User');
const error = require('./middlewares/errorMiddlewareHandler');
 const usersRoute = require('./routes/usersRoute');
const cropRoutes = require('./routes/cropRoutes');
 
 dotenv.config();

 require('./config/dbConnect')();



const app = express();

//passing body data
app.use(express.json());


 //routes
 //users
 app.use('/api/users',usersRoute);

 //crops
 app.use('/api/crops',cropRoutes);


 //errorMiddleware
 app.use(error.errorMiddlewareHandler);

//server
const PORT = process.env.PORT || 8000;

app.listen(PORT,() => {
    console.log('server is running'+ PORT )
});



//username - rai
//pwd - yx7is4Vyuc4zXyLf
//mongodb+srv://rai:<password>@cluster0.h5gy0.mongodb.net/test