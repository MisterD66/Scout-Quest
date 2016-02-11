# Scout-Quest
This software is meant for games with a big group of people. All you need is a Webserver running PHP and a MySQL server for the database.
The system is based on https://github.com/wpuehringer/quest/ but is completely rewritten to eliminate the use of a java based application. The UI is designed with Semantic UI (https://github.com/Semantic-Org/Semantic-UI) and should work on most platforms.

Setup:
1. Put all the files on your webserver and fill in the connect.php file with your DB login data
2. Create a Database and import the sampleDB.sql
3. Use phpMyAdmin or similar tools to get rid of the sample data in case you don't need it.
4. Add your Groups with the help addGroup.php
5. Add your Participants and assign them to their group using addUser.php
6. Add your Qusets with addQuests.php
7. Activate and Deactivate Quests using activateQuests.php
8. Assign your Users to active Quests using assignQuest.php
9. Close quests and distribute points using closeQuest.php
10. View all active quests on a public screen with openQuests.php - use your browsers zoom settings to adjust the layout for your screen resolution - sorry for that
11. view the points of all groups using showPoints.php

This system will be tested at the Upperaustrian "LAK 2016 - Challange accepted!" 


If you are planing on using this system please give me some feedback!
Feel free to contact me if you have troubles.

2016 Daniel Glocker 
