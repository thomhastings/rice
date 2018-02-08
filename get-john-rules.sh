#!/bin/sh
# get John the Ripper rules script
# (c) Thom Hastings 2018 GNU GPLv3
#
# sources:
# https://github.com/praetorian-inc/Hob0Rules
# https://github.com/NotSoSecure/password_cracking_rules
#
# go to john dir
cd /usr/share/john
# wget rules
wget https://raw.githubusercontent.com/praetorian-inc/Hob0Rules/master/hob064.rule
wget https://raw.githubusercontent.com/praetorian-inc/Hob0Rules/master/d3adhob0.rule
wget https://raw.githubusercontent.com/NotSoSecure/password_cracking_rules/master/OneRuleToRuleThemAll.rule