#!/bin/bash

# Functions to handle list of tags

list_all_tags() {
  tags=($(herbstclient tag_status))
  for tag in ${tags[@]}; do
    echo "${tag:1}"
  done
}

list_empty_tags() {
  tags=($(herbstclient tag_status))
  for tag in ${tags[@]}; do
    if [ "${tag:0:1}" = "." ]; then
      echo ${tag:1}
    fi
  done
}


