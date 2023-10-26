ALTER TABLE public.film_actor
ADD CONSTRAINT fk_film_actor_film
FOREIGN KEY (film_id)
REFERENCES "film"(film_id);