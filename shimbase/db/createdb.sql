DROP TABLE foo;
CREATE TABLE foo(
    name varchar(64) not null, 
    desc varchar(4) not null,
    bar_id integer not null,
    foreign key(bar_id) references bar(id),
    primary key (name)
);

DROP TABLE bar;
CREATE TABLE bar(
    id integer not null, 
    heading integer,
    speed real,
    signal char,
    primary key (id)
);
