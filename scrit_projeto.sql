CREATE TABLE `funcionario`(
`idfuncionario` int not null auto_increment,
`NomeFuncionario` varchar (50) not null,
`SenhaFuncionario` int not null,
`RegistroFuncionario` int not null,
`CPF_Funcionario`int not null,
primary key (`idfuncionario`)
);

CREATE TABLE `aluno`(
`idAluno` int not null auto_increment,
`NomeAluno` varchar (50) not null,
`SenhaAluno` int not null,
`MatriculaAluno` int not null,
`EnderecoAluno` varchar (100) not null,
primary key (`idAluno`)
);

CREATE TABLE `livros`(
`idLivro` int not null auto_increment,
`NomeLivro` varchar (100) not null,
`AutorLivro` varchar (100) not null,
`EditoraLivro` varchar (75) not null,
`Ano_Edicao_livro` int  not null,
`Categoria_Livro` varchar (100) not null,
`QuantidadeLivro` int not null,
`StatusLivros` varchar (30) not null,
primary key (`idLivro`)
);

CREATE TABLE `emprestimos`(
`idemprestimo` int not null auto_increment,
`DataEmprestimo` date  not null,
`PrevisaoDevolucao` date not null,
primary key (`idemprestimo`)
);
