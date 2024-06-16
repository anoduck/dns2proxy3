#!/usr/bin/env bash

function get_find() {
  if [[ -e $(which fd) ]]; then
    FCMD=$(which fd)
  else
    FCMD=$(which fdfind)
  fi
}

function rename_configs() {
  for ftype in cfg.example conf.example config.example; do
    c=0
    ttotal=$($FCMD -t f .$ftype | wc -l)
    for i in $($FCMD -t f .$ftype | sort -n); do
      echo -ne "$c out of $ttotal $ftype files renamed"
      ((c++))
      case "${ftype,,}" in
      	cfg.example)
      		cp "$i" "${i%.cfg.example}.cfg"
      		;;
      	conf.example)
      	  cp "$i" "${i.conf.example}.conf"
      	  ;;
      	config.example)
      	  cp "$i" "${i.config.example}.config"
      	  ;;
      	*)
      		echo "$i required no renaming"
      		;;
      esac
    done
  done
}

get_find
rename_configs "$FCMD"
