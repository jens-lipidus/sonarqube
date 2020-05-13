CREATE TABLE "QPROFILE_EDIT_USERS"(
    "UUID" VARCHAR(40) NOT NULL,
    "USER_ID" INTEGER NOT NULL,
    "QPROFILE_UUID" VARCHAR(255) NOT NULL,
    "CREATED_AT" BIGINT NOT NULL,
    "USER_UUID" VARCHAR(40)
);
ALTER TABLE "QPROFILE_EDIT_USERS" ADD CONSTRAINT "PK_QPROFILE_EDIT_USERS" PRIMARY KEY("UUID");
CREATE INDEX "QPROFILE_EDIT_USERS_QPROFILE" ON "QPROFILE_EDIT_USERS"("QPROFILE_UUID");
CREATE UNIQUE INDEX "QPROFILE_EDIT_USERS_UNIQUE" ON "QPROFILE_EDIT_USERS"("USER_ID", "QPROFILE_UUID");