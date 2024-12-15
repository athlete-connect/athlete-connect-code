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
('icons/sports/futebolIcon.png', 'icone', '.png'),
('icons/sports/basqueteIcon.png', 'icone', '.png'),
('icons/sports/tenisIcon.png', 'icone', '.png'),
('icons/sports/xadrezIcon.png', 'icone', '.png'),
('icons/sports/judoIcon.png', 'icone', '.png'),
('icons/sports/boxeIcon.png', 'icone', '.png'),
('icons/sports/escaladaIcon.png', 'icone', '.png'),
('icons/sports/parapenteIcon.png', 'icone', '.png'),
('icons/sports/surfIcon.png', 'icone', '.png'),
('icons/sports/canoagemIcon.png', 'icone', '.png'),
('icons/sports/esquiIcon.png', 'icone', '.png'),
('icons/sports/snowboardIcon.png', 'icone', '.png'),
('icons/sports/tiroComArcoIcon.png', 'icone', '.png'),
('icons/sports/golfeIcon.png', 'icone', '.png'),
('icons/sports/hipismoIcon.png', 'icone', '.png'),
('icons/sports/rodeioIcon.png', 'icone', '.png'),
('icons/sports/basqueteEmCadeiraDeRodasIcon.png', 'icone', '.png'),
('icons/sports/natacaoParalimpicaIcon.png', 'icone', '.png'),
('icons/sports/esportsIcon.png', 'icone', '.png'),
('icons/sports/paintballIcon.png', 'icone', '.png'),
('icons/sports/triatloIcon.png', 'icone', '.png'),
('icons/sports/ciclismoDeEstradaIcon.png', 'icone', '.png'),
('icons/sports/bmxIcon.png', 'icone', '.png'),
('icons/sports/handebolIcon.png', 'icone', '.png'),
('icons/sports/poloAquaticoIcon.png', 'icone', '.png'),
('icons/sports/damasIcon.png', 'icone', '.png'),
('icons/sports/corridaDeRuaIcon.png', 'icone', '.png'),
('icons/sports/corridaDeRevezamentoIcon.png', 'icone', '.png'),
('icons/sports/formula1Icon.png', 'icone', '.png'),
('icons/sports/raliIcon.png', 'icone', '.png'),
('icons/sports/arremessoDePesoIcon.png', 'icone', '.png'),
('icons/sports/saltoComVaraIcon.png', 'icone', '.png'),
('icons/sports/voleiIcon.png', 'icone', '.png'),
('icons/sports/parkourIcon.png', 'icone', '.png'),
('icons/sports/powerliftingIcon.png', 'icone', '.png'),
('icons/sports/strongmanIcon.png', 'icone', '.png'),
('icons/sports/fisiculturismoIcon.png', 'icone', '.png'),
('icons/sports/paraquedismoIcon.png', 'icone', '.png');

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
(1, 1),
(1, 13),
(2, 1),
(2, 13),
(3, 1),
(3, 2),
(3, 13),
(4, 2),
(4, 14),
(5, 2),
(5, 3),
(5, 18),
(6, 2),
(6, 3),
(6, 18),
(7, 2),
(7, 4),
(7, 10),
(8, 2),
(8, 4),
(8, 10),
(9, 2),
(9, 4),
(9, 5),
(9, 10),
(10, 1),
(10, 2),
(10, 4),
(10, 5),
(10, 10),
(11, 2),
(11, 4),
(11, 6),
(11, 10),
(12, 2),
(12, 4),
(12, 6),
(12, 10),
(13, 2),
(13, 7),
(14, 2),
(14, 7),
(14, 13),
(15, 2),
(15, 8),
(16, 2),
(16, 8),
(16, 18),
(17, 1),
(17, 9),
(17, 13),
(18, 2),
(18, 5),
(18, 9),
(18, 11),
(19, 1),
(19, 2),
(20, 1),
(20, 7),
(21, 2),
(21, 4),
(21, 5),
(21, 11),
(21, 12),
(21, 15),
(22, 2),
(22, 4),
(22, 12),
(22, 15),
(23, 2),
(23, 7),
(23, 10),
(23, 12),
(24, 1),
(24, 13),
(25, 1),
(25, 5),
(25, 13),
(26, 2),
(26, 14),
(27, 2),
(27, 4),
(27, 15),
(27, 17),
(28, 1),
(28, 15),
(28, 17),
(29, 2),
(29, 10),
(29, 15),
(29, 16),
(30, 2),
(30, 10),
(30, 15),
(30, 16),
(31, 2),
(31, 18),
(31, 17),
(32, 2),
(32, 17),
(33, 1),
(33, 13),
(34, 2),
(34, 4),
(34, 7),
(34, 10),
(35, 2),
(35, 18),
(36, 2),
(36, 18),
(37, 2),
(37, 18),
(38, 2),
(38, 4),
(38, 10);

