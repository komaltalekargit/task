const connection = require('../connection/mysql.connection')
const jwt=require('jsonwebtoken');
let bcrypt=require('bcrypt');
module.exports = {
    login:(req,res)=>{
        let userName = req.body.userName;
        let Password=req.body.Password;

        connection.query(`select * from employee where email='${userName}'`,(err,result)=>{
            if(err){
                res.send({message:err.message});
            }else{
                console.log(result);
                isSame=bcrypt.compareSync(Password,result[0].password);
                if(isSame){
                    let token =jwt.sign({id:result[0].empid},'secretKey',{algorithm:'HS256',expiresIn:'1h'})
                    res.send({message:"Loged in successfully" ,token:token});
                }
            }
        })
        
    }
}