-- AlterTable
ALTER TABLE "template_reviews" ADD CONSTRAINT "template_reviews_stars_check" CHECK (stars >= 1 AND stars <= 5);
