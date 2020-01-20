<!--Creates New Database 'register'-->

Create database register;

<!--Allow you to use the Database-->

use register;

<!--Creates a table called 'users' with 2 columns 'username' & 'password'-->

create table users(username varchar(20), password varchar(20));

<!--Shows all Data that was added to the table users-->

select * from users;

<!--Deletes the table-->

drop table users;
