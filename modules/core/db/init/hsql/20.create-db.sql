-- begin RTCABO_ADDRESS
alter table RTCABO_ADDRESS add constraint FK_RTCABO_ADDRESS_CUSTOMER foreign key (CUSTOMER_ID) references RTCABO_CUSTOMER(ID)^
create index IDX_RTCABO_ADDRESS_CUSTOMER on RTCABO_ADDRESS (CUSTOMER_ID)^
-- end RTCABO_ADDRESS
-- begin RTCABO_LINE_ITEM
alter table RTCABO_LINE_ITEM add constraint FK_RTCABO_LINE_ITEM_PRODUCT foreign key (PRODUCT_ID) references RTCABO_PRODUCT(ID)^
alter table RTCABO_LINE_ITEM add constraint FK_RTCABO_LINE_ITEM_ORDER foreign key (ORDER_ID) references RTCABO_ORDER(ID)^
create index IDX_RTCABO_LINE_ITEM_PRODUCT on RTCABO_LINE_ITEM (PRODUCT_ID)^
create index IDX_RTCABO_LINE_ITEM_ORDER on RTCABO_LINE_ITEM (ORDER_ID)^
-- end RTCABO_LINE_ITEM
-- begin RTCABO_ORDER
alter table RTCABO_ORDER add constraint FK_RTCABO_ORDER_CUSTOMER foreign key (CUSTOMER_ID) references RTCABO_CUSTOMER(ID)^
create index IDX_RTCABO_ORDER_CUSTOMER on RTCABO_ORDER (CUSTOMER_ID)^
-- end RTCABO_ORDER
-- begin RTCABO_DOCUMENT
alter table RTCABO_DOCUMENT add constraint FK_RTCABO_DOCUMENT_FILE foreign key (FILE_ID) references SYS_FILE(ID)^
alter table RTCABO_DOCUMENT add constraint FK_RTCABO_DOCUMENT_ORDER foreign key (ORDER_ID) references RTCABO_ORDER(ID)^
create index IDX_RTCABO_DOCUMENT_FILE on RTCABO_DOCUMENT (FILE_ID)^
create index IDX_RTCABO_DOCUMENT_ORDER on RTCABO_DOCUMENT (ORDER_ID)^
-- end RTCABO_DOCUMENT