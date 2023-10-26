ALTER TABLE public.film_category
ADD CONSTRAINT fk_film_category_film
FOREIGN KEY (film_id)
REFERENCES "film"(film_id);