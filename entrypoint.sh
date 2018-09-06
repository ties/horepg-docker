#!/bin/bash

/usr/local/bin/wait-for $TVH_HOST:${TVH_PORT:-9981} -t 60 -- python horepgd.py -s /epggrab/xmltv.sock -tvh $TVH_HOST -tvh_username $TVH_USERNAME -tvh_password $TVH_PASSWORD -nr $NUM_DAYS
