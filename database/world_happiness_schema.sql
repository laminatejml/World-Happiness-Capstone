-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "happiness" (
    "id" int   NOT NULL,
    "country_id" int   NOT NULL,
    "year" int   NOT NULL,
    "life_ladder_log" numeric    NULL,
    "gdp_per_capita" numeric    NULL,
    "social_support" numeric    NULL,
    "healthy_life_expectancy_at_birth" numeric    NULL,
    "freedom_to_make_life_choices" numeric    NULL,
    "generosity" numeric    NULL,
    "Perceptions_of_corruption" numeric    NULL,
    "positive_affect" numeric    NULL,
    "negative_affect" numeric    NULL,
    "confidence_in_national_government" numeric   NULL
);

CREATE TABLE "countries" (
    "country_id" int   NOT NULL,
    "country" varchar   NOT NULL,
    "region" varchar   NOT NULL,
    "sub_region" varchar   NOT NULL,
    CONSTRAINT "pk_countries" PRIMARY KEY (
        "country_id"
     )
);

ALTER TABLE "happiness" ADD CONSTRAINT "fk_happiness_country_id" FOREIGN KEY("country_id")
REFERENCES "countries" ("country_id");

