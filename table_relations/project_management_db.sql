CREATE TABLE IF NOT EXISTS clients(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS employees(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    project_id INT
);

CREATE TABLE IF NOT EXISTS projects(
        id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        client_id INT,
        project_lead_id INT
);

ALTER TABLE employees
ADD CONSTRAINT fk_project_id FOREIGN KEY(project_id) REFERENCES projects(id);

ALTER TABLE projects
    ADD CONSTRAINT fk_client_id FOREIGN KEY(client_id) REFERENCES clients(id) ON DELETE CASCADE,
    ADD CONSTRAINT fk_project_lead_id FOREIGN KEY(project_lead_id) REFERENCES employees(id) ON DELETE CASCADE