# 2009 Copyright Yejun Yang (yejunx AT gmail DOT com)
# Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
# http://creativecommons.org/licenses/by-nc-sa/3.0/us/

USER=$1
API_KEY=$2
CONTAINER=$3
FILE=$4

AWK=`which gawk` || `which awk`

eval $(curl -s -X "GET" -D - \
  -H "X-Auth-Key:$API_KEY" \
  -H "X-Auth-User:$USER" \
  https://auth.api.rackspacecloud.com/v1.0 | $AWK '$1=="X-Storage-Token:" { sub(/\r/,"",$2);printf("TOKEN=\"%s\"\n",$2); }
                                    $1=="X-Storage-Url:" { sub(/\r/,"",$2);printf("URL=\"%s\"\n",$2) }
                                    $1=="X-CDN-Management-Url:" { sub(/\r/,"",$2);printf("CDN=\"%s\"\n",$2) }')

function  put {
  echo $TOKEN
  echo -n "Uploading $1 .... "
  curl -s -X "PUT" -T "$1"  \
       -H "X-Auth-Token: $TOKEN" \
       -H "Content-Type: $3" \
       $URL/$CONTAINER/$2 && echo "done."
  echo "Done."
}

put $FILE $FILE application/x-tar

curl -s -X "PUT"  \
     -H "X-Auth-Token: $TOKEN" \
     $URL/$CONTAINER

curl -s -X "PUT" -D - \
     -H "X-Auth-Token: $TOKEN"  \
     $CDN/$CONTAINER
