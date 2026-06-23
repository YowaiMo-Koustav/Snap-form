-- AlterTable: rename snake_case columns in accounts to camelCase (Better Auth requirement)
ALTER TABLE "accounts" RENAME COLUMN "refresh_token" TO "refreshToken";
ALTER TABLE "accounts" RENAME COLUMN "access_token" TO "accessToken";
ALTER TABLE "accounts" RENAME COLUMN "expires_at" TO "expiresAt";
ALTER TABLE "accounts" RENAME COLUMN "token_type" TO "tokenType";
ALTER TABLE "accounts" RENAME COLUMN "id_token" TO "idToken";
ALTER TABLE "accounts" RENAME COLUMN "session_state" TO "sessionState";

-- AlterTable: add optional unique username to users
ALTER TABLE "users" ADD COLUMN "username" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "users_username_key" ON "users"("username");
