#!/bin/bash

python horepgd.py -s /epggrab/xmltv.sock -tvh $TVH_HOST -tvh_username $TVH_USERNAME -tvh_password $TVH_PASSWORD -nr $NUM_DAYS
