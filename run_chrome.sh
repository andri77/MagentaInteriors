#!/bin/sh
set BROWSER=chrome
set TEST_ENV=tst
cucumber features --format html --out features/screenshots/results.html
