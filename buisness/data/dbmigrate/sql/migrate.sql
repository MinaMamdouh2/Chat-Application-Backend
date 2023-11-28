-- Version: 1.01
-- Description: Create table applications
CREATE TABLE applications (
	application_id	UUID        NOT NULL,
	name          	TEXT        NOT NULL,
	chats_count			INT					NOT NULL,
	date_created  	TIMESTAMP   NOT NULL,
	date_updated  	TIMESTAMP   NOT NULL,

	PRIMARY KEY (application_id)
);

-- Version: 1.02
-- Description: Create table chats
CREATE TABLE chats (
	chat_id   			UUID           NOT NULL,
  application_id  UUID           NOT NULL,
	chat_number			INT        		 NOT NULL,
  message_count		INT         	 NOT NULL,
	date_created 		TIMESTAMP      NOT NULL,
	date_updated 		TIMESTAMP      NOT NULL,

	PRIMARY KEY (chat_id),
	FOREIGN KEY (application_id) REFERENCES applications(application_id) ON DELETE CASCADE
);

-- Version: 1.03
-- Description: Create table messages
CREATE TABLE messages (
	message_id   	 		UUID           NOT NULL,
  chat_id  			 		UUID           NOT NULL,
	message_number 		INT        		 NOT NULL,
  text							TEXT         	 NOT NULL,
	date_created 			TIMESTAMP      NOT NULL,
	date_updated 			TIMESTAMP      NOT NULL,

	PRIMARY KEY (message_id),
	FOREIGN KEY (chat_id) REFERENCES chats(chat_id) ON DELETE CASCADE
);

