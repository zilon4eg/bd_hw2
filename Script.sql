create table genre (
	id serial primary key,
	title varchar(40) not null unique
);


create table executor (
	id serial primary key,
	name varchar(50) not null,
	nickname varchar(40),
	genre_id integer references genre(id)
);


create table album (
	id serial primary key,
	title varchar(40) not null,
	year integer,
	executor_id integer not null references executor(id)
);


create table track (
	id serial primary key,
	title varchar(40) not null,
	duration integer,
	album_id integer not null references album(id)
);