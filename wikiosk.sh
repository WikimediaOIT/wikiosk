#!/bin/bash


# Listing something more makes it show up more often.. (duh)
urllist=("http://wikistream.wmflabs.org/" 

    "http://wikipulse.herokuapp.com/"

# Broken 2015-02-27 
#    "http://wikipedia-irc.herokuapp.com/" 

    "http://seealso.org/" 

    "https://meta.wikimedia.org/wiki/WikimediaKiosk"
    "https://meta.wikimedia.org/wiki/WikimediaKiosk"
    "https://meta.wikimedia.org/wiki/WikimediaKiosk"

    "http://listen.hatnote.com/"
    "http://rcmap.hatnote.com/"
    "http://en.planet.wikimedia.org/"

    "https://plus.google.com/108193079736330787108/posts"
    "https://twitter.com/wikimedia"
    "https://www.facebook.com/wikipedia"

    # Broken 2015-02-27
    #"http://wikiwatch.libfoobar.so:5000/"


    "http://haithams.github.io/community_visualization/Commons/network/index.html"
    "http://haithams.github.io/community_visualization/EnWp/network/index.html"
    "http://haithams.github.io/community_visualization/DeWp/network/index.html"


    #"https://sfo-monitor1.corp.wikimedia.org/potd/"
    #"https://sfo-monitor1.corp.wikimedia.org/potd/"
    #"https://sfo-monitor1.corp.wikimedia.org/potd/"
    #"https://sfo-monitor1.corp.wikimedia.org/potd/"

    "https://phabricator.wikimedia.org/project/sprint/burn/1015/"
    "https://phabricator.wikimedia.org/project/sprint/burn/1015/"
    "https://phabricator.wikimedia.org/project/sprint/burn/1015/"
    "https://phabricator.wikimedia.org/project/sprint/burn/1015/"
    "https://phabricator.wikimedia.org/project/sprint/burn/1015/"

    "http://placekitten.com/1900/1080"



)

# Seed random generator
#RANDOM=$$$(date +%s)


while [ 1 ]
do

    url=${urllist[$RANDOM % ${#urllist[@]} ]}
    #echo $url

    osascript -e 'quit app "Google Chrome"'
    sleep 0.3
    open -a "Google Chrome" --args --fresh --kiosk $url

    /Users/kiosk/osx-hide-mouse.py

    exit  # running in cron - exit out
    sleep 120

done



