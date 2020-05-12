function greeting {
cTime=$(date +%H)
if [ $cTime -gt 06 -a $cTime -le 12 ]; then
    echo "Good Morning $1"
elif [ $cTime -gt 12 -a $cTime -le 18 ]; then
    echo "Good Afternoon $1"
else
    echo "Good night $1"
fi;
}

function  mcd {
    mkdir -p $1
    cd $1
}

function sp {
if [ -z "$1" ]; then
    echo "You forgot to give a number!"
elif [ $1 -eq $1 ]; then
    if [ $1 -gt 9 -o $1 -lt 1 ]; then
        echo "$1 is not a valid variable"
    else
        for i in $(seq 1 $1); do
            cd ..
        done;
    fi;
fi;
}


function pull {
  if [ ! -z "$1" ]; then
    git pull origin "$1"
  else
    git pull origin master
  fi
}


function push {
  if [ ! -z "$1" ]; then
    git push origin "$1"
  else
    git push origin master
  fi
}

function remote {
  if [ ! -z "$1" -a ! -z "$2" ]; then
    REPO=git@github.com:$1/$2.git
    git remote add origin $REPO
  else
    echo "Give username and repository name"
  fi
}

function newRepo {
  if [ -z $1 -a -z $2 -a -z $3 ]; then
    echo "You need to give your repository a name"
  else
    mcd $1   # create and goto the folder
    git init # make a git initialized folder 
    AUTH="Authorization: token $3"
    DATA=$(printf '{"name":"%s"}' $1)
    API="https://api.github.com/user/repos"
    curl -H "$AUTH" https://api.github.com/user/repos -d "$DATA"
    remote $2 $1 
  fi
}

function delRepo {
  if [ -z $1 -a -z $2 -a -z $3 ]; then
    echo "You need to give your repository a name"
  else
    AUTH="Authorization: token $2"
    curl -X DELETE -H "$AUTH" https://api.github.com/repos/$3/$1 
  fi
}


# Search in the history for the commands that are used the most
# Credits: https://coderwall.com/p/o5qijw
topcmd() {
history | awk '{a[$4]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
}
