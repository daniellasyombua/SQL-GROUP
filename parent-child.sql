
CREATE TABLE parent_child_relationship (
    relationship_id SERIAL PRIMARY KEY,
    parent_id INTEGER NOT NULL,
    child_id INTEGER NOT NULL,
    FOREIGN KEY (parent_id) REFERENCES parent (parent_id),
    FOREIGN KEY (child_id) REFERENCES child (child_id)
);

SELECT *FROM parent_child_relationship

INSERT INTO parent_child_relationship (parent_id, child_id)
VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (1, 5), 
(1, 6), (2, 7), (2, 8), (1, 9), (2, 10),
(1, 11), (2, 12), (1, 13), (2, 14), (1, 15);
SELECT * FROM parent_child_relationship