INSERT INTO estado (nome, sigla) VALUES
('Acre', 'AC'),
('Alagoas', 'AL'),
('Amapá', 'AP'),
('Amazonas', 'AM'),
('Bahia', 'BA'),
('Ceará', 'CE'),
('Distrito Federal', 'DF'),
('Espírito Santo', 'ES'),
('Goiás', 'GO'),
('Maranhão', 'MA'),
('Mato Grosso', 'MT'),
('Mato Grosso do Sul', 'MS'),
('Minas Gerais', 'MG'),
('Pará', 'PA'),
('Paraíba', 'PB'),
('Paraná', 'PR'),
('Pernambuco', 'PE'),
('Piauí', 'PI'),
('Rio de Janeiro', 'RJ'),
('Rio Grande do Norte', 'RN'),
('Rio Grande do Sul', 'RS'),
('Rondônia', 'RO'),
('Roraima', 'RR'),
('Santa Catarina', 'SC'),
('São Paulo', 'SP'),
('Sergipe', 'SE'),
('Tocantins', 'TO');

INSERT INTO cidade (nome, fk_estado_id_estado) VALUES
('Rio Branco', 1),
('Cruzeiro do Sul', 1),
('Maceió', 2),
('Arapiraca', 2),
('Macapá', 3),
('Santana', 3), 
('Manaus', 4),
('Parintins', 4), 
('Salvador', 5),
('Feira de Santana', 5), 
('Fortaleza', 6),
('Juazeiro do Norte', 6),
('Brasília', 7),
('Planaltina', 7),
('Vitória', 8),
('Vila Velha', 8),
('Goiânia', 9),
('Anápolis', 9), 
('São Luís', 10),
('Imperatriz', 10), 
('Cuiabá', 11),
('Rondonópolis', 11), 
('Campo Grande', 12),
('Dourados', 12), 
('Belo Horizonte', 13),
('Uberlândia', 13),
('Belém', 14),
('Santarém', 14), 
('João Pessoa', 15),
('Campina Grande', 15),
('Curitiba', 16),
('Londrina', 16),
('Recife', 17),
('Caruaru', 17), 
('Teresina', 18),
('Parnaíba', 18),
('Rio de Janeiro', 19),
('Niterói', 19), 
('Natal', 20),
('Mossoró', 20), 
('Porto Alegre', 21),
('Caxias do Sul', 21),
('Porto Velho', 22),
('Ji-Paraná', 22), 
('Boa Vista', 23),
('Rorainópolis', 23), 
('Florianópolis', 24),
('Joinville', 24),
('São Paulo', 25),
('Campinas', 25), 
('Aracaju', 26),
('Nossa Senhora do Socorro', 26), 
('Palmas', 27),
('Araguaína', 27); 

