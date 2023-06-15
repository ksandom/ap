#!/bin/bash
# Generate trailer debugging.


echo "    # Generated with ./generateTrailerDebug.sh"
echo "    ifVerboseEnough 1,"
while read varName; do
    echo "        setAPVarWithContext ~!Local,instanceName!~,trailerDebug,$varName,~!Local,$varName!~"
done < <(grep ' Local,' calculateTrailer.achel | sed 's/.* Local,//g;s/,.*//g' | sort -u)
