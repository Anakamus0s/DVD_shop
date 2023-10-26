ALTER TABLE public.film_actor
ADD CONSTRAINT fk_film_actor_actor
FOREIGN KEY (actor_id)
REFERENCES "actor"(actor_id);