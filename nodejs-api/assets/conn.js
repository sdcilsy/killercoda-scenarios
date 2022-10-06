var mysql = require('mysql');

var con = mysql.createConnection({
  host: "db",
  user: "nodejs_api",
  password: "nodejs_api",
  database: "nodejs_api"
});

con.connect(function (err){mysql
    if(err) throw err;
});

module.exports = con;
