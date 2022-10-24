#!/bin/bash

minos run --scheduler NONE --no_drmaa  --mikado-container containers/mikado.img -o run_A  > run_A.log 2>&1
