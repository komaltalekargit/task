const mysql=require('mysql');

const connection=mysql.createConnection({
    host:'localhost',
    user:'root',
    database:'employee',
    password:''
})

connection.connect((err)=>{
    err?console.log(err.message):console.log("connection established");

})

module.exports = connection