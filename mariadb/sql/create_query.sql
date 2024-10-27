CREATE TABLE projects(
	project_id INT AUTO_INCREMENT,
	project_name VARCHAR(255) NOT NULL,
	begin_date DATE,
	end_date DATE,
	cost DECIMAL(15, 2) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY(project_id)
);
SELECT * from projects;

CREATE TABLE milestones(
	milestone_id INT AUTO_INCREMENT,
	project_id INT,
	milestone VARCHAR(255) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	completed BOOL DEFAULT FALSE,
	primary KEY(milestone_id, project_id),
	FOREIGN KEY(project_id) REFERENCES projects(project_id)
);
SELECT * FROM milestones;