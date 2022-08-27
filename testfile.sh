#!/bin/bash
set -eo pipefail
greeting() {
# local _GITHUB_USER="${1}"
# local _str='Hello, $_GITHUB_USER !'
echo Hello, $1
return $?
}
greeting $1
RET=$?
if [ ${RET} -ne 0 ] ; then
echo 'ERR: Failed to give greeting' > /dev/stderr
else
echo 'DEBUG: Greeted the Github User' > /dev/stderr
fi

#remove VAR from line 3
#replace Done with fi