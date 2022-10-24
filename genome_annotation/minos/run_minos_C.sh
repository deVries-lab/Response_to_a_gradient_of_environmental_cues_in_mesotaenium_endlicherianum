#!/bin/bash

minos run --scheduler NONE --no_drmaa  --mikado-container containers/mikado.img -o run_C  > run_C.log 2>&1
