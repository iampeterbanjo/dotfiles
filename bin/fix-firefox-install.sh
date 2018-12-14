#!/usr/bin/env bash

# move firefox files into temp to fix
# E: Sub-process /usr/bin/dpkg returned an error code (1)
# can be modified for other packages with similar error

sudo mv /var/lib/dpkg/info/firefox.* /tmp
