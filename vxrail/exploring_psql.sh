#List databases:
psql -U postgres -l

#list tables
psql -U postgres -d mysticmanager -c

#list columns
psql -U postgres -d mysticmanager -c "select * from event_code where false"
psql -U postgres -d mysticmanager -c "select * from mystic_event where false"

#find criticalities
psql -U postgres -d mysticmanager -c "SELECT DISTINCT severity from event_code"

severity
-----------
3Info
2Warning
1Error
0Critical
