const connection = require('../connection/mysql.connection');
const bcrypt=require('bcrypt');
module.exports={
    getAllUsers: (req, res) => {
        connection.query('SELECT empid,name,mobile, email, address, job_role FROM employee where isActive=1', (err, result) => {
            if (err) {
                res.send({ error: true, message: err.message });
            } else {
                res.send({ error: false, message: "success", data: result });
            }
        })
    },

    createUser: (req, res) => {
        let user = req.body;
        const salt = bcrypt.genSaltSync(10);
        const hash = bcrypt.hashSync(user.password, salt);  // used for Passwrod security
        connection.query(`INSERT INTO employee(empid, name, mobile, email,password, address, job_role,isActive)  VALUES
         (0,'${user.name}','${user.mobile}','${user.email}','${hash}','${user.address}','${user.job_role}',1)`,
          (err, result) => {
            if (err) {
                res.send({ error: true, message: err.message });
            } else {
                res.send({ error: false, message: "success", data: result });
            }
        })


    },
    EditUser: (req, res) => {
        let id=req.params.id;
        let user = req.body;
        connection.query(`update employee set mobile = '${user.mobile}' where id = ${id}`,
          (err, result) => {
            if (err) {
                res.send({ error: true, message: err.message });
            } else {
                res.send({ error: false, message: "success updated", data: result });
            }
        })
    },

    deleteUser: (req, res) => {
        let id=req.params.id;
        connection.query(`update employee set isActive=0 where id = ${id}`,
          (err, result) => {
            if (err) {
                res.send({ error: true, message: err.message });
            } else {
                res.send({ error: false, message: "success deleted", data: result });
            }
        })
    },
    
}


