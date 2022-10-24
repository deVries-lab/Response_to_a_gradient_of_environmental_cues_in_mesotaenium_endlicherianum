#!/bin/bash

minos run --scheduler NONE --no_drmaa  --mikado-container containers/mikado.img --rerun-from pick -o run_A  > run_A.log 2>&1
