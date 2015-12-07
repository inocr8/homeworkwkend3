CREATE TABLE bookmarks (
  id serial8 primary key,
  url varchar(255) not null,
  title varchar(255) not null,
  genre varchar(255) not null,
  image text,
  details text
);