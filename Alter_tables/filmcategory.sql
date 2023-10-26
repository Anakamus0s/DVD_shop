ALTER TABLE public.film_category
ADD CONSTRAINT fk_film_category_category
FOREIGN KEY (category_id)
REFERENCES "category"(category_id);