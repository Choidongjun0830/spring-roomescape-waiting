DROP TABLE IF EXISTS reservation, reservation_time, theme, member;

CREATE TABLE reservation_time
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    start_at VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE theme
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    thumbnail VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE member
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    role VARCHAR(20) NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE reservation
(
    id BIGINT NOT NULL AUTO_INCREMENT,
    member_id BIGINT NOT NULL,
    date VARCHAR(255) NOT NULL,
    time_id BIGINT NOT NULL,
    theme_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (member_id) REFERENCES member (id),
    FOREIGN KEY (time_id) REFERENCES reservation_time (id),
    FOREIGN KEY (theme_id) REFERENCES theme (id)
);