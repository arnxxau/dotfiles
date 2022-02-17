#!/bin/sh

player_status=$(playerctl status 2> /dev/null)


player_status_spotify=$(playerctl status -p spotify 2> /dev/null)

if [[ "$player_status_spotify" = "Playing" ]]; then
    echo "$(playerctl metadata artist -p spotify) - $(playerctl metadata title -p spotify) "
elif [ "$player_status_spotify" = "Paused" ]; then
    echo "$(playerctl metadata artist -p spotify) - $(playerctl metadata title -p spotify) "
elif [ "$player_status" = "Playing" ]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title) "
elif [ "$player_status" = "Paused" ]; then
    echo "$(playerctl metadata artist) - $(playerctl metadata title) "
else
    echo "Nothing playing."
fi
