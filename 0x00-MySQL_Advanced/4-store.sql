-- Create a trigger changing item quantity
-- After adding a new order to items table
CREATE TRIGGER my_trig
AFTER INSERT ON orders 
FOR EACH ROW
UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;