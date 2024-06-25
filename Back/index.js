const express = require('express'); // Добавлен импорт модуля express
const dotenv = require('dotenv');
const app = express();
dotenv.config({path:".env.local"});
const mysql = require('mysql');
var cors = require('cors');
app.use(cors()); // Использование cors в приложении express
var db_host = process.env.db_host;
var db_user = process.env.db_user;
var db_psw = process.env.db_psw;
var db_name = process.env.db_name;
console.log(`database host = '${db_host}'`);
console.log(`database user = '${db_user}'`);
console.log(`database password = '${db_psw}'`);
console.log(`database name = '${db_name}'`);

// Настройки для подключения к MySQL базе данных
const connection = mysql.createConnection({
  host: db_host,
  user: db_user,
  password: db_psw,
  database: db_name
});

// Подключение к базе данных
connection.connect((err) => {
  if (err) {
    console.error('Ошибка подключения к базе данных: ', err);
    return;
  }
  console.log('Подключение к базе данных успешно');
});

// Маршрут для получения изображений всех товаров
app.get('/games/images', (req, res) => {
  connection.query('SELECT id, image FROM products', (error, results) => {
    if (error) {
      console.error('Ошибка при выполнении запроса к базе данных:', error);
      return res.status(500).send('Ошибка при выполнении запроса к базе данных');
    }
    if (results.length === 0) {
      return res.status(404).send('Изображения не найдены');
    }
    const images = {};
    results.forEach(product => {
      images[product.id] = Buffer.from(product.image, 'binary').toString('base64');
    });
    res.send(images);
  });
});

app.get('/product-cards', (req, res) => {
  connection.query('SELECT id, name_game, price, rating FROM game', (error, results) => {
    if (error) {
      return res.status(500).send('Ошибка при выполнении запроса к базе данных');
    }
    res.json(results);
  });
});

app.listen(3000, () => {
  console.log('Сервер запущен на порту 3000');
});