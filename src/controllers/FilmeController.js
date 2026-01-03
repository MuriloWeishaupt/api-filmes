import Filme from "../models/Filme.js";
import { Op } from "sequelize";

export const listarFilmes = async (req, res) => {
  try {
    const filmes = await Filme.findAll();
    return res.status(200).json(filmes);
  } catch (error) {
    return res.status(500).json({ erro: "Erro ao listar filmes" });
  }
};

export const buscarPorId = async (req, res) => {
  const { id } = req.params;

  const filme = await Filme.findByPk(id);

  if (!filme) {
    return res.status(404).json({ mensagem: "Filme não encontrado" });
  }

  return res.status(200).json(filme);
};

export const filtrarFilmes = async (req, res) => {
  const { nome } = req.query;

  if (!nome) {
    return res.status(400).json({
      mensagem: "Parâmetro 'nome' é obrigatório"
    });
  }

  const filmes = await Filme.findAll({
    where: {
      [Op.or]: [
        { nome: { [Op.like]: `%${nome}%` } },
        { sinopse: { [Op.like]: `%${nome}%` } }
      ]
    }
  });

  return res.status(200).json(filmes);
};
