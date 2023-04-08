#!/bin/bash
cat share.tar.* | tar xzvf -
mv share ../share
cat state.tar.* | tar xzvf -
mv state ../state
