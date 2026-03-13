var mysql = require('mysql');

var pool = mysql.createPool({
  host: 'localhost',
  port: 3306,
  user: 'bestmedsuser',          // 👈 new user
  password: 'Bestmeds@123',      // 👈 the same password you set in MySQL
  database: 'bestmeds',
  multipleStatements: true,
  connectionLimit: 100,
});

module.exports = pool;
