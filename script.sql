CREATE DATABASE IF NOT EXISTS unifecaf_flix;
USE unifecaf_flix;

CREATE TABLE IF NOT EXISTS filmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    sinopse TEXT,
    genero VARCHAR(50),
    ano INT
);

INSERT INTO filmes (nome, sinopse, genero, ano) VALUES
('Matrix', 'Um hacker descobre a verdade sobre a realidade.', 'Ficção Científica', 1999),
('Interestelar', 'Uma missão espacial em busca da sobrevivência da humanidade.', 'Ficção Científica', 2014),
('O Poderoso Chefão', 'A história da família mafiosa Corleone.', 'Drama', 1972),
('Inception', 'Um ladrão invade sonhos para roubar informações.', 'Ficção Científica', 2010),
('Clube da Luta', 'Um homem cria um clube secreto como forma de rebeldia.', 'Drama', 1999),
('Forrest Gump', 'A história de vida de um homem simples em meio a grandes eventos.', 'Drama', 1994),
('Gladiador', 'Um general romano busca vingança.', 'Ação', 2000),
('Batman: O Cavaleiro das Trevas', 'Batman enfrenta o vilão Coringa.', 'Ação', 2008),
('Vingadores: Ultimato', 'Os heróis tentam desfazer o caos causado por Thanos.', 'Ação', 2019),
('Cidade de Deus', 'O crescimento do crime organizado em uma favela.', 'Drama', 2002),
('Parasita', 'Uma família pobre se infiltra na vida de uma família rica.', 'Suspense', 2019),
('O Senhor dos Anéis: A Sociedade do Anel', 'Um hobbit recebe a missão de destruir um anel.', 'Fantasia', 2001),
('Star Wars: Uma Nova Esperança', 'A batalha entre o Império e a Aliança Rebelde.', 'Ficção Científica', 1977),
('Pulp Fiction', 'Histórias interligadas do submundo do crime.', 'Crime', 1994),
('O Lobo de Wall Street', 'A ascensão e queda de um corretor ambicioso.', 'Drama', 2013),
('Django Livre', 'Um ex-escravo busca resgatar sua esposa.', 'Faroeste', 2012),
('A Origem dos Guardiões', 'Heróis lendários protegem as crianças.', 'Animação', 2012),
('Toy Story', 'Brinquedos ganham vida quando humanos não estão por perto.', 'Animação', 1995),
('Titanic', 'Um romance trágico a bordo de um navio.', 'Romance', 1997),
('Jurassic Park', 'Dinossauros são clonados em um parque temático.', 'Aventura', 1993);
