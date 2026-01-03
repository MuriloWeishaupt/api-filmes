import express from "express";
import filmeRoutes from "./routes/FilmeRoutes.js";

const app = express();

app.use(express.json());
app.use("/v1/controle-filmes", filmeRoutes);

export default app;
