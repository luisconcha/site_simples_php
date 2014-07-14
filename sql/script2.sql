CREATE TABLE IF NOT EXISTS `tbl_menu` (`id_menu` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,`nome_menu` varchar(60) NOT NULL,`href_menu` varchar(60) NOT NULL,`hint_menu` varchar(60) NOT NULL,`sit_cancelado` char(1) NOT NULL) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
INSERT INTO `tbl_menu` (`nome_menu`, `href_menu`, `hint_menu`, `sit_cancelado`) VALUES('Home', 'home', 'Pagina inicial', 'N');
INSERT INTO `tbl_menu` (`nome_menu`, `href_menu`, `hint_menu`, `sit_cancelado`) VALUES('Empresa', 'empresa', 'Pagina empresa', 'N');
INSERT INTO `tbl_menu` (`nome_menu`, `href_menu`, `hint_menu`, `sit_cancelado`) VALUES('Produtos', 'produtos', 'Pagina dos produtos', 'N');
INSERT INTO `tbl_menu` (`nome_menu`, `href_menu`, `hint_menu`, `sit_cancelado`) VALUES('Servi&ccedil;os', 'servicos', 'Pagina dos servi&ccedil;os', 'N');
INSERT INTO `tbl_menu` (`nome_menu`, `href_menu`, `hint_menu`, `sit_cancelado`) VALUES('Contato', 'contato', 'Pagina de contato', 'N');
INSERT INTO `tbl_menu` (`nome_menu`, `href_menu`, `hint_menu`, `sit_cancelado`) VALUES('Fixture', 'fixture', 'Executa script sql', 'N');
CREATE TABLE IF NOT EXISTS `tbl_clientes` (`id_cliente` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,`nome_cliente` varchar(100) NOT NULL,`email_cliente` varchar(50) NOT NULL) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 01', 'cliente01@gmail.com');
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 02', 'cliente02@gmail.com');
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 03', 'cliente03@gmail.com');
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 04', 'cliente04@gmail.com');
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 01', 'cliente01@gmail.com');
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 02', 'cliente02@gmail.com');
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 03', 'cliente03@gmail.com');
INSERT INTO `tbl_clientes` (`nome_cliente`, `email_cliente`) VALUES('Cliente 04', 'cliente04@gmail.com');
CREATE TABLE IF NOT EXISTS `tbl_conteudo` (`id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,`titulo_conteudo` varchar(200) NOT NULL,`conteudo_conteudo` text NOT NULL,`slug_conteudo` varchar(50) NOT NULL) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
INSERT INTO `tbl_conteudo` (`titulo_conteudo`, `conteudo_conteudo`, `slug_conteudo`) VALUES('Home', 'P&aacute;gina principal, p&aacute;gina inicial, p&aacute;gina de entrada (home page ou homepage em ingl&ecirc;s) &eacute; a p&aacute;gina inicial de um site da internet (tamb&eacute;m chamado s&iacute;tio). Compreende uma apresenta&ccedil;&atilde;o do site e de todo seu conte&uacute;do. Seria como a capa de uma revista.O termo p&aacute;gina de entrada tamb&eacute;m pode se referir à p&aacute;gina, o &iacute;ndice de diret&oacute;rio de servidor web site de um grupo, empresa, organiza&ccedil;&atilde;o ou indiv&iacute;duo, ou p&aacute;gina principal que &eacute; visualizada quando o navegador de internet (como Firefox, Internet Explorer ou Opera) &eacute; aberto.Em alguns pa&iacute;ses, como Alemanha, Jap&atilde;o e Coreia do Sul, e anteriormente nos Estados Unidos, a p&aacute;gina inicial do termo normalmente se refere a um site completo (de uma empresa ou outra organiza&ccedil;&atilde;o) ao inv&eacute;s de uma &uacute;nica p&aacute;gina web.Na mesma categoria da homepage est&atilde;o websites que tentam ser uma p&aacute;gina inicial (mais precisamente, um portal web pessoal). A p&aacute;gina inicial &eacute; um site ou p&aacute;gina pretende organizar os links e informa&ccedil;&otilde;es para o usu&aacute;rio quando inicia um navegador da web. As p&aacute;ginas come&ccedil;am geralmente com informa&ccedil;&otilde;es como not&iacute;cias, meteorologia, jogos e widgets da Web e outros gadgets web. Comece p&aacute;ginas de informa&ccedil;&atilde;o, como tamb&eacute;m agregar feeds RSS ou receber e gerenciar links da web page. S&atilde;o exemplos de p&aacute;ginas iniciais Clickr iGoogle, Netvibes, Sthrt, Pageflakes MSN etcA maioria das homepages come&ccedil;am com uma recep&ccedil;&atilde;o e um pouco de informa&ccedil;&atilde;o sobre o seu site. No entanto, maiores websites projetados para navega&ccedil;&atilde;o, tais como lojas, cole&ccedil;&otilde;es de entretenimento livre, e sites informativos, caracter&iacute;stica coisas especiais sobre o frontpage como "Destaque", "A maioria gostou," “Spotlight "," Great Deals "e assim por diante.Fonte: wikipedia', 'home');
INSERT INTO `tbl_conteudo` (`titulo_conteudo`, `conteudo_conteudo`, `slug_conteudo`) VALUES('Empresa', 'No Direito Empresarial, atividade empresarial, ou empresa, &eacute; uma atividade econômica exercida profissionalmente pelo empres&aacute;rio por meio da articula&ccedil;&atilde;o dos fatores produtivos para a produ&ccedil;&atilde;o ou circula&ccedil;&atilde;o de bens ou de servi&ccedil;os. O conceito jur&iacute;dico de empresa n&atilde;o pode ser entendido como um sujeito de direito, uma pessoa jur&iacute;dica, tampouco o local onde se desenvolve a atividade econômica.Fonte: wikipeda', 'empresa');
INSERT INTO `tbl_conteudo` (`titulo_conteudo`, `conteudo_conteudo`, `slug_conteudo`) VALUES('Produto', 'Produto, em administra&ccedil;&atilde;o e marketing, &eacute; um conjunto de atributos, tang&iacute;veis ou intang&iacute;veis, constitu&iacute;do atrav&eacute;s do processo de produ&ccedil;&atilde;o, para atendimento de necessidades reais ou simb&oacute;licas, e que pode ser negociado no mercado, mediante um determinado valor de troca, quando ent&atilde;o se converte em mercadoria.\r\n\r\nPortanto, como produtos, consideramos bens f&iacute;sicos (furadeiras, livros, etc), servi&ccedil;os (cortes de cabelo, lavagem de carro, etc.), eventos (concertos, desfiles, etc.), pessoas (Pel&eacute;, George Bush, etc.), locais (Hava&iacute;, Veneza, etc.), organiza&ccedil;&otilde;es, (Greenpeace, Ex&eacute;rcito da Salva&ccedil;&atilde;o, etc.) ou mesmo id&eacute;ias (planejamento familiar, dire&ccedil;&atilde;o defensiva, etc.)\r\n\r\nSegundo Kotler e Armstrong, produto &eacute; qualquer coisa que possa ser oferecida a um mercado para aten&ccedil;&atilde;o, aquisi&ccedil;&atilde;o, uso ou consumo, e que possa satisfazer a um desejo ou necessidade.\r\n\r\nO produto &eacute; o primeiro elemento do Composto Mercadol&oacute;gico: todos os demais componentes dependem do estudo e conhecimento do produto. A propaganda, o pre&ccedil;o e a distribui&ccedil;&atilde;o s&oacute; podem ser definidas ap&oacute;s um estudo do produto e da identifica&ccedil;&atilde;o de seu mercado-alvo. Assim os fatores diretamente relacionados a oferta de marketing s&atilde;o aqui estudados.\r\n\r\nQuais produtos produzir e vender, quais novos produtos acrescentar, quais abandonar, em que est&aacute;gio do ciclo de vida o produto se encontra, quantos produtos o portf&oacute;lio deve ter, s&atilde;o apenas algumas das preocupa&ccedil;&otilde;es encontradas na Gest&atilde;o de Produto\r\n\r\nO consumidor optar&aacute; pelo produto que considerar como o de maior valor, e para isso levar&aacute; em considera&ccedil;&atilde;o aspectos tangiveis e intangiveis que merecem a aten&ccedil;&atilde;o dos profissionais de marketing.\r\n\r\nFonte: wikipedia', 'produtos');
INSERT INTO `tbl_conteudo` (`titulo_conteudo`, `conteudo_conteudo`, `slug_conteudo`) VALUES('Setor terci&aacute;rio', 'Setor terci&aacute;rio &eacute; definido pela exclus&atilde;o dos dois outros setores.Como Presta&ccedil;&atilde;o de servi&ccedil;os, Ou seja &eacute; o setor econômico relacionado aos servi&ccedil;os 1 Os servi&ccedil;os s&atilde;o definidos na literatura econômica convencional como "bens intang&iacute;veis". Em termos de Marketing, os servi&ccedil;os s&atilde;o, muitas vezes, utilizados como um meio de gerar valor ao produto. Tal no&ccedil;&atilde;o, est&aacute; intimamente ligada à adi&ccedil;&atilde;o de an&eacute;is (acr&eacute;scimo de valor), ou seja, o produto na sua fun&ccedil;&atilde;o mais b&aacute;sica. Um exemplo cl&aacute;ssico, desta ideia, &eacute; o chamado servi&ccedil;o de p&oacute;s-venda. Ou seja, a assist&ecirc;ncia que &eacute; prestada ao cliente, ap&oacute;s a venda do produto, &eacute; entendido como um servi&ccedil;o prestado, que valoriza o produto, pela garantia da assist&ecirc;ncia. Foi adicionado um anel, em forma de servi&ccedil;o, à ess&ecirc;ncia de fun&ccedil;&atilde;o do produto.\r\n\r\nO setor terci&aacute;rio da economia envolve a presta&ccedil;&atilde;o de servi&ccedil;os às empresas, bem como aos consumidores finais. Os servi&ccedil;os podem envolver o transporte, distribui&ccedil;&atilde;o e venda de mercadorias do produtor para um consumidor que pode acontecer no com&eacute;rcio atacadista ou varejista, ou podem envolver a presta&ccedil;&atilde;o de um servi&ccedil;o, como o antiparasitas. Os produtos podem ser transformados no processo de presta&ccedil;&atilde;o de um servi&ccedil;o, como acontece no restaurante ou em equipamentos da ind&uacute;stria de repara&ccedil;&atilde;o. No entanto, o foco &eacute; sobre as pessoas interagindo com as pessoas e servindo ao consumidor, mais do que a transforma&ccedil;&atilde;o de bens f&iacute;sicos.\r\n\r\nFonte: wikipedia', 'servicos');