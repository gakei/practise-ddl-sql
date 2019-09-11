-- 请在这里编写一条SQL语句，创建一个名为USER的表，其中的列如下
-- ID           BIGINT       ID               主键 自增
-- NAME         VARCHAR(100) 用户名            不可为空
-- TEL          VARCHAR(20)  电话              不可为空，不可重复
-- ADDRESS      VARCHAR(100) 地址              可为空
-- CREATED_AT   TIMESTAMP    创建时间           不可为空
-- UPDATED_AT   TIMESTAMP    修改时间           不可为空
-- STATUS       TINYINT      状态，1正常，-1删除  不可为空
CREATE TABLE `USER`
(
    ID BIGINT auto_increment,
    NAME VARCHAR(100) NOT NULL,
    TEL VARCHAR(200) NOT NULL,
    ADDRESS VARCHAR(100),
    CREATED_AT TIMESTAMP NOT NULL,
    UPDATED_AT TIMESTAMP NOT NULL,
    STATUS TINYINT NOT NULL
);
create unique index user_test_uindex
    on user (TEL);

alter table user
    add constraint user_pk
        primary key (ID);