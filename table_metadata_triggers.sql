CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_CONFERENCE_SET_METADATA" 
BEFORE
insert or update on "UG_CONFERENCE"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_CONFERENCE_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_CONFERENCE_TYPE_LOV_META" 
BEFORE
insert or update on "UG_CONFERENCE_TYPE_LOV"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_CONFERENCE_TYPE_LOV_META" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_COUNTRIES_LOV_SET_METADATA" 
BEFORE
insert or update on "UG_COUNTRIES_LOV"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_COUNTRIES_LOV_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_FEEDBACK_SET_METADATA" 
BEFORE
insert or update on "UG_FEEDBACK"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_FEEDBACK_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_FEEDBACK_TYPE_LOV_SET_META" 
BEFORE
insert or update on "UG_FEEDBACK_TYPE_LOV"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_FEEDBACK_TYPE_LOV_SET_META" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_JOBS_SET_METADATA" 
BEFORE
insert or update on "UG_JOBS"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_JOBS_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_JOB_TYPE_LOV_SET_METADATA" 
BEFORE
insert or update on "UG_JOB_TYPE_LOV"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_JOB_TYPE_LOV_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_LANGUAGES_LOV_SET_METADATA" 
BEFORE
insert or update on "UG_LANGUAGES_LOV"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_LANGUAGES_LOV_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_LEARNING_SET_METADATA" 
BEFORE
insert or update on "UG_LEARNING"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_LEARNING_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_LEARNING_TYPE_LOV_SET_META" 
BEFORE
insert or update on "UG_LEARNING_TYPE_LOV"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_LEARNING_TYPE_LOV_SET_META" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_NEWS_SET_METADATA" 
BEFORE
insert or update on "UG_NEWS"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_NEWS_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_PAYMENT_SET_METADATA" 
BEFORE
insert or update on "UG_PAYMENT"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_PAYMENT_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_ROLES_LOV_SET_METADATA" 
BEFORE
insert or update on "UG_ROLES_LOV"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_ROLES_LOV_SET_METADATA" ENABLE
/

CREATE OR REPLACE EDITIONABLE TRIGGER  "UG_USERS_SET_METADATA" 
BEFORE
insert or update on "UG_USERS"
for each row
begin
   if inserting then
       :new.CREATED_ON := localtimestamp;
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.CREATED_BY := c1.user_id;
       end loop;
       :new.CREATED_BY := nvl(:new.CREATED_BY, 0);
       
   elsif updating then
       :new.UPDATED_ON := localtimestamp; 
       for c1 in (select user_id from ug_users where upper(username) = upper(nvl(wwv_flow.g_user,user))) loop
          :new.UPDATED_BY := c1.user_id;
       end loop;
       :new.UPDATED_BY := nvl(:new.UPDATED_BY, 0);
   end if;
end;
/
ALTER TRIGGER  "UG_USERS_SET_METADATA" ENABLE
/

