-- auto-generated definition
create table tb_categories
(
    id            int auto_increment comment '类别ID，自动增长'
        primary key,
    category_name varchar(255) not null comment '类别名称，唯一',
    constraint category_name
        unique (category_name)
);

-- auto-generated definition
create table tb_comments
(
    id         int auto_increment comment '评论ID，自动增长'
        primary key,
    content    text                                null comment '评论内容',
    created_at timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    updated_at timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    user_id    int                                 null comment '外键关联用户表'
);

-- auto-generated definition
create table tb_items
(
    id             int auto_increment comment '物品ID，自动增长'
        primary key,
    item_name      varchar(255)                        not null comment '物品名称',
    category       varchar(255)                        not null comment '物品种类',
    description    text                                null comment '物品描述',
    location_found varchar(255)                        null comment '发现物品的地点',
    date_found     date                                null comment '发现物品的日期',
    status         int       default 0                 null comment '物品状态：0丢失、1发现、2已被认领',
    created_at     timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    updated_at     timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间',
    user_id        int                                 null comment '外键关联用户表',
    image          varchar(255)                        null comment '物品图片路径'
);

-- auto-generated definition
create table tb_locations
(
    id      int auto_increment comment '地点ID，自动增长'
        primary key,
    name    varchar(255) not null comment '地点名称',
    address text         null comment '详细地址'
);

