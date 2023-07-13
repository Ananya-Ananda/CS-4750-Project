-- PRAGMA foreign_keys=OFF;
BEGIN;
CREATE TABLE SPONSOR
(
Sponsor_ID INTEGER NOT NULL AUTO_INCREMENT,
Sponsor_Company VARCHAR(50) NULL ,
Sponsor_First VARCHAR(50) NULL ,
Sponsor_Last VARCHAR(50) NULL ,
Sponsor_Email VARCHAR(100) NULL ,
 CONSTRAINT XPKSPONSOR PRIMARY KEY  ( Sponsor_ID ASC )
);
INSERT INTO SPONSOR (Sponsor_Company, Sponsor_First, Sponsor_Last, Sponsor_Email) VALUES('Capital One','Maris','Rice','mrice@capitalone.com');
INSERT INTO SPONSOR (Sponsor_Company, Sponsor_First, Sponsor_Last, Sponsor_Email) VALUES('University of Virginia','Sierra','Ferguson','sferguson@uva.edu');
INSERT INTO SPONSOR (Sponsor_Company, Sponsor_First, Sponsor_Last, Sponsor_Email) VALUES('bti 360','Anna','Mills','amills@bti.com');
INSERT INTO SPONSOR (Sponsor_Company, Sponsor_First, Sponsor_Last, Sponsor_Email) VALUES('Booz Allen','Brianna','Fox','bfox@boozallen.com');
INSERT INTO SPONSOR (Sponsor_Company, Sponsor_First, Sponsor_Last, Sponsor_Email) VALUES('TecHacks','Tiffany','Black','tblack@techacks.com');
INSERT INTO SPONSOR (Sponsor_Company, Sponsor_First, Sponsor_Last, Sponsor_Email) VALUES('Applan','Paige','Schmidt','pschmidt@applan.com');
INSERT INTO SPONSOR (Sponsor_Company, Sponsor_First, Sponsor_Last, Sponsor_Email) VALUES('ting','Vanessa','Rose','vrose@ting.com');

CREATE TABLE EVENT
(
Event_ID INTEGER NOT NULL ,
Event_Description VARCHAR(2000) NULL ,
Event_Date VARCHAR(20) NULL ,
Event_Location VARCHAR(100) NULL ,
Sponsor_ID INTEGER NULL ,
Event_Type VARCHAR(50) NULL ,
Event_Time VARCHAR(20) NULL ,
Event_Title VARCHAR(50) NULL ,
 CONSTRAINT XPKEVENT PRIMARY KEY  ( Event_ID ASC ),
CONSTRAINT R_26 FOREIGN KEY (Sponsor_ID) REFERENCES SPONSOR (Sponsor_ID)
);
INSERT INTO EVENT VALUES(1,'opening ceremony','Saturday, October 15','Rice 032',2,'','9am - 10am','Opening Ceremony');
INSERT INTO EVENT VALUES(2,'introduction to Python part 1','Saturday, October 15','Rice 032',3,'Workshop','10am','Intro to Python Part 1');
INSERT INTO EVENT VALUES(3,'introduction to Python part 2','Saturday, October 15','Rice 032',3,'Workshop','11am','Intro to Python Part 2');
INSERT INTO EVENT VALUES(4,'resume speed run','Saturday, October 15','Rice 032',4,'Workshop','3pm','Resume Speed Run');
INSERT INTO EVENT VALUES(5,'Game development using unity','Saturday, October 15','Rice 032',7,'Workshop','4pm','Game Development Using Unity');
INSERT INTO EVENT VALUES(6,'Sponsor network','Saturday, October 15','Rice 032',1,'Network','5pm','Sponsor Networking Event');
INSERT INTO EVENT VALUES(7,'podcast','Saturday, October 15','Rice 032',7,'Social','8:30pm','Late Night Podcast');

CREATE TABLE WORKSHOP
(
Event_ID INTEGER NOT NULL ,
Presenter_First VARCHAR(50) NULL ,
Presenter_Last VARCHAR(50) NULL ,
Presenter_Email VARCHAR(100) NULL ,
 CONSTRAINT XPKWORKSHOP PRIMARY KEY  ( Event_ID ASC ),
CONSTRAINT R_17 FOREIGN KEY (Event_ID) REFERENCES EVENT (Event_ID)
);
INSERT INTO WORKSHOP VALUES(2,'Jessica','Miller','jessicamiller@uva.edu');
INSERT INTO WORKSHOP VALUES(3,'Jessica','Miller','jessicamiller@uva.edu');
INSERT INTO WORKSHOP VALUES(4,'David','Harris','dharris@techacks.com');
INSERT INTO WORKSHOP VALUES(5,'Amanda','Baker','amandabaker@gmail.com');

