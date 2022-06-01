CREATE TABLE IF NOT EXISTS employee(
	id_employee SERIAL PRIMARY KEY,
	name_employee VARCHAR(150) NOT NULL,
    id_department INTEGER NOT NULL, 
    isboss BOOLEAN DEFAULT FALSE, -- это поле можно создать для удобства, контролировать черзе триггер 
    id_boss INTEGER REFERENCES employee (id_employee)
);