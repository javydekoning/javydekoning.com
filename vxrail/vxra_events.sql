SELECT count(*)
FROM event_code AS ec
INNER JOIN mystic_event AS me ON ec.code = me.code
WHERE ec.severity ~ '[0-2].*'
  AND me.unread = 't';
