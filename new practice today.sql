use piramalemployee
go 
-- --Creating the 'room' table
CREATE TABLE room (
    room_id INT PRIMARY KEY,
    room_name VARCHAR(255),
    capacity INT,
    location VARCHAR(255)
);

-- Inserting records into the 'room' table
INSERT INTO room (room_id, room_name, capacity, location) VALUES
(1, 'A101', 4, 'East Wing'),
(2, 'B202', 2, 'West Wing'),
(3, 'C303', 6, 'North Wing'),
(4, 'D404', NULL, 'South Wing'),
(5, 'E505', 3, NULL),
(6, 'F606', 5, 'East Wing'),
(7, NULL, 4, 'West Wing'),
(8, 'H808', NULL, NULL);

-- Creating the 'room_partners' table
CREATE TABLE room_partners (
    partner_id INT PRIMARY KEY,
    partner_name VARCHAR(255),
    room_id INT FOREIGN KEY  REFERENCES room(room_id)
);

-- Inserting records into the 'room_partners' table
INSERT INTO room_partners (partner_id, partner_name, room_id) VALUES
(1, 'John Doe', 2),
(2, 'Jane Doe', 4),
(3, 'Alex Smith', 1),
(4, 'Emily Johnson', 5),
(5, 'Michael Brown', 3),
(6, 'Jessica Williams', NULL),
(7, NULL, 6),
(8, 'Chris Davis', 8);
		

	select * from room
	select * from room_partners

	-- practice problems questions --

	--Display all the details from the 'room' table
		select * from room

	--Display all the details from the 'room_partners' table.
		select * from room_partners

	--Display the room_id and room_name of the 'room' table where the capacity is greater than 4

	select room_id,room_name from room 
	where capacity < 4 ;

	--Display the partner_id and partner_name of the 'room_partners' 
	--table where the room_id is not NULL.

	select partner_id, partner_name from room_partners
	where room_id is not null

	--Count the number of records in the 'room' table.
		
		select count(room_id) from room

	--Count the number of records in the 'room_partners' table.

			select count(partner_id) from room_partners

	--Display the room_id, room_name, and location from the 'room'
	--table where location is 'East Wing'.

	select room_id, room_name, location from room
	where location = 'East Wing'

	--Display the partner_id, partner_name, and room_id from
	--the 'room_partners' table where partner_name is not NULL

		select partner_id, partner_name, room_id from room_partners
		where partner_name is null

	--Display the details from the 'room' table sorted by room_id in descending order.

		select * from room 
		order by room_id desc

	--Display the details from the 'room_partners' 
	--table sorted by partner_id in ascending order.

	select * from room_partners
	order by partner_id asc

	--Display the room_id and room_name from the 'room' table where room_name starts with 'A'.

	select room_id, room_name from room
	where room_name like 'A%'

	--Display the partner_id and partner_name from the 'room_partners' 
	--table where partner_name contains 'Smith'

		select partner_id, partner_name from room_partners
		where partner_name like '%Smith%'

	--Display the room_id, room_name, and location from the 'room' 
	--table where capacity is either 4 or 5.

	select room_id, room_name,location from room
	where capacity between 4 and 5