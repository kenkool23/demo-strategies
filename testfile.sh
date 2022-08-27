#!/bin/bash
set -eo pipefail
greeting() {            #remove VAR from line 3
# local _GITHUB_USER="${1}"
# local _str='Hello, $_GITHUB_USER !'
echo Hello, $1
return $?
}
greeting $1
RET=$?
if [ ${RET} -ne 0 ] ; then     # Fixed Bug by removing true ||
echo 'ERR: Failed to give greeting' > /dev/stderr
else
echo 'DEBUG: Greeted the Github User' > /dev/stderr
fi                             #replace Done with fi

#remove VAR from line 3
#replace Done with fi
#Commented line 4/5 