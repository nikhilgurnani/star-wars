**NOTE: Please use the Database Schema.sql file to create a DB Schema before running the system.

-----STAR WARS PROBLEM IMPLEMENTATION README-----
"Hello There."
This is an introductory file that will tell you how and what of the system. This system contains 3 main files:
1) droid file
2) central-hub file
3) data file
Each of these files have a purpose and it is as follows:

----Data File----
Every droid that we deploy in the field will create this file. Inside this file, the droid will write 'queries' (term for single knowledge instance)
that will be automatically pushed to the central repository, we call the 'Database'. 
----Droid File----
After collection of such queries, the droid shall execute this Droid file that will push the data collected by the droid
to the central Database and store it in a structured format that we will use in the future.
This is the way that the droids shall exchange information. This database will be accessible by all the droids.
----Central Hub---
This file shall be deployed at the central communication server that the droids already use. The purpose of the file is to extract the information
stored in the said database and use to apply some analysis algorithm stored in a snake-type file called 'analysis'.

----Final Step----
We execute this snake-type file in a snake-type shell and it produces visual result. It also produces some predictions that
will help us estimate the Fight Intensity and Damage that our droids receive in battle from those droids.

This system has a lot of improvement scope. Me and my team are continuosly working on improving this so that we can win this battle
as quickly as we can and as efficiently as we can. 

Until then,
May the force be with us.

-Lama Su