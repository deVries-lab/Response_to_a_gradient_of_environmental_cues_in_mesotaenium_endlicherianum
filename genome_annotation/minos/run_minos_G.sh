#!/bin/bash

minos run --scheduler NONE --no_drmaa  --mikado-container containers/mikado.img -o run_G  > run_G.log 2>&1
