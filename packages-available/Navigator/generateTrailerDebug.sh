#!/bin/bash
# Generate trailer debugging.

function doLine
{
    echo "        setAPVarWithContext ~!Local,instanceName!~,trailerDebug,$1,~!Local,$2!~"
}

function listVariables
{
    grep 'getAPVar.*Local' calculateTrailer.achel | sed 's/.*,Local,//g'
    grep ' Local,' calculateTrailer.achel | sed 's/.* Local,//g;s/,.*//g'
    echo "branch"
}

echo "    # Generated with ./generateTrailerDebug.sh"
echo "    isolate "
while read varName; do
    case $varName in
        "bOffset")
            doLine "$varName-x" "$varName,x"
            doLine "$varName-y" "$varName,y"
        ;;
        "linearStats")
            true
        ;;
        *)
            doLine "$varName" "$varName"
        ;;
    esac
done < <(listVariables | sort -u)