INSERT INTO instituicao (nome, fk_cidade_id_cidade) VALUES
('Universidade Federal do Acre (UFAC)', 1),
('Centro Universitário Uninorte', 1),
('Instituto Federal do Acre (IFAC) - Campus Cruzeiro do Sul', 2),
('Centro Universitário Cruzeiro do Sul', 2),
('Universidade Federal de Alagoas (UFAL)', 3),
('Centro Universitário CESMAC', 3),
('Universidade Estadual de Alagoas (UNEAL)', 4),
('Faculdade Metropolitana de Alagoas (FAMA)', 4),
('Universidade Federal do Amapá (UNIFAP)', 5),
('Faculdade Estácio de Macapá', 5),
('Instituto Federal do Amapá (IFAP) - Campus Santana', 6),
('Centro Universitário Santana', 6),
('Universidade Federal do Amazonas (UFAM)', 7),
('Universidade do Estado do Amazonas (UEA)', 7),
('Instituto Federal do Amazonas (IFAM) - Campus Parintins', 8),
('Centro Universitário de Parintins', 8),
('Universidade Federal da Bahia (UFBA)', 9),
('Universidade Salvador (UNIFACS)', 9),
('Universidade Estadual de Feira de Santana (UEFS)', 10),
('Faculdade Nobre (FAN)', 10),
('Universidade Federal do Ceará (UFC)', 11),
('Universidade de Fortaleza (UNIFOR)', 11),
('Universidade Regional do Cariri (URCA)', 12),
('Faculdade Paraíso do Ceará (FAP)', 12),
('Universidade de Brasília (UnB)', 13),
('Instituto Federal de Brasília (IFB)', 13),
('Instituto Federal de Brasília (IFB) - Campus Planaltina', 14),
('Faculdade Planaltina', 14),
('Universidade Federal do Espírito Santo (UFES)', 15),
('Centro Universitário Católica de Vitória', 15),
('Centro Universitário Vila Velha (UVV)', 16),
('Faculdade Novo Milênio', 16),
('Universidade Federal de Goiás (UFG)', 17),
('Pontifícia Universidade Católica de Goiás (PUC Goiás)', 17),
('Universidade Estadual de Goiás (UEG)', 18),
('Faculdade Anhanguera de Anápolis', 18),
('Universidade Federal do Maranhão (UFMA)', 19),
('Universidade Estadual do Maranhão (UEMA)', 19),
('Universidade Estadual da Região Tocantina do Maranhão (UEMASUL)', 20),
('Faculdade de Imperatriz (FACIMP)', 20),
('Universidade Federal de Mato Grosso (UFMT)', 21),
('Centro Universitário de Várzea Grande (UNIVAG)', 21),
('Instituto Federal de Mato Grosso (IFMT) - Campus Rondonópolis', 22),
('Faculdade de Rondonópolis', 22),
('Universidade Federal de Mato Grosso do Sul (UFMS)', 23),
('Universidade Estadual de Mato Grosso do Sul (UEMS)', 23),
('Universidade Federal da Grande Dourados (UFGD)', 24),
('Faculdade Anhanguera de Dourados', 24),
('Universidade Federal de Minas Gerais (UFMG)', 25),
('Pontifícia Universidade Católica de Minas Gerais (PUC Minas)', 25),
('Universidade Federal de Uberlândia (UFU)', 26),
('Centro Universitário do Triângulo (UNITRI)', 26),
('Universidade Federal do Pará (UFPA)', 27),
('Universidade da Amazônia (UNAMA)', 27),
('Universidade Federal do Oeste do Pará (UFOPA)', 28),
('Centro Universitário Luterano de Santarém', 28),
('Universidade Federal da Paraíba (UFPB)', 29),
('Centro Universitário de João Pessoa (UNIPÊ)', 29),
('Universidade Federal de Campina Grande (UFCG)', 30),
('Faculdade de Campina Grande (FAC-CG)', 30),
('Universidade Federal do Paraná (UFPR)', 31),
('Pontifícia Universidade Católica do Paraná (PUCPR)', 31),
('Universidade Estadual de Londrina (UEL)', 32),
('Centro Universitário Filadélfia (UNIFIL)', 32),
('Universidade Federal de Pernambuco (UFPE)', 33),
('Universidade Católica de Pernambuco (UNICAP)', 33),
('Universidade Federal de Pernambuco (UFPE) - Campus Caruaru', 34),
('Faculdade de Caruaru', 34),
('Universidade Federal do Piauí (UFPI)', 35),
('Universidade Estadual do Piauí (UESPI)', 35),
('Instituto Federal do Piauí (IFPI) - Campus Parnaíba', 36),
('Centro Universitário de Parnaíba', 36),
('Universidade Federal do Rio de Janeiro (UFRJ)', 37),
('Pontifícia Universidade Católica do Rio de Janeiro (PUC-Rio)', 37),
('Universidade Federal Fluminense (UFF)', 38),
('Universidade Salgado de Oliveira (UNIVERSO)', 38),
('Universidade Federal do Rio Grande do Norte (UFRN)', 39),
('Universidade Potiguar (UNP)', 39),
('Universidade do Estado do Rio Grande do Norte (UERN)', 40),
('Faculdade Católica de Mossoró', 40),
('Universidade Federal do Rio Grande do Sul (UFRGS)', 41),
('Pontifícia Universidade Católica do Rio Grande do Sul (PUCRS)', 41),
('Universidade de Caxias do Sul (UCS)', 42),
('Centro Universitário da Serra Gaúcha (FSG)', 42),
('Universidade Federal de Rondônia (UNIR)', 43),
('Instituto Federal de Rondônia (IFRO) - Campus Porto Velho', 43),
('Instituto Federal de Rondônia (IFRO) - Campus Ji-Paraná', 44),
('Faculdade de Ji-Paraná', 44),
('Universidade Federal de Roraima (UFRR)', 45),
('Instituto Federal de Roraima (IFRR)', 45),
('Instituto Federal de Roraima (IFRR) - Campus Rorainópolis', 46),
('Centro Universitário de Rorainópolis', 46),
('Universidade Federal de Santa Catarina (UFSC)', 47),
('Universidade do Estado de Santa Catarina (UDESC)', 47),
('Universidade da Região de Joinville (UNIVILLE)', 48),
('Centro Universitário de Joinville', 48),
('Universidade de São Paulo (USP)', 49),
('Pontifícia Universidade Católica de São Paulo (PUC-SP)', 49),
('Universidade Estadual de Campinas (UNICAMP)', 50),
('Centro Universitário de Campinas (UNICAMPI)', 50),
('Universidade Federal de Sergipe (UFS)', 51),
('Faculdade Pio Décimo', 51),
('Instituto Federal de Sergipe (IFS) - Campus Socorro', 52),
('Faculdade de Socorro', 52),
('Universidade Federal do Tocantins (UFT)', 53),
('Centro Universitário Tocantinense Presidente Antônio Carlos (UNITPAC)', 53),
('Instituto Federal do Tocantins (IFTO) - Campus Araguaína', 54),
('Centro Universitário de Araguaína', 54);

