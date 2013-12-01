CREATE TABLE "collections" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "collection_name" varchar(255), "user_id" integer);
CREATE TABLE "pins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "description" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "user_id" integer, "image_file_name" varchar(255), "image_content_type" varchar(255), "image_file_size" integer, "image_updated_at" datetime, "image_remote_url" varchar(255), "collection_id" integer);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "name" varchar(255));
CREATE INDEX "index_collections_on_user_id" ON "collections" ("user_id");
CREATE INDEX "index_pins_on_collection_id" ON "pins" ("collection_id");
CREATE INDEX "index_pins_on_user_id" ON "pins" ("user_id");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130927185057');

INSERT INTO schema_migrations (version) VALUES ('20131001201315');

INSERT INTO schema_migrations (version) VALUES ('20131001211714');

INSERT INTO schema_migrations (version) VALUES ('20131002004814');

INSERT INTO schema_migrations (version) VALUES ('20131005191125');

INSERT INTO schema_migrations (version) VALUES ('20131014201806');

INSERT INTO schema_migrations (version) VALUES ('20131104214423');

INSERT INTO schema_migrations (version) VALUES ('20131112230826');

INSERT INTO schema_migrations (version) VALUES ('20131112232639');

INSERT INTO schema_migrations (version) VALUES ('20131113011007');