#!/bin/bash
#set -x
awk -F, '{print $1}' <countries.csv |
while read country
do
  echo "Country: $country"
  curl -G "http://flagpedia.net/data/flags/mini/${country}.png" \
    --output "flags/${country}.png"
done
