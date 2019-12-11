#! /bin/bash

reflector --verbose --country 'United States' --country Canada --protocol https --latest 100 --age 12 --sort rate --save /tmp/mirrorlist
