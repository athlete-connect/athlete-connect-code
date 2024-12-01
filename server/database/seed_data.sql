INSERT INTO categoria_esporte (nome, descricao) VALUES
('Coletivos', 'Esportes jogados em equipe, geralmente envolvendo competição entre dois ou mais times.'),
('Individuais', 'Esportes praticados individualmente, onde o atleta compete contra outros.'),
('Combate', 'Esportes que envolvem confrontos diretos entre competidores.'),
('Aventura', 'Esportes que oferecem emoção e aventura, frequentemente em ambientes naturais.'),
('Aquáticos', 'Esportes realizados em ambientes aquáticos, como piscinas, rios ou oceanos.'),
('Inverno', 'Esportes praticados em condições de neve e gelo.'),
('Precisão', 'Esportes que exigem precisão e habilidades técnicas para acertar alvos.'),
('Equestres', 'Esportes que envolvem cavalos, como hipismo e rodeio.'),
('Para Deficientes', 'Modalidades esportivas adaptadas para atletas com deficiência.'),
('Radicais', 'Esportes que envolvem adrenalina, desafios extremos e habilidades técnicas em ambientes variados.'),
('Natação', 'Esportes aquáticos que envolve nadar em várias distâncias.'),
('Ciclismo', 'Esportes que envolve andar de bicicleta em diferentes modalidades.'),
('Com Bola', 'Esportes que utilizam uma bola como principal objeto de jogo.'),
('Tabuleiro', 'Jogos que são jogados em tabuleiros, como xadrez e damas.'),
('Corrida', 'Esportes que envolve correr em diferentes distâncias e terrenos.'),
('Automobilismo', 'Esportes que envolvem competições de carros, incluindo corridas e eventos de velocidade.'),
('Atletismo', 'Conjunto de esportes que inclui corridas, saltos e lançamentos.'),
('Força', 'Esportes e atividades que enfatizam o desenvolvimento da força física.');

INSERT INTO midia (caminho, tipo, formato) VALUES
('/client/src/img/icons/sports/futebolIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/basqueteIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/tenisIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/xadrezIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/judoIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/boxeIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/escaladaIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/parapenteIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/surfIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/canoagemIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/esquiIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/snowboardIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/tiroComArcoIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/golfeIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/hipismoIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/rodeioIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/basqueteEmCadeiraDeRodasIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/natacaoParalimpicaIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/esportsIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/paintballIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/triatloIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/ciclismoDeEstradaIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/bmxIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/handebolIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/poloAquaticoIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/damasIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/corridaDeRuaIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/corridaDeRevezamentoIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/formula1Icon.png', 'icone', 'png'),
('/client/src/img/icons/sports/raliIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/arremessoDePesoIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/saltoComVaraIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/voleiIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/parkourIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/powerliftingIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/strongmanIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/fisiculturismoIcon.png', 'icone', 'png'),
('/client/src/img/icons/sports/paraquedismoIcon.png', 'icone', 'png');

