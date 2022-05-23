const { response } = require("express");
const db = require("../config");

exports.getHero = (response) => {
  //query data
  const sql = "SELECT * FROM `hero`";

  //execute data
  db.query(sql, (error, result) => {
    if (error) return console.log("error: ", error);

    //response data
    const heroes = {
      title: "MOBILE-LEGEND-HERO-LIST",
      data: JSON.parse(JSON.stringify(result)),
    };
    // response.render("index", { heroes });
    response.redirect(`/hero/r/All`)
    response.end();
  });
};

exports.getHeroByRole = (role,response) => {
  let sql = '';
  if(role === 'All'){
     sql = `SELECT * FROM hero ORDER BY id desc;`;
  }else{
     sql = `SELECT * FROM hero WHERE role='${role}'`;
  }
  
  //execute data
  let heroes ='';
  db.query(sql, (error, result) => {
    if (error) return console.log("error: ", error);

    //response data
     heroes = {
      title: "MOBILE-LEGEND-HERO-LIST",
      role: `${role}`,
      data: JSON.parse(JSON.stringify(result))
    };
      response.render("test", { heroes });
      response.end();
  })
};

exports.getHeroById = (id, response) => {
  //query data
  const sql = `SELECT * FROM hero
  JOIN detailhero
  on detailhero.idHero = hero.id
  WHERE hero.id='${id}';`;


  db.query(sql, (error, result) => {
    if (error) return console.log("error: ", error);

    //response data
    const hero = {
      title: "DATA HERO BY ID",
      data: JSON.parse(JSON.stringify(result)),
    };

    response.render("heroDetail", { hero });
    response.end();
  });
};

exports.updateHeroById = (data, response) => {
    const id = data.id
    const name = data.name
    const role = data.role
    const story = data.story
    const skillName_1 = data.skillName_1
    const skillDesc_1 = data.skillDesc_1
    const skillName_2 = data.skillName_2
    const skillDesc_2 = data.skillDesc_2
    const skillName_3 = data.skillName_3
    const skillDesc_3 = data.skillDesc_3


    // YgPentingJalanDolo
    const sql = `UPDATE hero SET name = '${name}',role = '${role}',story = '${story}' WHERE id ='${id}';`
    const sql2 = `UPDATE detailHero SET skillName_1 = '${skillName_1}',skillDesc_1 = '${skillDesc_1}',skillName_2 = '${skillName_2}',skillDesc_2 = '${skillDesc_2}',skillName_3 = '${skillName_3}',skillDesc_3 = '${skillDesc_3}' WHERE idHero ='${id}';`
    db.query(sql2) //gimana caranya multiple querry bwang
    db.query(sql, (error, result) => {
        if (error) return console.log("error: ", error);
        response.redirect(`/hero/${id}`)
        response.end('')
      });

}

exports.addHero = (data, response) => {
    const name = data.name
    const role = data.role
    const story = data.story

    const sql = `INSERT INTO hero (name, role,story) VALUES ('${name}', '${role}', '${story}');`
    db.query(sql, (error, result) => {
        if (error) return console.log("error: ", error);
        
        response.redirect('/hero/r/All')
        response.end('')
      });

}

exports.removeHero = (id, response) => {
    const sql = `DELETE FROM hero WHERE id='${id}'`;
    db.query(sql, (error, result) => {
        if (error) return console.log("error: ", error);
        response.redirect('/hero/r/All')
        response.end('')
      });
}