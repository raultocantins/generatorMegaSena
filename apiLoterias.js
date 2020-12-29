const axios = require("axios");
var url =
  "https://apiloterias.com.br/app/resultado?loteria=megasena&token=tc5HiJvzOIoxRzq&concurso";
async function search() {
  var t;
  for (a = 0; a <= 10; a++) {
    t = await axios.get(
      `https://apiloterias.com.br/app/resultado?loteria=megasena&token=tc5HiJvzOIoxRzq&concurso=${a}`
    );
    console.log(t.data.numero_concurso);
  }
}
search();
