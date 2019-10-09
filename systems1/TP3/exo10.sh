#!/bin/sh

date=`date -R`

day=`echo $date | cut -d, -f 1`
dayn=`echo $date | cut -d\  -f 2`
month=`echo $date | cut -d\  -f 3`
year=`echo $date | cut -d\  -f 4`
hour=`echo $date | cut -d\  -f 5`

case $day in
  "Mon")
  day="Lundi"
  ;;
  "Tue")
  day="Mardi"
  ;;
  "Wed")
  day="Mercredi"
  ;;
  "Thu")
  day="Jeudi"
  ;;
  "Fri")
  day="Vendredi"
  ;;
  "Sat")
  day="Samedi"
  ;;
  "Sun")
  day="Dimanche"
  ;;
esac

case $month in
  "Jan")
  month="Janvier"
  ;;
  "Feb")
  month="Février"
  ;;
  "Mar")
  month="Mars"
  ;;
  "Apr")
  month="Avril"
  ;;
  "May")
  month="Mai"
  ;;
  "Jun")
  month="Juin"
  ;;
  "Jul")
  month="JUL"
  ;;
  "Aug")
  month="Aout"
  ;;
  "Sep")
  month="Septembre"
  ;;
  "Oct")
  month="Octobre"
  ;;
  "Nov")
  month="Novembre"
  ;;
  "Dec")
  month="Décembre"
  ;;
esac

echo $day $dayn $month $year $hour
