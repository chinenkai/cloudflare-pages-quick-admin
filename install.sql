-- attachment表
DROP TABLE IF EXISTS "attachment";
CREATE TABLE "attachment" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "uid" INTEGER NOT NULL DEFAULT 0,
  "type" TEXT NOT NULL DEFAULT '',
  "name" TEXT NOT NULL DEFAULT '',
  "url" TEXT NOT NULL,
  "size" INTEGER NOT NULL DEFAULT 0,
  "width" INTEGER NOT NULL DEFAULT 0,
  "height" INTEGER NOT NULL DEFAULT 0,
  "remark" TEXT,
  "status" INTEGER NOT NULL DEFAULT 1,
  "createtime" INTEGER NOT NULL DEFAULT 0,
  "updatetime" INTEGER NOT NULL DEFAULT 0
);

-- config表
DROP TABLE IF EXISTS "config";
CREATE TABLE IF NOT EXISTS "config" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "group" TEXT NOT NULL DEFAULT '',
  "name" TEXT NOT NULL DEFAULT '',
  "value" TEXT,
  "listorder" INTEGER NOT NULL DEFAULT 0,
  "status" INTEGER NOT NULL DEFAULT 1,
  "createtime" INTEGER NOT NULL DEFAULT 0,
  "updatetime" INTEGER NOT NULL DEFAULT 0
);

-- demo表
DROP TABLE IF EXISTS "demo";
CREATE TABLE "demo" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "uid" INTEGER NOT NULL DEFAULT 0,
  "remark" TEXT NOT NULL DEFAULT '',
  "listorder" INTEGER NOT NULL DEFAULT 0,
  "status" INTEGER NOT NULL DEFAULT 1,
  "createtime" INTEGER NOT NULL DEFAULT 0,
  "updatetime" INTEGER NOT NULL DEFAULT 0
);

-- errmsg表
DROP TABLE IF EXISTS "errmsg";
CREATE TABLE "errmsg" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "uid" INTEGER NOT NULL DEFAULT 0,
  "action" TEXT NOT NULL DEFAULT '',
  "remark" TEXT NOT NULL DEFAULT '',
  "postdata" TEXT,
  "listorder" INTEGER NOT NULL DEFAULT 0,
  "status" INTEGER NOT NULL DEFAULT 1,
  "createtime" INTEGER NOT NULL DEFAULT 0,
  "updatetime" INTEGER NOT NULL DEFAULT 0
);

-- logs表
DROP TABLE IF EXISTS "logs";
CREATE TABLE IF NOT EXISTS "logs" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "uid" INTEGER NOT NULL DEFAULT 0,
  "username" TEXT NOT NULL DEFAULT '',
  "controller" TEXT NOT NULL DEFAULT '',
  "action" TEXT NOT NULL DEFAULT '',
  "ip" TEXT NOT NULL DEFAULT '',
  "remark" TEXT,
  "createtime" INTEGER NOT NULL DEFAULT 0,
  "updatetime" INTEGER NOT NULL DEFAULT 0
);

-- manager表
DROP TABLE IF EXISTS "manager";
CREATE TABLE IF NOT EXISTS "manager" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "username" TEXT NOT NULL DEFAULT '',
  "password" TEXT NOT NULL DEFAULT '',
  "email" TEXT NOT NULL DEFAULT '',
  "status" INTEGER DEFAULT 1,
  "factor" TEXT NOT NULL DEFAULT '',
  "remark" TEXT,
  "createtime" INTEGER NOT NULL DEFAULT 0,
  "updatetime" INTEGER NOT NULL DEFAULT 0
);

-- user表
DROP TABLE IF EXISTS "user";
CREATE TABLE "user" (
  "id" INTEGER PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL DEFAULT '',
  "phone" TEXT NOT NULL DEFAULT '',
  "password" TEXT NOT NULL DEFAULT '',
  "openid" TEXT NOT NULL DEFAULT '',
  "nickname" TEXT NOT NULL DEFAULT '',
  "sex" INTEGER NOT NULL DEFAULT 1,
  "city" TEXT NOT NULL DEFAULT '',
  "country" TEXT NOT NULL DEFAULT '',
  "province" TEXT NOT NULL DEFAULT '',
  "language" TEXT NOT NULL DEFAULT '',
  "headimgurl" TEXT NOT NULL DEFAULT '',
  "address" TEXT,
  "ua" TEXT,
  "remark" TEXT NOT NULL DEFAULT '',
  "ip" TEXT NOT NULL DEFAULT '',
  "listorder" INTEGER NOT NULL DEFAULT 0,
  "status" INTEGER NOT NULL DEFAULT 1,
  "createtime" INTEGER NOT NULL DEFAULT 0,
  "updatetime" INTEGER NOT NULL DEFAULT 0
);

