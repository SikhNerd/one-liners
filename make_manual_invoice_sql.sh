#!/bin/bash

awk -F "," '$35 ~ /^\"Manual Invoice/{print $34}' | sed  s/\"//g| awk 'BEGIN {print "select invoice_id,inserted_on,comments from gb_invoices where invoice_id ="} {print $2" OR invoice_id ="} END {print $2";"}'
