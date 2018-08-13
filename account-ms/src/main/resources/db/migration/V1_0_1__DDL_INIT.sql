-- -----------------------------------------------------
-- Schema ylfdb1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ylfdb1`
  DEFAULT CHARACTER SET utf8;
USE `ylfdb1`;

-- -----------------------------------------------------
-- Table `ylfdb1`.`t_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ylfdb1`.`t_user` (
  `id`          BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `create_time` DATETIME            NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` DATETIME            NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_time` DATETIME            NOT NULL DEFAULT '1970-01-01 00:00:00',
  `mobile`      VARCHAR(20)         NOT NULL
  COMMENT '手机号',
  `login_pwd`   VARCHAR(128)        NOT NULL
  COMMENT '登录密码',
  `pwd_salt`    VARCHAR(128)        NOT NULL
  COMMENT '密码盐',
  `balance`     BIGINT(19)          NOT NULL DEFAULT 100000000
  COMMENT '余额, 单位分',
  UNIQUE INDEX `uni_user_mobile` (`mobile` ASC),
  PRIMARY KEY (`id`)
);