INSERT INTO curso (nome) VALUES
('Educação Física'),
('Gestão Esportiva'),
('Nutrição Esportiva'),
('Fisioterapia Esportiva'),
('Medicina Esportiva'),
('Psicologia do Esporte'),
('Treinamento Esportivo'),
('Ciências do Esporte'),
('Técnico em Futebol'),
('Técnico em Voleibol'),
('Técnico em Basquetebol'),
('Técnico em Handebol'),
('Arbitragem Esportiva'),
('Treinamento Funcional'),
('Biomecânica do Esporte'),
('Preparação Física'),
('Reabilitação Esportiva'),
('Marketing Esportivo'),
('Direito Esportivo'),
('Jornalismo Esportivo'),
('Engenharia do Esporte'),
('Tecnologia no Esporte'),
('Esportes de Aventura e Turismo'),
('Gestão de Academias'),
('Treinamento em Esportes Aquáticos'),
('Treinamento em Atletismo'),
('Treinamento em Esportes de Combate'),
('Treinamento em Esportes Paralímpicos'),
('Gestão de Clubes e Federações Esportivas'),
('Treinamento em Esportes de Raquete'),
('Esportes e Atividades ao Ar Livre'),
('Esportes de Alta Performance'),
('Pedagogia do Esporte'),
('História do Esporte'),
('Esportes de Endurance'),
('Cinesiologia e Esporte'),
('Metodologia de Treinamento Esportivo'),
('E-Sports e Jogos Competitivos'),
('Liderança e Gestão de Equipes Esportivas'),
('Treinamento em CrossFit e Modalidades Funcionais'),
('Treinamento em Esportes Coletivos'),
('Treinamento em Esportes Individuais'),
('Treinamento para Crianças e Adolescentes no Esporte'),
('Esportes Adaptados e Inclusivos'),
('Treinamento de Força para Esportes'),
('Condicionamento Físico e Esportivo'),
('Esportes e Sustentabilidade'),
('Treinamento em Danças e Ritmos'),
('Fundamentos de Educação Física Escolar'),
('Cultura e Lazer no Esporte');

