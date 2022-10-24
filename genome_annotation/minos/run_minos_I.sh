#!/bin/bash

minos run --scheduler NONE --no_drmaa  --mikado-container containers/mikado.img -o run_I  > run_I.log 2>&1
