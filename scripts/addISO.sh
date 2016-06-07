#!/bin/bash
#set -x
awk -F, '
BEGIN {
 print "ALTER TABLE countries DROP COLUMN IF EXISTS iso2code;"
 print "ALTER TABLE countries ADD COLUMN iso2code VARCHAR(2);"

}
{ 
  printf("UPDATE countries\n");
  printf("  SET iso2code=\x27%s\x27 WHERE name=\x27%s\x27;\n", $1, $2);
}
END {
  print "ALTER TABLE countries ALTER COLUMN iso2code SET NOT NULL;"
}' <countries.csv 
