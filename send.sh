#!/bin/bash
#set -ex

scp -r ./salt root@$1:/srv; scp -r ./pillar root@$1:/srv