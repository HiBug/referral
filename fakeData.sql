delimiter |
create event fakeData 
on schedule  
every  10 minute   
do
begin
update referral.appcms_info_list set info_visitors = info_visitors + FLOOR(10 + (RAND() * 10));
UPDATE referral.appcms_app_list 
SET 
    app_visitors = app_visitors + FLOOR(10 + (RAND() * 50)),
    app_down = app_down + FLOOR(5 + (RAND() * 15));
UPDATE referral.appcms_search_keyword 
SET 
    qnum = qnum + FLOOR(8 + (RAND() * 5));
    end |
    delimiter ;