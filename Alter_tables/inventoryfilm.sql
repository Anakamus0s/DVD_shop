ALTER TABLE public.inventory
ADD CONSTRAINT fk_inventory_film_actor
FOREIGN KEY (inventory_id)
REFERENCES "inventory"(inventory_id);