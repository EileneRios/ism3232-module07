-- schema.sql
-- Strand Studio: orders, products, and product swaps waiting for staff.

CREATE TABLE IF NOT EXISTS orders (
    order_id TEXT PRIMARY KEY,
    customer TEXT NOT NULL,
    product  TEXT NOT NULL,
    status   TEXT NOT NULL,
    address  TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
    name      TEXT PRIMARY KEY,
    hair_type TEXT NOT NULL,
    price     REAL NOT NULL,
    stock     INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS change_requests (
    number      INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id    TEXT NOT NULL,
    new_product TEXT NOT NULL,
    status      TEXT NOT NULL DEFAULT 'waiting'
);

INSERT OR IGNORE INTO orders (order_id, customer, product, status, address) VALUES
    ('S100', 'Frizzy Fitzgerald', 'wave mousse', 'shipped', '12 Ponytail Place'),
    ('S101', 'Bobby Pinz', 'moisture shampoo', 'processing', '45 Braid Boulevard'),
    ('S102', 'Markum Reed', 'curl defining cream', 'delivered', '8 Ringlet Road'),
    ('S103', 'Afro Dite', 'coil butter', 'processing', '30 Coil Court'),
    ('S104', 'Harry Follicle', 'lightweight shampoo', 'shipped', '19 Split End Lane'),
    ('S105', 'Dee Tangler', 'sea salt spray', 'delivered', '77 Top Knot Street');

INSERT OR IGNORE INTO products (name, hair_type, price, stock) VALUES
    ('lightweight shampoo', 'straight', 14.00, 20),
    ('smoothing serum', 'straight', 16.00, 0),
    ('wave mousse', 'wavy', 15.00, 12),
    ('sea salt spray', 'wavy', 13.00, 8),
    ('curl defining cream', 'curly', 18.00, 10),
    ('leave-in conditioner', 'curly', 17.00, 0),
    ('coil butter', 'coily', 22.00, 6),
    ('moisture shampoo', 'coily', 15.00, 9);