CREATE TABLE NETWORK
(
Event_ID INTEGER NOT NULL ,
Recruiter_First VARCHAR(50) NULL ,
Recruiter_Last VARCHAR(50) NULL ,
 CONSTRAINT XPKNETWORK PRIMARY KEY  ( Event_ID ASC ),
CONSTRAINT R_18 FOREIGN KEY (Event_ID) REFERENCES EVENT (Event_ID)
);
INSERT INTO NETWORK VALUES(6,'Iris','Smith');

CREATE TABLE SOCIAL
(
Event_ID INTEGER NOT NULL ,
Material_Description VARCHAR(2000) NULL ,
 CONSTRAINT XPKSOCIAL PRIMARY KEY  ( Event_ID ASC ),
CONSTRAINT R_19 FOREIGN KEY (Event_ID) REFERENCES EVENT (Event_ID)
);
INSERT INTO SOCIAL VALUES(7,'N/A');

CREATE TABLE COLLEGE
(
College_ID INTEGER NOT NULL ,
College_Name VARCHAR(50) NULL ,
 CONSTRAINT XPKCOLLEGE PRIMARY KEY  ( College_ID ASC )
);
INSERT INTO COLLEGE VALUES(1,'University of Virginia');
INSERT INTO COLLEGE VALUES(2,'College of William and Mary');
INSERT INTO COLLEGE VALUES(3,'Virginia Tech');
INSERT INTO COLLEGE VALUES(4,'George Mason University');
INSERT INTO COLLEGE VALUES(5,'James Madison University');

CREATE TABLE PARTICIPANT
(
Participant_ID INT NOT NULL AUTO_INCREMENT,
Participant_First VARCHAR(50) NULL ,
Participant_Last VARCHAR(50) NULL ,
Participant_Year INTEGER NULL ,
Participant_Email VARCHAR(100) NULL ,
College_ID INTEGER NULL ,
 CONSTRAINT XPKPARTICIPANT PRIMARY KEY  ( Participant_ID ASC ),
CONSTRAINT R_15 FOREIGN KEY (College_ID) REFERENCES COLLEGE (College_ID)
);


INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Olivia','Smith',4,'osmith@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Emma','Fisher',2,'efisher@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Amelia','Barnes',1,'aBarnes@wm.edu',2);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Charlotte','Perry',4,'cPerry@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Ava','Powell',3,'cpowell@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Sophia','Sullivan',4,'ssullivan@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Isabella','Ross',2,'iross@wm.edu',2);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Mia','Foster',1,'mfoster@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Luna','Long',2,'llong@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Lily','Myers',4,'lmyers@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Harper','Jenkins',4,'hjenkins@jmu.edu',5);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Gianna','Reed',2,'greed@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Evelyn','Rogers',4,'erogers@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Aurora','Cook',3,'acook@jmu.edu',5);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Violet','Morris',4,'vmorris@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Ellie','Chen',4,'echen@uva.edu',1);
INSERT INTO PARTICIPANT (Participant_First, Participant_Last, Participant_Year, Participant_Email, College_ID) VALUES('Mila','Lee',4,'mlee@uva.edu',1);

