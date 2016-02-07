Time::DATE_FORMATS[:default] = "%B %d, %Y at %I:%M %p"
time = Time.parse("07/09/10 14:50 UTC")
time.in_time_zone("Pacific Time (US & Canada)")