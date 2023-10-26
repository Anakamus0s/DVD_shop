ALTER TABLE public.rental
ADD CONSTRAINT fk_rental_staff
FOREIGN KEY (staff_id)
REFERENCES "staff"(staff_id);