CREATE TABLE PARTICIPANT_EVENT
(
Participant_ID INTEGER NOT NULL ,
Event_ID INTEGER NOT NULL ,
 CONSTRAINT XPKPARTICIPANT_EVENT PRIMARY KEY  ( Participant_ID ASC, Event_ID ASC ),
CONSTRAINT R_20 FOREIGN KEY (Participant_ID) REFERENCES PARTICIPANT (Participant_ID),
CONSTRAINT R_21 FOREIGN KEY (Event_ID) REFERENCES EVENT (Event_ID)
);
INSERT INTO PARTICIPANT_EVENT VALUES(1,1);
INSERT INTO PARTICIPANT_EVENT VALUES(2,1);
INSERT INTO PARTICIPANT_EVENT VALUES(3,1);
INSERT INTO PARTICIPANT_EVENT VALUES(4,1);
INSERT INTO PARTICIPANT_EVENT VALUES(5,1);
INSERT INTO PARTICIPANT_EVENT VALUES(6,1);
INSERT INTO PARTICIPANT_EVENT VALUES(7,1);
INSERT INTO PARTICIPANT_EVENT VALUES(8,1);
INSERT INTO PARTICIPANT_EVENT VALUES(9,1);
INSERT INTO PARTICIPANT_EVENT VALUES(10,1);
INSERT INTO PARTICIPANT_EVENT VALUES(11,1);
INSERT INTO PARTICIPANT_EVENT VALUES(12,1);
INSERT INTO PARTICIPANT_EVENT VALUES(13,1);
INSERT INTO PARTICIPANT_EVENT VALUES(14,1);
INSERT INTO PARTICIPANT_EVENT VALUES(15,1);
INSERT INTO PARTICIPANT_EVENT VALUES(16,1);
INSERT INTO PARTICIPANT_EVENT VALUES(17,1);
INSERT INTO PARTICIPANT_EVENT VALUES(1,2);
INSERT INTO PARTICIPANT_EVENT VALUES(3,2);
INSERT INTO PARTICIPANT_EVENT VALUES(5,2);
INSERT INTO PARTICIPANT_EVENT VALUES(7,2);
INSERT INTO PARTICIPANT_EVENT VALUES(9,2);
INSERT INTO PARTICIPANT_EVENT VALUES(17,2);
INSERT INTO PARTICIPANT_EVENT VALUES(2,2);
INSERT INTO PARTICIPANT_EVENT VALUES(6,2);
INSERT INTO PARTICIPANT_EVENT VALUES(1,3);
INSERT INTO PARTICIPANT_EVENT VALUES(3,3);
INSERT INTO PARTICIPANT_EVENT VALUES(5,3);
INSERT INTO PARTICIPANT_EVENT VALUES(7,3);
INSERT INTO PARTICIPANT_EVENT VALUES(9,3);
INSERT INTO PARTICIPANT_EVENT VALUES(17,3);
INSERT INTO PARTICIPANT_EVENT VALUES(2,3);
INSERT INTO PARTICIPANT_EVENT VALUES(6,3);
INSERT INTO PARTICIPANT_EVENT VALUES(10,4);
INSERT INTO PARTICIPANT_EVENT VALUES(2,4);
INSERT INTO PARTICIPANT_EVENT VALUES(5,4);
INSERT INTO PARTICIPANT_EVENT VALUES(16,4);
INSERT INTO PARTICIPANT_EVENT VALUES(13,4);
INSERT INTO PARTICIPANT_EVENT VALUES(17,4);
INSERT INTO PARTICIPANT_EVENT VALUES(4,4);
INSERT INTO PARTICIPANT_EVENT VALUES(6,4);
INSERT INTO PARTICIPANT_EVENT VALUES(15,4);
INSERT INTO PARTICIPANT_EVENT VALUES(11,4);
INSERT INTO PARTICIPANT_EVENT VALUES(8,4);
INSERT INTO PARTICIPANT_EVENT VALUES(2,5);
INSERT INTO PARTICIPANT_EVENT VALUES(3,5);
INSERT INTO PARTICIPANT_EVENT VALUES(5,5);
INSERT INTO PARTICIPANT_EVENT VALUES(6,5);
INSERT INTO PARTICIPANT_EVENT VALUES(7,5);
INSERT INTO PARTICIPANT_EVENT VALUES(8,5);
INSERT INTO PARTICIPANT_EVENT VALUES(9,5);
INSERT INTO PARTICIPANT_EVENT VALUES(11,6);
INSERT INTO PARTICIPANT_EVENT VALUES(12,6);
INSERT INTO PARTICIPANT_EVENT VALUES(13,6);
INSERT INTO PARTICIPANT_EVENT VALUES(14,6);
INSERT INTO PARTICIPANT_EVENT VALUES(15,6);
INSERT INTO PARTICIPANT_EVENT VALUES(16,6);
INSERT INTO PARTICIPANT_EVENT VALUES(1,7);
INSERT INTO PARTICIPANT_EVENT VALUES(2,7);
INSERT INTO PARTICIPANT_EVENT VALUES(3,7);
INSERT INTO PARTICIPANT_EVENT VALUES(4,7);
INSERT INTO PARTICIPANT_EVENT VALUES(5,7);
INSERT INTO PARTICIPANT_EVENT VALUES(6,7);
INSERT INTO PARTICIPANT_EVENT VALUES(10,7);

