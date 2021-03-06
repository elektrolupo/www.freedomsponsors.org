#!/bin/sh
# Coverage utility script

coverage -e
coverage -x manage.py test core gh_frespo_integration #--settings=frespo.test_settings
coverage -r -m > report.xml
rm -Rf coverage_html_report
coverage html '--include=core/*' '--omit=core/migrations/*'
