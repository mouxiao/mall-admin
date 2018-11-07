 -- 创建管理员帐号表t_admin
    CREATE TABLE `t_admin` (
      `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
      `passwd` varchar(12) NOT NULL DEFAULT '' COMMENT '用户密码',
      `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名字',
      `phoneno` varchar(32) NOT NULL DEFAULT '' COMMENT '电话号码',
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

 --创建权限表t_role
    CREATE TABLE `t_role` (
      `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
      `role` varchar(40) NOT NULL DEFAULT '',
      `descpt` varchar(40) NOT NULL DEFAULT '' COMMENT '角色描述',
      `category` varchar(40) NOT NULL DEFAULT '' COMMENT '分类',
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
  -- 创建权限组表
    CREATE TABLE `t_group` (
      `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
      `groupname` varchar(50) NOT NULL DEFAULT '',
      PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
  -- 创建权限组对应权限表t_group_role
--     CREATE TABLE `t_group_role` (
--       `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
--       `groupid` bigint(20) unsigned NOT NULL,
--       `roleid` bigint(20) unsigned NOT NULL,
--       PRIMARY KEY (`id`),
--       UNIQUE KEY `groupid2` (`groupid`,`roleid`),
--       KEY `roleid` (`roleid`)
--     ) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
-- 创建管理员所属权限组表t_group_user
--     CREATE TABLE `t_group_user` (
--       `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
--       `userid` bigint(20) unsigned NOT NULL,
--       `groupid` bigint(20) unsigned NOT NULL,
--       PRIMARY KEY (`id`),
--       KEY `userid` (`userid`),
--       KEY `groupid` (`groupid`)
--     ) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
--  -- 创建管理员对应权限表t_user_role
--  -- 设置该表可跳过权限组，为管理员直接分配权限
--     CREATE TABLE `t_user_role` (
--       `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
--       `userid` bigint(20) unsigned NOT NULL,
--       `roleid` bigint(20) unsigned NOT NULL,
--       PRIMARY KEY (`id`),
--       KEY `userid` (`userid`),
--       KEY `roleid` (`roleid`)
--     ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;