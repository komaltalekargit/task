var express = require('express');
var router = express.Router();
const controler=require('../controller/user.controller')

router.get('/', controler.getAllUsers);

router.post('/create', 
//Aslo we can apply express validator for server side validation
controler.createUser);

router.post('/edit/:id', controler.EditUser);
router.post('/delete/:id', controler.EditUser);
module.exports = router;
