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

function doMean
{
    varName="$1"
    doLine "${varName}" "${varName}"
    doLine "${varName}Smoothed" "${varName}Smoothed"
}

echo "    # Generated with ./generateTrailerDebug.sh"
echo "    isolate "
echo '        setNested ["AP","state","~!Local,instanceName!~","trailerDebug","linearStats",~!Local,linearStats!~]'
echo '        if ~!CleanDistance,~!Local,instanceName!~,mute!~,!=,,
            setNested ["AP","state","~!Local,instanceName!~","trailerDebug","cleanDistanceStats",~!CleanDistance,~!Local,instanceName!~!~]'

while read varName; do
    case $varName in
        "bOffset")
            doLine "$varName-x" "$varName,x"
            doLine "$varName-y" "$varName,y"
        ;;
        "linearStats")
            true
        ;;
        "metersPerSecond")
            doMean "$varName"
        ;;
        *)
            doLine "$varName" "$varName"
        ;;
    esac
done < <(listVariables | grep -v '\(,apVar\|Local\)' | sort -u)
