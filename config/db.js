import mysql from "mysql2";
import dotenv from "dotenv";

dotenv.config();

const pool = mysql.createPool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  connectionLimit: 10
});

process.on('beforeExit', () => {
  pool.end();
});

async function getConnection() {
    return new Promise((resolve, reject) => {
        pool.getConnection((err, connection) => {
        if (err) reject(err);
        resolve(connection.promise());
        });
    });
}

export default getConnection;
