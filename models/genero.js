import connection from "../config/sequelize.js";
import {DataTypes} from "sequelize";

const Genero = connection.define(
  "genero",
  {
    genero_id: {
        type: DataTypes.INTEGER,
        unsigned: true,
        primaryKey: true,
        autoIncrement: true,
    },
    nombre: {
        type: DataTypes.STRING(45),
        allowNull: false,
    }
}
);

export default Genero;