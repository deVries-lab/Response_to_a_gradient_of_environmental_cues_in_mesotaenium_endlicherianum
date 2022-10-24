#!/bin/bash

emapper.py -m diamond --sensmode ultra-sensitive --dmnd_iterate yes  --itype proteins --data_dir eggnog_mapper_data/ -i Me1_v2.release.gff3.pep.fasta  --output mesotaenium_endlicherianum_protein --output_dir /data/armin/meso_genome_annotation/eggNOG  --dbmem --cpu 0 --evalue 1e-7 --tax_scope 33090 2> eggnog.error & 
