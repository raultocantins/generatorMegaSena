const axios = require("axios");
const fs = require('fs');
var d = fs.readFileSync('\data.txt').toString()
var data = []
// var url ="https://apiloterias.com.br/app/resultado?loteria=megasena&token=tc5HiJvzOIoxRzq&concurso";
async function search() {
  var t;
  for (a = 0000; a <= 2329; a++) {
    await axios.get(
      `https://apiloterias.com.br/app/resultado?loteria=megasena&token=tc5HiJvzOIoxRzq&concurso=${a}`
    )
      .then(res => {
        if (res.data.dezenas) {
          data.push(res.data.dezenas)
        } else {
          return
        }
      })
      .catch(err => {
        console.log(err)
      })
    var text = data.map(e => `[${e.toString()}]`)
    fs.writeFileSync('\data.txt', `${text.toString()}`)
  }

}
search();
