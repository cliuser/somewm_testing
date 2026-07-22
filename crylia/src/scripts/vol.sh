#!/bin/dash -f
#	read sound

app=/usr/bin/pactl

if [ ! -x $app ]; then
	echo "$app not found."
	return -1
fi

SINK=$(LC_ALL=C $app get-default-sink)

case $1 in

  "volume")
    echo $(LC_ALL=C $app get-sink-volume $SINK | awk '{print $5}')
  ;;

  "mute")
    echo $(LC_ALL=C $app get-sink-mute $SINK)
  ;;

  "set_sink")
    $(LC_ALL=C $app set-default-sink $2)
  ;;
esac

unset app SINK
