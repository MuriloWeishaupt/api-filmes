import { DataTypes } from "sequelize";
import sequelize from "../config/database.js";

const Filme = sequelize.define("Filme", {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true
  },
  nome: {
    type: DataTypes.STRING(150),
    allowNull: false
  },
  sinopse: {
    type: DataTypes.TEXT
  },
  genero: {
    type: DataTypes.STRING(50)
  },
  ano: {
    type: DataTypes.INTEGER
  }
}, {
  tableName: "filmes",
  timestamps: false
});

export default Filme;
