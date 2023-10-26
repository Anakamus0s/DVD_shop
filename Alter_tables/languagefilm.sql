ALTER TABLE public.film
ADD CONSTRAINT fk_film_language
FOREIGN KEY (language_id)
REFERENCES "language"(language_id);