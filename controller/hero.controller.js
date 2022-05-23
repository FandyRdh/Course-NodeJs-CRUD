
const { response } = require("express");
const express = require("express");
const { route } = require("express/lib/application");
const router = express.Router()
const Hero = require("../model/Hero.model")

router.get('/',(request,response)=>{
    Hero.getHero(response);
})

router.get('/r/:role',(request,response)=>{
    const role = request.params.role
    Hero.getHeroByRole(role,response);
})

router.get('/:id',(request,response)=>{
    const id = request.params.id
    Hero.getHeroById(id,response)

})

router.post('/update', ( request,response) =>{
    const data = {
     "id":request.body.id,
     "name":request.body.name,
     "role":request.body.role,
     "story":request.body.story,
    //  tb.DH
    "skillName_1":request.body.skillName_1,
    "skillDesc_1":request.body.skillDesc_1,
    "skillName_2":request.body.skillName_2,
    "skillDesc_2":request.body.skillDesc_2,
    "skillName_3":request.body.skillName_3,
    "skillDesc_3":request.body.skillDesc_3
    }

    Hero.updateHeroById(data,response)
})

router.post('/add', (request,response) =>{
    const data = {
     "name":request.body.name,
     "role":request.body.role,
     "story":request.body.story
    }
    Hero.addHero(data,response)
})

router.get('/remove/:id',(request,response)=>{
    const id = request.params.id
    Hero.removeHero(id,response);
})

module.exports = router;