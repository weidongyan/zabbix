#!/bin/bash

mysqldump -uroot zabbix >/share/zabbix$(date +%w).sql

