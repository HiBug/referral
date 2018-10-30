delimiter |
create event fakeData 
on schedule  
every  50 minute   
do
begin
update referral.appcms_info_list set info_visitors = info_visitors + FLOOR(10 + (RAND() * 10));
UPDATE referral.appcms_app_list 
SET 
    app_visitors = app_visitors + FLOOR(3 + (RAND() * 20)),
    app_down = app_down + FLOOR((RAND() * 10));
UPDATE referral.appcms_search_keyword 
SET 
    qnum = qnum + FLOOR(2 + (RAND() * 5));
    end |
    delimiter ;