INSERT INTO esporte (nome, descricao, fk_midia_id_icone) VALUES
('Futebol', 'Esporte coletivo mais popular do mundo, onde duas equipes de 11 jogadores disputam para marcar gols no campo adversário.', 1),
('Basquete', 'Modalidade coletiva onde duas equipes de cinco jogadores competem para arremessar uma bola em um aro elevado.', 2),
('Tênis', 'Esporte individual ou em duplas, onde os jogadores usam raquetes para rebater a bola para o lado adversário.', 3),
('Xadrez', 'Jogo individual de estratégia e lógica, onde dois jogadores competem para dar xeque-mate no rei do adversário.', 4),
('Judô', 'Arte marcial olímpica que utiliza técnicas de projeção e imobilização para vencer o adversário.', 5),
('Boxe', 'Esporte de combate em que os participantes usam luvas para realizar golpes diretos em um ringue.', 6),
('Escalada', 'Esporte de aventura onde o praticante escala superfícies rochosas ou paredes artificiais.', 7),
('Parapente', 'Atividade aérea que consiste em voar utilizando um paraquedas controlável, geralmente em locais montanhosos.', 8),
('Surf', 'Esporte aquático praticado no mar, onde atletas utilizam pranchas para deslizar sobre ondas.', 9),
('Canoagem', 'Modalidade aquática que utiliza canoas ou caiaques para percorrer rios, lagos ou mares.', 10),
('Esqui', 'Esporte de inverno praticado em neve, que envolve deslizar sobre superfícies usando esquis.', 11),
('Snowboard', 'Modalidade de inverno onde o atleta desliza sobre a neve em uma prancha, realizando manobras.', 12),
('Tiro com Arco', 'Esporte de precisão onde os participantes utilizam arcos para lançar flechas em alvos.', 13),
('Golfe', 'Modalidade de precisão onde jogadores utilizam tacos para acertar bolas em buracos ao longo de um campo.', 14),
('Hipismo', 'Esporte equestre que inclui salto, adestramento e provas de resistência, destacando a interação entre cavalo e cavaleiro.', 15),
('Rodeio', 'Modalidade que envolve montaria em touros e cavalos, com provas de habilidade e força.', 16),
('Basquete em Cadeira de Rodas', 'Versão adaptada do basquete para pessoas com deficiência física.', 17),
('Natação Paralímpica', 'Modalidade de natação adaptada para atletas com diferentes tipos de deficiência.', 18),
('E-Sports', 'Competição de videogames em ambiente virtual, abrangendo modalidades como MOBA, FPS e battle royale.', 19),
('Paintball', 'Jogo recreativo onde os participantes utilizam marcadores para disparar tinta em adversários.', 20),
('Triatlo', 'Competição que combina natação, ciclismo e corrida, testando a resistência e versatilidade dos atletas em diferentes modalidades.', 21),
('Ciclismo de Estrada', 'Modalidade onde ciclistas percorrem longas distâncias em estradas pavimentadas, combinando resistência e estratégia.', 22),
('BMX', 'Variante do ciclismo com foco em manobras acrobáticas e competições em pistas com obstáculos.', 23),
('Handebol', 'Esporte coletivo jogado com as mãos, onde equipes buscam marcar gols no gol adversário.', 24),
('Polo Aquático', 'Modalidade aquática onde os jogadores utilizam uma bola para marcar gols em piscinas.', 25),
('Damas', 'Jogo de tabuleiro onde os participantes utilizam estratégias para capturar as peças do oponente.', 26),
('Corrida de Rua', 'Modalidade de atletismo realizada em vias urbanas, com distâncias variando de 5 km a maratonas.', 27),
('Corrida de Revezamento', 'Modalidade em que equipes de atletas se alternam para completar um percurso dividido em etapas.', 28),
('Fórmula 1', 'Categoria de automobilismo de alta performance, realizada em circuitos fechados.', 29),
('Rali', 'Competição de automobilismo realizada em terrenos variados, como terra, areia e asfalto.', 30),
('Arremesso de Peso', 'Prova onde o atleta lança uma esfera metálica o mais longe possível, combinando força e técnica.', 31),
('Salto com Vara', 'Modalidade de atletismo onde os competidores utilizam uma vara para alcançar a maior altura possível.', 32),
('Vôlei', 'Esporte coletivo jogado entre duas equipes, onde o objetivo é enviar a bola por cima da rede e evitar que ela toque no chão do lado adversário.', 33),
('Parkour', 'Atividade que consiste em se deslocar de forma ágil e eficiente em ambientes urbanos ou naturais, superando obstáculos com saltos, escaladas e manobras.', 34),
('Powerlifting', 'Modalidade de levantamento de peso que consiste em três provas: agachamento, supino e levantamento terra, com foco em força máxima.', 35),
('Strongman', 'Competição que envolve a realização de várias provas de força, incluindo levantamento de pesos, transporte de objetos pesados e superação de obstáculos.', 36),
('Fisiculturismo', 'Esporte que enfatiza o desenvolvimento muscular e a estética corporal, com competições que avaliam a simetria, proporção, definição e o volume muscular dos atletas.', 37),
('Paraquedismo', 'Atividade aérea que envolve saltar de um avião e planar com um paraquedas, proporcionando uma experiência de queda livre e vistas aéreas.', 38);

INSERT INTO categorias_esporte (fk_esporte_id_esporte, fk_categoria_esporte_id_categoria_esporte) VALUES
(1,1),
(1,13),
(2,1),
(2,13),
(3,1),
(3,2),
(3,13),
(4,2),
(4,14),
(5,2),
(5,3),
(5,18),
(6,2),
(6,3),
(6,18),
(7,2),
(7,4),
(7,10),
(8,2),
(8,4),
(8,10),
(9,2),
(9,4),
(9,5),
(9,10),
(10,1),
(10,2),
(10,4),
(10,5),
(10,10),
(11,2),
(11,4),
(11,6),
(11,10),
(12,2),
(12,4),
(12,6),
(12,10),
(13,2),
(13,7),
(14,2),
(14,7),
(14,13),
(15,2),
(15,8),
(16,2),
(16,8),
(16,18),
(17,1),
(17,9),
(17,13),
(18,2),
(18,5),
(18,9),
(18,11),
(19,1),
(19,2),
(20,1),
(20,7),
(21,2),
(21,4),
(21,5),
(21,11),
(21,12),
(21,15),
(22,2),
(22,4),
(22,12),
(22,15),
(23,2),
(23,7),
(23,10),
(23,12),
(24,1),
(24,13),
(25,1),
(25,5),
(25,13),
(26,2),
(26,14),
(27,2),
(27,4),
(27,15),
(27,17),
(28,1),
(28,15),
(28,17),
(29,2),
(29,10),
(29,15),
(29,16),
(30,2),
(30,10),
(30,15),
(30,16),
(31,2),
(31,18),
(31,17),
(32,2),
(32,17),
(33,1),
(33,13),
(34,2),
(34,4),
(34,7),
(34,10),
(35,2),
(35,18),
(36,2),
(36,18),
(37,2),
(37,18),
(38,2),
(38,4),
(38,10);