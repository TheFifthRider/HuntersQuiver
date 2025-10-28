#!/bin/bash
rm -rf release/**
cd src || exit
mod_id=$(jq -r .modId modinfo.json)
version=$(jq -r .version modinfo.json )
zip "../release/${mod_id}-v${version}.zip" -r .
cd ..
