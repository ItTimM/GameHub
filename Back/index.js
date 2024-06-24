const dotenv = require ('dotenv');

dotenv.config({path:".env.local"});
const mysql = require('mysql');
var cors = require('cors')
var db_host = process.env.db_host;
var db_user = process.env.db_user;
var db_psw = process.env.db_psw;
var db_name = process.env.db_name;
console.log(`database host = '${db_host}'`)
console.log(`database user = '${db_user}'`)
console.log(`database password = '${db_psw}'`)
console.log(`database name = '${db_name}'`)

// Настройки для подключения к MySQL базе данных
const connection = mysql.createConnection({
  host: db_host,
  user: db_us, // Пользователь базы данных
  password: db_psw, // Пароль пользователя
  database: db_name // Название базы данных
});

// Подключение к базе данных
connection.connect((err) => {
  if (err) {
    console.error('Ошибка подключения к базе данных: ', err);
    return;
  }
  console.log('Подключение к базе данных успешно');
});

// Маршрут для получения информации о товаре по ID
app.get('/product/:id', (req, res) => {
  const productId = req.params.id;
  pool.query('SELECT * FROM products WHERE id = ?', [productId], (error, results) => {
    if (error) {
      return res.status(500).send('Ошибка при выполнении запроса к базе данных');
    }
    if (results.length === 0) {
      return res.status(404).send('Товар не найден');
    }
    res.json(results[0]);
  });
});

  res.status(200).json({ result: result });
app.listen(3000)
// Закрытие соединения с базой данных
connection.end();