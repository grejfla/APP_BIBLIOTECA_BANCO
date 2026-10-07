create database `app_biblioteca_banco`;

CREATE TABLE `funcionario`(
`idfuncionario` int not null auto_increment,
`NomeFuncionario` varchar (50) not null,
`SenhaFuncionario` varchar (15) not null,
`RegistroFuncionario` varchar (10) not null,
`CPF_Funcionario` varchar (15) not null,
primary key (`idfuncionario`)
);

CREATE TABLE `aluno`(
`idAluno` int not null auto_increment,
`NomeAluno` varchar (50) not null,
`SenhaAluno` int not null,
`MatriculaAluno` int not null,
`EnderecoAluno` varchar (100) not null,
`TurmaAluno` varchar (50) not null,
`ContatoAluno` varchar (70) not null,
primary key (`idAluno`)
);

CREATE TABLE `livros`(
`idLivro` int not null auto_increment,
`NomeLivro` varchar (100) not null,
`AutorLivro` varchar (100) not null,
`EditoraLivro` varchar (75) not null,
`AnoPublicacaoLivro` varchar (30) not null,
`ISBN_Livro` varchar (30) not null,
`Categoria_Livro` varchar (100) not null,
`QuantidadeLivro` varchar (15) not null,
`StatusLivros` varchar (30) not null,
`DescricaoLivro` varchar (600) not null,
primary key (`idLivro`)
);

drop table `livros`;

CREATE TABLE `emprestimos`(
`idEmprestimo` int not null auto_increment,
`DataEmprestimo` date  not null,
`PrevisaoDevolucao` date not null,
`DataDevolucaoReal` date not null,
primary key (`idEmprestimo`)
);

INSERT INTO `funcionario` (`NomeFuncionario`, `SenhaFuncionario`, `RegistroFuncionario`, `CPF_Funcionario`) 
VALUES ('Diego', '1020', '01', '12456878942' ),('Robert', '1120', '02', '17845698478'), ('Pedro', '1220', '03', '12348975624');

INSERT INTO `aluno` (`NomeAluno`,`SenhaAluno`,`MatriculaAluno`, `EnderecoAluno`, `TurmaAluno`, `ContatoAluno`) VALUES ('Miguel', '1450', '1320', 'Rua da Saudade, nº. 10, Bairro Eldorado, Contagem/MG', 'Turma 01', '319914748'),
 ('Ana', '1030', '1420', 'Rua da Consolação, nº. 25, Bairro Clemente Faria, Betim/MG', 'Turma 02', '317849564'),
 ('Douglas', '1740', '1510','Rua Mossoro, nº. 14, Vargem Grande, Ibirité/MG', 'Turma 03', '315678946'),
 ('Felipe', '1620', '1780', 'RuaInglaterra, nº. 520, Santa Cruz, Contagem/MG', 'Turma 04', '312645789');
 
INSERT INTO `livros` (`NomeLivro`, `AutorLivro`, `EditoraLivro`, `AnoPublicacaoLivro`, `ISBN_Livro`, `Categoria_Livro`, `QuantidadeLivro`, `StatusLivros`, `DescricaoLivro`) VALUES ('O Cérebro que se transforma', 'Norman Doidge', 'Editora Record', '2010', '829-54-310-6825-0', 'cientifico', '5', 'todos disponivéis', 'Escrito pelo psiquiatra e pesquisador canadense Norman Doidge, o livro apresenta a neuroplasticidade, a capacidade do cérebro de alterar suas próprias estruturas e funções, mesmo em idades avançadas, desafiando a ideia de que o cérebro adulto é rígido e imutável'),
('O Alquimista', 'Paulo Coelho', 'Editora Paralela', '2016', '163-29-648-7392-1', 'Auto ajuda', '10', 'todos disponivéis', 'Santiago, um pastor andaluz, tem um sonho repetido sobre um tesouro escondido perto das Pirâmides do Egito. Movido pela curiosidade e pelo desejo de realizar sua Lenda Pessoal, ele deixa sua vida simples para seguir os sinais do mundo. No caminho, encontra pessoas que o ajudam a compreender a importância de ouvir o coração — como o rei Melquisedeque, um inglês estudioso de alquimia, a jovem Fátima, e o misterioso Alquimista. 
A jornada, cheia de desafios e aprendizados, mostra que o verdadeiro tesouro muitas vezes está no autoconhecimento e na transformação interior.'), 
('O QUE RESTA DE NÓS', 'Virgine Grimaldi', 'Editora Gutenberg', '1990', '271-93-847-5394-2', 'ficção', '6', 'todos disponivéis', 'O livro acompanha Jeanne, viúva de 74 anos que, após perder o marido Pierre, decide alugar um quarto de seu apartamento para conseguir pagar as contas. É assim que Théo, um jovem padeiro sem moradia, e Iris, uma cuidadora fugindo de alguém do passado, entram em sua vida — e a convivência entre os três muda profundamente o destino de cada um.'), 
('O HOMEM MAIS INTELIGENTE DA HISTORIA', 'Augusto Cury', 'Editora Sextante', '2000', '892-63-375-4920-4', 'Auto ajuda','3', 'todos disponivéis', 'O Homem Mais Inteligente da História é um romance que acompanha o psiquiatra Marco Polo em uma investigação científica sobre a personalidade e a inteligência emocional de Jesus, unindo ficção, psicologia e debates sobre ciência e religião.');

INSERT INTO `emprestimos` (`DataEmprestimo`, `PrevisaoDevolucao`, `DataDevolucaoReal`) VALUES ('2025-05-10', '2025-05-25', '2025-05-27'), ('2026-02-04', '2026-02-19','2026-02-21'), ('2024-09-02', '2024-09-17', '2024-09-16'), ('2025-11-03', '2025-11-18', '2025-11-16');