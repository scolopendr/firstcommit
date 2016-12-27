CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(128) NOT NULL,
  email VARCHAR(128) NOT NULL,
  password VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE post (
  id INT NOT NULL AUTO_INCREMENT,
  author_id INT NOT NULL,
  categoty_id INT NOT NULL,
  title VARCHAR(45) NOT NULL,
  text TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (author_id)
      REFERENCES user(id) ON DELETE CASCADE ON UPDATE RESTRICT,
  FOREIGN KEY (categoty_id)
      REFERENCES category(id) ON DELETE CASCADE ON UPDATE RESTRICT
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE tag(
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE post_tag (
  id INT NOT NULL AUTO_INCREMENT,
  post_id INT NOT NULL,
  tag_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (post_id)
    REFERENCES post(id) ON DELETE CASCADE ON UPDATE RESTRICT,
  FOREIGN KEY (tag_id)
    REFERENCES tag(id) ON DELETE CASCADE ON UPDATE RESTRICT
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Данные
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Программирование'),
(2, 'Кулинария'),
(3, 'Электроника'),
(4, 'Интернет'),
(5, 'Другое');

INSERT INTO `post` (`id`, `author_id`, `category_id`, `title`, `text`) VALUES
(1, 1, 1, 'yii', 'Начинаю изучать'),
(2, 1, 2, 'второй пост', 'qwerty ');

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 1);

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'yii'),
(2, 'cpp'),
(3, 'обед'),
(4, 'Компьютер');

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'diana', 'diana@gmail.com', '123456');