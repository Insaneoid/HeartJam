/// @description 
instance_create_depth(x + 32, y + 32, 1, objAsteroidS);
instance_create_depth(x - 32, y - 32, 1, objAsteroidS);
instance_destroy(other);
instance_destroy(self);