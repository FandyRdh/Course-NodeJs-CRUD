const port = 9001
const express = require("express")
const server = express()
const bodyParser = require('body-parser')
const heroController = require("./controller/hero.controller")

server.use(bodyParser.urlencoded({extended:false}))
server.set("view engine","ejs")
server.set("views","view")
server.use("/hero",heroController)

server.use(express.static('public'));

server.use("/",  (request,respones) => {
    // respones.send("MAIN SERVER SUCESS OK!")
    respones.redirect(`/hero/r/All`)
    respones.end();
})


server.listen(port, ()=>{
    console.log("server running on " + port)
})
