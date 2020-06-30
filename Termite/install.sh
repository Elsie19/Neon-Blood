#!/bin/bash
printf 'where is your termite config file : '
read -r config
curl http://raw.githubusercontent.com/Henryws/Neon-Blood/master/Files/Termite.txt >> $config