INSERT INTO curso_instituicao (fk_instituicao_id_instituicao, fk_curso_id_curso) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 11), (6, 12),
(7, 13), (7, 14),
(8, 15), (8, 16),
(9, 17), (9, 18),
(10, 19), (10, 20),
(11, 21), (11, 22),
(12, 23), (12, 24),
(13, 25), (13, 26),
(14, 27), (14, 28),
(15, 29), (15, 30),
(16, 31), (16, 32),
(17, 33), (17, 34),
(18, 35), (18, 36),
(19, 37), (19, 38),
(20, 39), (20, 40),
(21, 41), (21, 42),
(22, 43), (22, 44),
(23, 45), (23, 46),
(24, 47), (24, 48),
(25, 49), (25, 50),
(26, 1), (26, 2),
(27, 3), (27, 4),
(28, 5), (28, 6),
(29, 7), (29, 8),
(30, 9), (30, 10),
(31, 11), (31, 12),
(32, 13), (32, 14),
(33, 15), (33, 16),
(34, 17), (34, 18),
(35, 19), (35, 20),
(36, 21), (36, 22),
(37, 23), (37, 24),
(38, 25), (38, 26),
(39, 27), (39, 28),
(40, 29), (40, 30),
(41, 31), (41, 32),
(42, 33), (42, 34),
(43, 35), (43, 36),
(44, 37), (44, 38),
(45, 39), (45, 40),
(46, 41), (46, 42),
(47, 43), (47, 44),
(48, 45), (48, 46),
(49, 47), (49, 48),
(50, 49), (50, 50),
(51, 1), (51, 2),
(52, 3), (52, 4),
(53, 5), (53, 6),
(54, 7), (54, 8),
(55, 9), (55, 10),
(56, 11), (56, 12),
(57, 13), (57, 14),
(58, 15), (58, 16),
(59, 17), (59, 18),
(60, 19), (60, 20),
(61, 21), (61, 22),
(62, 23), (62, 24),
(63, 25), (63, 26),
(64, 27), (64, 28),
(65, 29), (65, 30),
(66, 31), (66, 32),
(67, 33), (67, 34),
(68, 35), (68, 36),
(69, 37), (69, 38),
(70, 39), (70, 40),
(71, 41), (71, 42),
(72, 43), (72, 44),
(73, 45), (73, 46),
(74, 47), (74, 48),
(75, 49), (75, 50),
(76, 1), (76, 2),
(77, 3), (77, 4),
(78, 5), (78, 6),
(79, 7), (79, 8),
(80, 9), (80, 10),
(81, 11), (81, 12),
(82, 13), (82, 14),
(83, 15), (83, 16),
(84, 17), (84, 18),
(85, 19), (85, 20),
(86, 21), (86, 22),
(87, 23), (87, 24),
(88, 25), (88, 26),
(89, 27), (89, 28),
(90, 29), (90, 30),
(91, 31), (91, 32),
(92, 33), (92, 34),
(93, 35), (93, 36),
(94, 37), (94, 38),
(95, 39), (95, 40),
(96, 41), (96, 42),
(97, 43), (97, 44),
(98, 45), (98, 46),
(99, 47), (99, 48),
(100, 49), (100, 50),
(101, 1), (101, 2),
(102, 3), (102, 4),
(103, 5), (103, 6),
(104, 7), (104, 8),
(105, 9), (105, 10),
(106, 11), (106, 12),
(107, 13), (107, 14),
(108, 15), (108, 16);

