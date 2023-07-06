import connection from "../config/sequelize.js";
import Sequelize from "sequelize";

const Genero = connection.define(
  "genero",
  {
    genero_id: {
        type: Sequelize.INTEGER,
        unsigned: true,
        primaryKey: true,
        autoIncrement: true,
    },
    nombre: {
        type: Sequelize.STRING(45),
        allowNull: false,
    }
},
    {
        timestamps: false,
        freezeTableName: true,
    }
);

export default Genero;