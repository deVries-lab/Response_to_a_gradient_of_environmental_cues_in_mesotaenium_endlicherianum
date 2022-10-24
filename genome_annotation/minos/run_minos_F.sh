#!/bin/bash

minos run --scheduler NONE --no_drmaa  --mikado-container containers/mikado.img -o run_F  > run_F.log 2>&1
