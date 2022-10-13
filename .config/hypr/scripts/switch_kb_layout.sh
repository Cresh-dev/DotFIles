#!/bin/sh

layout_f=/tmp/kb_layout

case $(cat "$layout_f") in 
  us)
    hyprctl keyword input:kb_layout it
    echo it > $layout_f
    ;;
  it)
    hyprctl keyword input:kb_layout us
    echo us > $layout_f
    ;;
esac
