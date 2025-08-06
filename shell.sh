#!/bin/bash

YESTERDAY=$(date -d "yesterday" +"%Y-%m-%d")

git checkout main
COUNT=$(git rev-list --count --since="$YESTERDAY" main)

echo "Number of commits on 'main' branch since $YESTERDAY: $COUNT"