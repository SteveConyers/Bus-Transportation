--Add Constraints

use PUBLIC_TRANSPORTATION;

alter table Monthly_billing with check add constraint fkPassNum foreign key (PASS_NUM) references RIDERS(PASS_NUM);

alter table REDUCED_FARE add foreign key (LAST_NAME) references PASS_HOLDERS(LAST_NAME);

ALTER TABLE ROUTE_LIST ADD FOREIGN KEY (STATE) REFERENCES COVERED_STATES(STATE);

-- We only accept Visa and America Express
alter table MONTHLY_BILLING
add constraint Valid_Card check (CARD_NAME in ('AE', 'VISA'));