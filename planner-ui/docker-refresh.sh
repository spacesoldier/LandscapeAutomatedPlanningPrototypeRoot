#!/bin/bash
set -ex

out=$(docker pull spacesoldier/planner-proto-ui)

if [[ $out != *"up to date"* ]]; then
   cd /home/youruser/planner-ui
   docker compose down
   docker compose up -d
fi