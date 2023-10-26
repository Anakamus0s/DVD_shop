ALTER TABLE public.rental
ADD CONSTRAINT fk_inventory_rental
FOREIGN KEY (inventory_id)
REFERENCES "inventory"(inventory_id);