
CREATE TABLE Gymnasiums (
    gym_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    address TEXT,
    phone_number TEXT
);


CREATE TABLE Members (
    member_id INTEGER PRIMARY KEY AUTOINCREMENT,
    last_name TEXT,
    first_name TEXT,
    address TEXT,
    date_of_birth TEXT,
    gender TEXT,
    gym_id INTEGER,
    FOREIGN KEY (gym_id) REFERENCES Gymnasiums(gym_id)
);


CREATE TABLE Coaches (
    coach_id INTEGER PRIMARY KEY AUTOINCREMENT,
    last_name TEXT,
    first_name TEXT,
    age INTEGER,
    specialty TEXT
);


CREATE TABLE Sessions (
    session_id INTEGER PRIMARY KEY AUTOINCREMENT,
    type_of_sport TEXT,
    schedule TEXT,
    gym_id INTEGER,
    coach_id_1 INTEGER,
    coach_id_2 INTEGER,
    FOREIGN KEY (gym_id) REFERENCES Gymnasiums(gym_id),
    FOREIGN KEY (coach_id_1) REFERENCES Coaches(coach_id),
    FOREIGN KEY (coach_id_2) REFERENCES Coaches(coach_id)
);


CREATE TABLE Registrations (
    registration_id INTEGER PRIMARY KEY AUTOINCREMENT,
    member_id INTEGER,
    session_id INTEGER,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (session_id) REFERENCES Sessions(session_id)
);
