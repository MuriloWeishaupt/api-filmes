import { Router } from "express";
import {
  listarFilmes,
  buscarPorId,
  filtrarFilmes
} from "../controllers/FilmeController.js";

const router = Router();

router.get("/filme", listarFilmes);
router.get("/filme/:id", buscarPorId);
router.get("/filtro/filme", filtrarFilmes);

export default router;
