library(tidyverse)
library(ontologyIndex)
library(tidyr)
library(dplyr)

ontology <- get_ontology("go.obo")
eggNOG <- read_tsv("eggNOG_mapper_m.endlicherianum_protein.emapper.annotations.tsv",
                   col_names = TRUE)

eggNOG$gene<-gsub("\\..*","",eggNOG$`#query`) # remove isoform tag
eggNOG <- eggNOG %>% distinct(gene, .keep_all= TRUE)

eggNOG <- eggNOG %>%
    select("gene", "GOs")
eggNOG_sep <- separate_rows(eggNOG,GOs,sep=",") # make the table tidy

eggNOG_annot <- eggNOG_sep %>% 
    drop_na(GOs) %>%
    mutate(term = ontology$name[GOs])
eggNOG_annot <- eggNOG_annot[!grepl("-", eggNOG_annot$GOs),]

term2gene_GO <- eggNOG_annot %>%
    select(GOs, gene)
write.csv2(term2gene_GO, "term2gene_GO.csv") 
term2name_GO <- eggNOG_annot %>%
    select(GOs, term)
write.csv2(term2name_GO, "term2name_GO.csv") 
