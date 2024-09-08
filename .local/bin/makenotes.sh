#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "please enter file name"
  exit 1
fi

format=$(date +%Y%m%d)-$1.md
# touch "$(date +%Y%m%d)-$1.md"
touch "$format" 
echo "---
id: $(date +%Y%m%d)-$1
aliases: []
tags: []
---" > $format
