-- Na podstawie poniższej mapy utwórz trzy tabele: 

-- buildings (id, geometry, name)
CREATE TABLE buildings (
    id INT PRIMARY KEY,
    geometry GEOMETRY(POLYGON, 4326),
    name VARCHAR(255)
);
-- roads (id, geometry, name)
CREATE TABLE roads (
    id INT PRIMARY KEY,
    geometry GEOMETRY(LINESTRING, 4326),
    name VARCHAR(255)
);
-- poi (id, geometry, name)
CREATE TABLE poi (
    id INT PRIMARY KEY,
    geometry GEOMETRY(POINT, 4326),
    name VARCHAR(255)
);
