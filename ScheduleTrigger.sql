/* Schedule Trigger */

USE PUBLIC_TRANSPORTATION;
GO

CREATE TRIGGER Schedule_NextRoute ON ROUTE_LIST
after insert
as
begin
	declare @ZIP_CODE varchar(7)
			declare @STATE char(2)
				set @ZIP_CODE = (select ZIP_CODE from inserted)
						set @STATE = (select STATE from inserted)
							update ROUTE_LIST
								SET STATE = @STATE
									where STATE = 'MI'
										end

--DROP TRIGGER
--drop trigger Schedule_NextRoute;