CREATE TABLE ORGANIZER
(
Organizer_ID INTEGER NOT NULL AUTO_INCREMENT,
Organizer_First VARCHAR(50) NULL ,
Organizer_Last VARCHAR(50) NULL ,
Organizer_Year INTEGER NULL ,
Organizer_Email VARCHAR(100) NULL ,
 CONSTRAINT XPKORGANIZER PRIMARY KEY  ( Organizer_ID ASC )
);
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Mary','Brown',4,'mbrown@xyz.com');
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Patricia','Taylor',3,'ptaylor@xyz.com');
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Linda','Moore',4,'lmoore@xyz.com');
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Jennifer','Jackson',2,'jjackson@xyz.com');
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Thomas','Lee',3,'tlee@xyz.com');
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Mark','Wilson',4,'mwilson@xyz.com');
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Joseph','Park',2,'jpark@xyz.com');
INSERT INTO ORGANIZER (Organizer_First, Organizer_Last, Organizer_Year, Organizer_Email) VALUES('Betty','Martin',4,'bmartin@xyz.com');

CREATE TABLE ORG_EVENT
(
Organizer_ID INTEGER NOT NULL ,
Event_ID INTEGER NOT NULL ,
 CONSTRAINT XPKORG_EVENT PRIMARY KEY  ( Organizer_ID ASC, Event_ID ASC ),
CONSTRAINT R_22 FOREIGN KEY (Organizer_ID) REFERENCES ORGANIZER (Organizer_ID),
CONSTRAINT R_23 FOREIGN KEY (Event_ID) REFERENCES EVENT (Event_ID)
);
INSERT INTO ORG_EVENT VALUES(1,1);
INSERT INTO ORG_EVENT VALUES(2,1);
INSERT INTO ORG_EVENT VALUES(3,2);
INSERT INTO ORG_EVENT VALUES(3,3);
INSERT INTO ORG_EVENT VALUES(4,4);
INSERT INTO ORG_EVENT VALUES(5,5);
INSERT INTO ORG_EVENT VALUES(6,6);
INSERT INTO ORG_EVENT VALUES(7,7);
INSERT INTO ORG_EVENT VALUES(8,7);

CREATE TABLE VOLUNTEER
(
Volunteer_ID INTEGER NOT NULL AUTO_INCREMENT,
Volunteer_First VARCHAR(50) NULL ,
Volunteer_Last VARCHAR(50) NULL ,
Volunteer_Year INTEGER NULL ,
Volunteer_Email CHAR(18) NULL ,
 CONSTRAINT XPKVOLUNTEER PRIMARY KEY  ( Volunteer_ID ASC )
);
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Emily','Davis',2,'emilyd@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Ashley','Walker',2,'ashleyw@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Alexis','Young',1,'alexisy@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Sarah','Allen',4,'saraha@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Isabella','Powell',3,'isabellap@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Hannah','King',4,'hannahk@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Kaylee','Harris',2,'kayleeh@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Brooke','Robinson',1,'brooker@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Megan','Lee',2,'meganl@uva.edu');
INSERT INTO VOLUNTEER (Volunteer_First, Volunteer_Last, Volunteer_Year, Volunteer_Email) VALUES('Haley','Myers',4,'haleym@uva.edu');
CREATE TABLE VOLUNTEER_EVENT
(
Volunteer_ID INTEGER NOT NULL ,
Event_ID INTEGER NOT NULL ,
 CONSTRAINT XPKVOLUNTEER_EVENT PRIMARY KEY  ( Volunteer_ID ASC, Event_ID ASC ),
CONSTRAINT R_24 FOREIGN KEY (Volunteer_ID) REFERENCES VOLUNTEER (Volunteer_ID),
CONSTRAINT R_25 FOREIGN KEY (Event_ID) REFERENCES EVENT (Event_ID)
);
INSERT INTO VOLUNTEER_EVENT VALUES(1,1);
INSERT INTO VOLUNTEER_EVENT VALUES(2,1);
INSERT INTO VOLUNTEER_EVENT VALUES(3,1);
INSERT INTO VOLUNTEER_EVENT VALUES(4,2);
INSERT INTO VOLUNTEER_EVENT VALUES(5,2);
INSERT INTO VOLUNTEER_EVENT VALUES(6,3);
INSERT INTO VOLUNTEER_EVENT VALUES(7,3);
INSERT INTO VOLUNTEER_EVENT VALUES(8,4);
INSERT INTO VOLUNTEER_EVENT VALUES(3,4);
INSERT INTO VOLUNTEER_EVENT VALUES(9,5);
INSERT INTO VOLUNTEER_EVENT VALUES(10,5);
INSERT INTO VOLUNTEER_EVENT VALUES(1,6);
INSERT INTO VOLUNTEER_EVENT VALUES(4,6);
INSERT INTO VOLUNTEER_EVENT VALUES(8,7);
INSERT INTO VOLUNTEER_EVENT VALUES(5,7);
COMMIT;
