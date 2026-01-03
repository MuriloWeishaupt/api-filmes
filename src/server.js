import app from "./app.js";
import sequelize from "./config/database.js";

sequelize.authenticate()
  .then(() => {
    console.log("✅ Conectado ao banco de dados");
    app.listen(3000, () => {
      console.log(`UniFECAF Flix API rodando em http://localhost:3000`);
    });
  })
  .catch(err => {
    console.error("Erro ao conectar no banco:", err);
  });