INSERT INTO grau_formacao (grau) VALUES
('Bacharelado'),
('Licenciatura'),
('Tecnólogo'),
('Pós-Graduação Lato Sensu'),
('Pós-Graduação Stricto Sensu'),
('Mestrado'),
('Doutorado'),
('MBA'),
('Especialização'),
('Graduação em Educação a Distância (EAD)');

INSERT INTO hashtag (nome) VALUES
('futebol'),
('basquete'),
('tenis'),
('xadrez'),
('judo'),
('boxe'),
('escalada'),
('parapente'),
('surf'),
('canoagem'),
('esqui'),
('snowboard'),
('tirocomarco'),
('golfe'),
('hipismo'),
('rodeio'),
('basquetecadeiraderodas'),
('natacaoparalimpica'),
('esports'),
('paintball'),
('triatlo'),
('ciclismodeestrada'),
('bmx'),
('handebol'),
('poloaquatico'),
('damas'),
('corridaderua'),
('corridaderevezamento'),
('formula1'),
('rali'),
('arremessodepeso'),
('saltocomvara'),
('volei'),
('parkour'),
('powerlifting'),
('strongman'),
('fisiculturismo'),
('paraquedismo'),
('coletivo'),
('individual'),
('combate'),
('aventura'),
('aquatico'),
('inverno'),
('precisao'),
('equestre'),
('paradeficientes'),
('radical'),
('natacao'),
('ciclismo'),
('bola'),
('tabuleiro'),
('corrida'),
('automobilismo'),
('atletismo'),
('forca'),
('competicaodeesportes'),
('modalidadesdesportivas'),
('atividadesaereas'),
('esportesparalimpicos'),
('saudeebemestar'),
('treinamento'),
('nutricaoesportiva'),
('competicao'),
('vidasaudavel'),
('atletas'),
('desafios'),
('vivercomsaude'),
('exercicios'),
('treinosempre'),
('corpoatividade'),
('fitness'),
('lifestyle'),
('foco'),
('mulheresnoesporte'),
('homensnoesporte'),
('esportesnasescolas'),
('esportesparatodos'),
('jovensatletas'),
('inclusaoesportiva'),
('conhecendoesportes'),
('tendenciasdesportivas'),
('novidadesnoesporte'),
('momentosinesqueciveis'),
('comunidadeesportiva'),
('culturadoesporte'),
('esporteepolitica'),
('esporteecultura'),
('historiadosesportes'),
('esporteanao'),
('tecnologiadosportes'),
('esportesnoinstagram'),
('experienciasesportivas'),
('esportesediversao'),
('jogosdesportivos'),
('eventosesportivos'),
('rankingdeatletas'),
('galeriadeatletas'),
('historiasdeatletas'),
('esportesdegrupo'),
('esporteparatodos'),
('jogandojunto'),
('treinoscoletivos'),
('atletismoenatureza'),
('caminhadas'),
('explorandoavida'),
('sportslovers'),
('esporteesaude'),
('esporteefelicidade'),
('empoderamentoatravesdoesporte'),
('conexoesesportivas'),
('preparacaofisica'),
('saudefisica'),
('projetosdeesporte'),
('impactoesportivo'),
('iniciativasesportivas'),
('educacaoesportiva'),
('esporteanaescola'),
('educacaoefisica'),
('culturafisica'),
('esporteefisico'),
('esportesdeestrela'),
('esporteparadiversao'),
('natalidadeesportiva'),
('futebolsociais'),
('esportesespeciais'),
('esportesescolares'),
('universidadedosesportes'),
('esportesmulticulturais'),
('corridaparaatletas'),
('tecnicasdesportivas'),
('competicaobrasileira'),
('experienciacomoaesporte'),
('relacionamentoesportivo'),
('descobertasesportivas'),
('participacaoesportiva'),
('esporteparacriancas'),
('esporteparajovens'),
('lutasmarciais'),
('gestaoesportiva'),
('futeboleprofissional'),
('esportesdetalhes'),
('vidasesportivas'),
('mundodosesportes'),
('dicasdesportivas'),
('esporteconectado'),
('futebolparatodos'),
('maratonas'),
('desafiantes'),
('resistenciasportiva'),
('superandoobstaculos'),
('esportesnasaude'),
('voluntariadoesportivo'),
('esportesemergentes'),
('diferencasnoesporte'),
('mentesdesportivas'),
('treinosefoco'),
('esportesoficiais'),
('formacaoesportiva'),
('impactoambiental'),
('inclusao'),
('culturaesportiva'),
('direitosdosatletas'),
('esportesglobalizados'),
('interagindooesporte'),
('campeonatos'),
('futebolfeminino'),
('empreendedorismoesportivo'),
('vivendoaavida'),
('esportesexplicados'),
('reflexoesesportivas'),
('caminhodosesporte'),
('momentoagora'),
('comunidadeativada'),
('espiritualidadeeatividadefisica'),
('entrevistasdesportivas'),
('sustentabilidadeesportiva'),
('futebolparaverdadeirosamigos'),
('conexaoentreatletas'),
('foocoemtreinos'),
('sorriaavida'),
('promovendoesportes'),
('paznoesporte'),
('esportesqueinspiram'),
('equipevencedora'),
('treinamentoeficaz'),
('resultadosesportivos'),
('tradicoesesportivas'),
('esportesecomunidade'),
('experienciasunicas'),
('circuitosdeesporte'),
('historiasdesucesso'),
('futebolcriativo'),
('artesmarciais'),
('iniciativascomunitarias'),
('saudemental'),
('projetodevida'),
('superacaopessoal'),
('interesseesportivo'),
('esportecomfamilia'),
('coachingesportivo'),
('recuperacaofisica'),
('integracaocomunitaria'),
('esportesdigital'),
('saudeemocional'),
('atletasemformacao'),
('investimentoesportivo'),
('planejamentoesportivo'),
('vitalidadenasaude'),
('fortalecimento'),
('resiliencia'),
('inovacaoesportiva'),
('esporteefamilia'),
('projetosdeinclusao'),
('descobertadehabilidades'),
('integracaoesportiva'),
('atitudeesportiva'),
('cidadaniaesportiva'),
('conscientizacaoesportiva'),
('movimentosempre'),
('esporteeseguranca'),
('comunitarioesportivo'),
('futebolinfantil'),
('esporteparajovem'),
('esporteacessivel'),
('diversidadeesportiva'),
('lifestyleativo'),
('desportocomunitario'),
('culturadeatividadefisica'),
('beneficiosdaatividadefisica'),
('saudeefelicidade'),
('bemestarcomunitario'),
('cienciaesportiva'),
('treinamentofuncional'),
('inspiracaoparaavida'),
('construindopontes'),
('educacaoatravesdoesporte'),
('uniaoesportiva'),
('fortalecendoalmas'),
('solidariedadeesportiva'),
('palestrasesportivas'),
('desafiosparatodos'),
('futebolsustentavel'),
('atividadesdiferenciadas'),
('conectandoascomunidades'),
('mudandoavidas'),
('novosrumos'),
('caminhandocomunidade'),
('esportesemfoco'),
('momentosdealegria'),
('construindohistorias'),
('esporteebemestar'),
('jogosparacomunidade'),
('esportevivencial'),
('crescimentoesportivo'),
('impactosocial'),
('futebolescolar'),
('mudancaspositivas'),
('novasexperiencias'),
('esportesustentavel'),
('timeunido'),
('vitoriaemequipe'),
('omelhor'),
('nocaute'),
('invencivel'),
('roundone'),
('montanhas'),
('colinas'),
('vales'),
('ceu'),
('mar'),
('oceano'),
('rios'),
('mergulho'),
('voo'),
('nosceus'),
('marprofundo'),
('profundidade'),
('selva'),
('selvagem'),
('floresta'),
('neve'),
('gelado'),
('frioextremo'),
('calorextremo'),
('montanhadeneve'),
('namira'),
('tirocerto'),
('superacao'),
('motivacao'),
('amornoesporte'),
('coragem'),
('coracaoamil'),
('adrenalina'),
('motoresesquentando'),
('aquecimento'),
('virada'),
('naodesista'),
('idolo');

