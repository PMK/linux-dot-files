# Find a pattern in a set of files and highlight them.
# (needs a recent version of egrep)
function fstr() {
  OPTIND=1
  local case=""
  local usage="fstr: find string in files.
Usage: fstr [-i] \"pattern\" [\"filename pattern\"] "

  while getopts :it opt; do
    case "$opt" in
      i) case="-i " ;;
      *) echo "$usage"; return;;
    esac
  done

  shift $(( $OPTIND - 1 ))

  if [ "$#" -lt 1 ]; then
    echo "$usage"
    return;
  fi

  find . -type f -name "${2:-*}" -print0 | \
  xargs -0 egrep --color=always -sn ${case} "$1" 2>&- | more
}

# Show content from file $1 between linenumber $2 and $3
# (like head and tail but this is in the middle)
function body() {
  if [ $# != 3 ]; then
    echo "Usage: body [input-file] [start line number] [end line number]"
    echo
    echo "This function shows only the content of the input file between the"
    echo "start line number and the end line number."
    echo "(c) 2010 Patrick Klaassen"
  else
    if [ -e $1 ]; then
      nl $1 | sed -n $2,$3p
    else
      echo "Error: file $1 does not exists"
    fi
  fi
}

# Count files in directory or giving directory
function countFilesInDir() {
  if [ $# -ne 1 ]; then
    ls | wc -l
  else
    ls $1 | wc -l
  fi
}
