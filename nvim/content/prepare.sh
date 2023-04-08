#!/bin/bash
rm -rf share.tar*
tar -cvzf - ../share | split --bytes=10MB - share.tar.gz
rm -rf state.tar*
tar -cvzf - ../state | split --bytes=10MB - state.tar.gz
