PRAGMA foreign_keys = '1';
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
PRAGMA encoding;
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578309573286164";
SAVEPOINT "RESTOREPOINT";
CREATE TABLE "tables" (
	"id"	INTEGER NOT NULL,
	"state"	TEXT,
	"price"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
PRAGMA foreign_keys;
RELEASE "db4s_edittable_16578309573286164";
PRAGMA foreign_keys = '0';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578318633588631";
ROLLBACK TO SAVEPOINT "db4s_edittable_16578318633588631";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
RELEASE "db4s_edittable_16578318633588631";
PRAGMA "main".foreign_key_check
PRAGMA foreign_keys = '1';
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT COUNT(*) FROM "main"."tables"
SELECT "_rowid_",* FROM "main"."tables" LIMIT 0, 49999;
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT COUNT(*) FROM "main"."tables"
SELECT "_rowid_",* FROM "main"."tables" LIMIT 0, 49999;
PRAGMA foreign_keys;
PRAGMA foreign_keys = '0';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578319286338013";
ROLLBACK TO SAVEPOINT "db4s_edittable_16578319286338013";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
RELEASE "db4s_edittable_16578319286338013";
PRAGMA "main".foreign_key_check
PRAGMA foreign_keys = '1';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578319602274827";
SAVEPOINT "RESTOREPOINT";
CREATE TABLE "order_logs" (
	"id"	INTEGER NOT NULL,
	"order_name"	TEXT,
	"food_id"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578320445116807";
CREATE TABLE "inventory" (
	"id"	INTEGER NOT NULL,
	"name"	TEXT,
	"price_huf"	INTEGER,
	"price_eur"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
PRAGMA foreign_keys;
RELEASE "db4s_edittable_16578319602274827";
PRAGMA foreign_keys = '0';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578321222426795";
SAVEPOINT "db4s_renamecolumn_16578321724790350";
SAVEPOINT "RESTOREPOINT";
ALTER TABLE "main"."order_logs" ADD COLUMN 	"table_id"	INTEGER
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
CREATE TABLE "sqlb_temp_table_1" (
	"id"	INTEGER NOT NULL,
	"order_name"	TEXT,
	"food_id"	INTEGER,
	"table_id"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "main"."sqlb_temp_table_1" ("food_id","id","order_name") SELECT "food_id","id","order_name" FROM "main"."order_logs"
PRAGMA defer_foreign_keys;
PRAGMA defer_foreign_keys = '1';
DROP TABLE "main"."order_logs"
ALTER TABLE "main"."sqlb_temp_table_1" RENAME TO "order_logs"
PRAGMA defer_foreign_keys = '0';
RELEASE "db4s_renamecolumn_16578321724790350";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
PRAGMA "main".foreign_key_check
RELEASE "db4s_edittable_16578321222426795";
PRAGMA foreign_keys = '1';
SELECT COUNT(*) FROM "main"."sqlite_sequence"
SELECT "_rowid_",* FROM "main"."sqlite_sequence" LIMIT 0, 49999;
PRAGMA foreign_keys;
PRAGMA foreign_keys = '0';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578321828955516";
ROLLBACK TO SAVEPOINT "db4s_edittable_16578321828955516";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
RELEASE "db4s_edittable_16578321828955516";
PRAGMA "main".foreign_key_check
PRAGMA foreign_keys = '1';
SELECT COUNT(*) FROM "main"."sqlite_sequence"
SELECT "_rowid_",* FROM "main"."sqlite_sequence" LIMIT 0, 49999;
PRAGMA foreign_keys;
PRAGMA foreign_keys = '0';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578325361657600";
SAVEPOINT "db4s_renamecolumn_16578326115876976";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
SAVEPOINT "RESTOREPOINT";
CREATE TABLE "sqlb_temp_table_2" (
	"id"	INTEGER,
	"name"	TEXT,
	"price_huf"	INTEGER,
	"price_eur"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "main"."sqlb_temp_table_2" ("id","name","price_eur","price_huf") SELECT "id","name","price_eur","price_huf" FROM "main"."inventory"
PRAGMA defer_foreign_keys;
PRAGMA defer_foreign_keys = '1';
DROP TABLE "main"."inventory"
ALTER TABLE "main"."sqlb_temp_table_2" RENAME TO "inventory"
PRAGMA defer_foreign_keys = '0';
RELEASE "db4s_renamecolumn_16578326115876976";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
PRAGMA "main".foreign_key_check
RELEASE "db4s_edittable_16578325361657600";
PRAGMA foreign_keys = '1';
PRAGMA foreign_keys;
PRAGMA foreign_keys = '0';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578326154189216";
SAVEPOINT "db4s_renamecolumn_16578326220503020";
SAVEPOINT "RESTOREPOINT";
ALTER TABLE "main"."order_logs" RENAME TO "orders"
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
CREATE TABLE "sqlb_temp_table_3" (
	"id"	INTEGER NOT NULL,
	"order_name"	TEXT,
	"food_id"	INTEGER,
	"table_id"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "main"."sqlb_temp_table_3" ("food_id","id","order_name","table_id") SELECT "food_id","id","order_name","table_id" FROM "main"."orders"
PRAGMA defer_foreign_keys;
PRAGMA defer_foreign_keys = '1';
DROP TABLE "main"."orders"
ALTER TABLE "main"."sqlb_temp_table_3" RENAME TO "orders"
PRAGMA defer_foreign_keys = '0';
RELEASE "db4s_renamecolumn_16578326220503020";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
PRAGMA "main".foreign_key_check
RELEASE "db4s_edittable_16578326154189216";
PRAGMA foreign_keys = '1';
PRAGMA foreign_keys;
PRAGMA foreign_keys = '0';
PRAGMA collation_list;
SAVEPOINT "db4s_edittable_16578326258400609";
SAVEPOINT "db4s_renamecolumn_16578327156189090";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
SAVEPOINT "RESTOREPOINT";
CREATE TABLE "sqlb_temp_table_4" (
	"id"	INTEGER,
	"food_id"	INTEGER,
	"table_id"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "main"."sqlb_temp_table_4" ("food_id","id","table_id") SELECT "food_id","id","table_id" FROM "main"."orders"
PRAGMA defer_foreign_keys;
PRAGMA defer_foreign_keys = '1';
DROP TABLE "main"."orders"
ALTER TABLE "main"."sqlb_temp_table_4" RENAME TO "orders"
PRAGMA defer_foreign_keys = '0';
RELEASE "db4s_renamecolumn_16578327156189090";
PRAGMA database_list;
SELECT type,name,sql,tbl_name FROM "main".sqlite_master;
SELECT type,name,sql,tbl_name FROM sqlite_temp_master;
PRAGMA "main".foreign_key_check
RELEASE "db4s_edittable_16578326258400609";
PRAGMA foreign_keys = '1';
