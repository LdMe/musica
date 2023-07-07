import connection from "../config/sequelize.js";
import Sequelize from "sequelize";
import Genero from "./genero.js";
import Album from "./album.js";

const Cancion = connection.define(
  "cancion",
  {
    cancion_id: {
      type: Sequelize.INTEGER,
      unsigned: true,
      primaryKey: true,
      autoIncrement: true,
    },
    titulo: {
      type: Sequelize.STRING(100),
      allowNull: true,
    },
    duracion: {
        type: Sequelize.INTEGER,
        unsigned: true,
        allowNull: false,
    },
    genero_id: {
        type: Sequelize.INTEGER,
        unsigned: true,
        allowNull: false,
        references: {
            model: "genero",
            key: "genero_id"
        }
    }
  }
);

Cancion.belongsTo(Genero);
Genero.hasMany(Cancion);

// many to many usando la tabla intermedia cancion_has_album

Cancion.belongsToMany(Album, {through: "cancion_has_album", foreignKey: "cancion_id"});
Album.belongsToMany(Cancion, {through: "cancion_has_album", foreignKey: "album_id"});


export default Cancion;