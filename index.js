
const express = require('express');

const app = express();

app.get("/api/get", (req,resp)=>{
    resp.send({
        message : "Nodejs AWS Deployment"
    })
})
app.get("/api/user", (req,resp)=>{
    resp.send({
        username: "Vishalnagar",
        password : "kushal@2002",
        address : "Madhoarjapuar, Kehsortiapatan, kota, rajasthan"
    })
})

app.listen(9000,(req,res)=>{
    console.log("server running on port 9000");
})