CREATE INDEX "idx_attachment_id" ON "attachment" ("id");
CREATE INDEX "idx_attachment_uid" ON "attachment" ("uid");
CREATE INDEX "idx_attachment_type" ON "attachment" ("type");
CREATE INDEX "idx_attachment_name" ON "attachment" ("name");
CREATE INDEX "idx_attachment_url" ON "attachment" ("url");
CREATE INDEX "idx_attachment_size" ON "attachment" ("size");
CREATE INDEX "idx_attachment_width" ON "attachment" ("width");
CREATE INDEX "idx_attachment_height" ON "attachment" ("height");
CREATE INDEX "idx_attachment_status" ON "attachment" ("status");
CREATE INDEX "idx_attachment_createtime" ON "attachment" ("createtime");
CREATE INDEX "idx_attachment_updatetime" ON "attachment" ("updatetime");

CREATE INDEX "idx_config_id" ON "config" ("id");
CREATE INDEX "idx_config_group" ON "config" ("group");
CREATE INDEX "idx_config_name" ON "config" ("name");
CREATE INDEX "idx_config_value" ON "config" ("value");
CREATE INDEX "idx_config_listorder" ON "config" ("listorder");
CREATE INDEX "idx_config_status" ON "config" ("status");
CREATE INDEX "idx_config_createtime" ON "config" ("createtime");
CREATE INDEX "idx_config_updatetime" ON "config" ("updatetime");

CREATE INDEX "idx_demo_id" ON "demo" ("id");
CREATE INDEX "idx_demo_uid" ON "demo" ("uid");
CREATE INDEX "idx_demo_listorder" ON "demo" ("listorder");
CREATE INDEX "idx_demo_status" ON "demo" ("status");
CREATE INDEX "idx_demo_createtime" ON "demo" ("createtime");
CREATE INDEX "idx_demo_updatetime" ON "demo" ("updatetime");

CREATE INDEX "idx_errmsg_id" ON "errmsg" ("id");
CREATE INDEX "idx_errmsg_uid" ON "errmsg" ("uid");
CREATE INDEX "idx_errmsg_action" ON "errmsg" ("action");
CREATE INDEX "idx_errmsg_postdata" ON "errmsg" ("postdata");
CREATE INDEX "idx_errmsg_listorder" ON "errmsg" ("listorder");
CREATE INDEX "idx_errmsg_status" ON "errmsg" ("status");
CREATE INDEX "idx_errmsg_createtime" ON "errmsg" ("createtime");
CREATE INDEX "idx_errmsg_updatetime" ON "errmsg" ("updatetime");

CREATE INDEX "idx_logs_id" ON "logs" ("id");
CREATE INDEX "idx_logs_uid" ON "logs" ("uid");
CREATE INDEX "idx_logs_username" ON "logs" ("username");
CREATE INDEX "idx_logs_controller" ON "logs" ("controller");
CREATE INDEX "idx_logs_action" ON "logs" ("action");
CREATE INDEX "idx_logs_ip" ON "logs" ("ip");
CREATE INDEX "idx_logs_createtime" ON "logs" ("createtime");
CREATE INDEX "idx_logs_updatetime" ON "logs" ("updatetime");

CREATE INDEX "idx_manager_id" ON "manager" ("id");
CREATE INDEX "idx_manager_username" ON "manager" ("username");
CREATE INDEX "idx_manager_password" ON "manager" ("password");
CREATE INDEX "idx_manager_email" ON "manager" ("email");
CREATE INDEX "idx_manager_status" ON "manager" ("status");
CREATE INDEX "idx_manager_factor" ON "manager" ("factor");
CREATE INDEX "idx_manager_createtime" ON "manager" ("createtime");
CREATE INDEX "idx_manager_updatetime" ON "manager" ("updatetime");

CREATE INDEX "idx_user_id" ON "user" ("id");
CREATE INDEX "idx_user_name" ON "user" ("name");
CREATE INDEX "idx_user_phone" ON "user" ("phone");
CREATE INDEX "idx_user_password" ON "user" ("password");
CREATE INDEX "idx_user_openid" ON "user" ("openid");
CREATE INDEX "idx_user_nickname" ON "user" ("nickname");
CREATE INDEX "idx_user_sex" ON "user" ("sex");
CREATE INDEX "idx_user_city" ON "user" ("city");
CREATE INDEX "idx_user_country" ON "user" ("country");
CREATE INDEX "idx_user_province" ON "user" ("province");
CREATE INDEX "idx_user_language" ON "user" ("language");
CREATE INDEX "idx_user_headimgurl" ON "user" ("headimgurl");
CREATE INDEX "idx_user_address" ON "user" ("address");
CREATE INDEX "idx_user_ua" ON "user" ("ua");
CREATE INDEX "idx_user_ip" ON "user" ("ip");
CREATE INDEX "idx_user_listorder" ON "user" ("listorder");
CREATE INDEX "idx_user_status" ON "user" ("status");
CREATE INDEX "idx_user_createtime" ON "user" ("createtime");
CREATE INDEX "idx_user_updatetime" ON "user" ("updatetime");

-- 插入数据
INSERT INTO "manager" ("username", "password", "email", "status", "factor", "remark", "createtime", "updatetime") VALUES
('cloudflare-pages-quick-admin', 'd7a4e36ad360ca9b0c7f4465c96ccbbefbc76674e47aa1718c74d2283d401019', '', 1, '6rp5mtg7', '管理员', 0, 0);
