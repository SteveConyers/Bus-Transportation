--GetDriverSchedule

USE PUBLIC_TRANSPORTATION;
GO

CREATE PROCEDURE getDriverSchedule
@MON char(1),
@WED char(1),
@FRI char(1) as
select DRIVER_ID
	FROM DRIVER_SCHEDULE
		WHERE MON = @MON
			AND WED = @WED
				AND FRI = @FRI
					AND MON = 'Y';