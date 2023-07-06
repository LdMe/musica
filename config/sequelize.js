/*
* carga y exportación de la configuración de la base de datos con sequelize
*/

import  Sequelize  from "sequelize";

const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASSWORD, {
host:process.env.DB_HOST,
port:3306,
dialect: "mysql",
define: {
    timestamps: false
  },
});

export default sequelize;