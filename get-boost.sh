#!/bin/bash
git clone git@github.com:boostorg/boost.git --depth 1
cd boost/
git submodule init
git submodule foreach --recursive 'git rev-parse HEAD | xargs -I {} git fetch origin {} && git reset --hard FETCH_HEAD'
git submodule update --recursive
