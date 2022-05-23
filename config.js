const mysql = require("mysql")

// DB Credential
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "mobile_legend"
})

// Intregrating
connection.connect((error) =>{
    if (error) throw error
console.log("Database Connected!")
})

module.exports = connection