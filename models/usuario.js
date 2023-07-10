import connection from "../config/sequelize.js";
import Sequelize from "sequelize";

const Usuario = connection.define(
    "usuario",
    {
        usuario_id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true,
        },
        username:{
            type: Sequelize.STRING(45),
            allowNull: false,
            unique: true,
        },
        password:{
            type: Sequelize.STRING(100),
            allowNull: false,
        }
        
    },
    {
        
        
    }
);

export default Usuario;