INSERT INTO esporte_hashtag (fk_esporte_id_esporte, fk_hashtag_id_hashtag) VALUES
(1, 1),
(2, 2),  
(3, 3),  
(4, 4),  
(5, 5),  
(6, 6),  
(7, 7),  
(8, 8),  
(9, 9),  
(10, 10), 
(11, 11), 
(12, 12), 
(13, 13),  
(14, 14), 
(15, 15), 
(16, 16), 
(17, 17),  
(18, 18),  
(19, 19), 
(20, 20), 
(21, 21), 
(22, 22), 
(23, 23), 
(24, 24), 
(25, 25),  
(26, 26), 
(27, 27),  
(28, 28), 
(29, 29), 
(30, 30), 
(31, 31),  
(32, 32), 
(33, 33), 
(34, 34), 
(35, 35), 
(36, 36), 
(37, 37), 
(38, 38), 
(1, 39),
(1, 51),
(2, 39),
(2, 51),
(3, 39),
(3, 40),
(3, 51),
(4, 40),
(4, 52),
(5, 40),
(5, 41),
(5, 56),
(6, 40),
(6, 41),
(6, 56),
(7, 40),
(7, 42),
(7, 48),
(8, 40),
(8, 42),
(8, 48),
(9, 40),
(9, 42),
(9, 43),
(9, 48),
(10, 39),
(10, 40),
(10, 42),
(10, 43),
(10, 48),
(11, 40),
(11, 42),
(11, 44),
(11, 48),
(12, 40),
(12, 42),
(12, 44),
(12, 48),
(13, 40),
(13, 45),
(14, 40),
(14, 45),
(14, 51),
(15, 40),
(15, 46),
(16, 40),
(16, 46),
(16, 56),
(17, 39),
(17, 47),
(17, 51),
(18, 40),
(18, 43),
(18, 47),
(18, 49),
(19, 39),
(19, 40),
(20, 39),
(20, 45),
(21, 40),
(21, 42),
(21, 43),
(21, 49),
(21, 50),
(21, 53),
(22, 40),
(22, 42),
(22, 50),
(22, 53),
(23, 40),
(23, 45),
(23, 48),
(23, 50),
(24, 39),
(24, 51),
(25, 39),
(25, 43),
(25, 51),
(26, 40),
(26, 52),
(27, 40),
(27, 42),
(27, 53),
(27, 55),
(28, 39),
(28, 53),
(28, 55),
(29, 40),
(29, 48),
(29, 53),
(29, 54),
(30, 40),
(30, 48),
(30, 53),
(30, 54),
(31, 40),
(31, 56),
(31, 55),
(32, 40),
(32, 55),
(33, 39),
(33, 51),
(34, 40),
(34, 42),
(34, 45),
(34, 48),
(35, 40),
(35, 56),
(36, 40),
(36, 56),
(37, 40),
(37, 56),
(38, 40),
(38, 42),
(38, 48);

INSERT INTO motivo_denuncia (motivo) VALUES
('Conteúdo ofensivo'),
('Assédio ou bullying'),
('Spam'),
('Falsificação de identidade'),
('Discurso de ódio'),
('Conteúdo sexual ou pornográfico'),
('Incitação à violência'),
('Discriminação'),
('Conteúdo ilegal'),
('Vazamento de informações pessoais'),
('Conta falsa'),
('Atividades ilegais'),
('Violação de direitos autorais'),
('Conteúdo enganoso'),
('Violação de privacidade'),
('Conteúdo perturbador'),
('Autoagressão ou suicídio'),
('Exploração de menores'),
('Roubo de propriedade intelectual'),
('Outro');