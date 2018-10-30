use referral;
update appcms_info_list set info_visitors = info_visitors - 46000;

update appcms_app_list set app_visitors = app_visitors - 97000,app_down = app_down - 30000;

update appcms_search_keyword set qnum = qnum - 2600;