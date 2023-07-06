import connection from "../config/sequelize.js";
import Sequelize from "sequelize";

const Album = connection.define(
    "album",
    {
        album_id: {
            type: Sequelize.INTEGER,
            unsigned: true,
            primaryKey: true,
            autoIncrement: true,
        },
        nombre: {
            type: Sequelize.STRING(100),
            allowNull: false,
        },
        fecha_creacion: {
            type: Sequelize.DATE,
            allowNull: false,
        },
        portada: {
            type: Sequelize.STRING(200),
            allowNull: true,
        },
        grupo_id: {
            type: Sequelize.INTEGER,
            unsigned: true,
            allowNull: false,
            references: {
                model: "grupo",
                key: "grupo_id"
            }
        },
        discografica_id: {
            type: Sequelize.INTEGER,
            unsigned: true,
            allowNull: false,
        }
    },
    {
        timestamps: false,
        freezeTableName: true,
    }
);

export default Album;

