create table tipocampanha (
	idtipocampanha serial primary key,
	nometipocampanha varchar(150),
	descricaotipocampanha varchar(400) not null
);

insert into tipocampanha (nometipocampanha, descricaotipocampanha)
values ('Campanha do Agasalho', 'O inverno está chegando e podemos fazer a nossa parte. Participe dessa campanha e ajude a quem precisa. Mais do que nunca precisamos ajudar . O inverno está chegando e podemos fazer a nossa parte ajudando os menos favorecidos.');

create table campanha (
        idcampanha serial primary key,
        dataentrega varchar(200),
        horaentrega varchar(200),
        detalhes varchar(200),
        enderecoentrega varchar(200),
        encerrado varchar(200),
        idtipocampanha integer not null,
        foreign key (idtipocampanha) references tipocampanha (idtipocampanha)
)