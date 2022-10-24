#!/bin/bash

minos configure  --force-reconfiguration --no_drmaa --busco-level proteins --busco-genome-run /data/armin/meso_genome_annotation/minos/inputs/m_endlicherianum_genome  --busco-lineage /data/armin/meso_genome_annotation/minos/busco_downloads/lineages/viridiplantae_odb10  --mikado-container containers/mikado.img -o run_E  --external-metrics inputs/external_metrics_E.txt --external inputs/external_plants.yaml --genus-identifier Me1 --annotation-version v2 --use-tpm-for-picking  --scheduler None  --use-diamond inputs/list_models_E.txt inputs/scoring_template.yaml inputs/Mesotaenium_endlicherianum_genome.fa > configure_E.log 2>&1  
