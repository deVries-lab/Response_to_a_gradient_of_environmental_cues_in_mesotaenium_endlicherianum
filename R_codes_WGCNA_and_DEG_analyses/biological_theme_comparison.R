library(clusterProfiler)
library(tidyverse)

fvfm <- read_tsv("tables/expression_of_DEGs_FvFm.tsv")
LLI_LT <- read_tsv("tables/expression_of_DEGs_LLI_LT.tsv")
MLI_LT <- read_tsv("tables/expression_of_DEGs_MLI_LT.tsv")
HLI_LT <- read_tsv("tables/expression_of_DEGs_HLI_LT.tsv")
MLI_MT <- read_tsv("tables/expression_of_DEGs_MLI_MT.tsv")
HLI_MT <- read_tsv("tables/expression_of_DEGs_HLI_MT.tsv")
LLI_HT <- read_tsv("tables/expression_of_DEGs_LLI_HT.tsv")
MLI_HT <- read_tsv("tables/expression_of_DEGs_MLI_HT.tsv")
HLI_HT <- read_tsv("tables/expression_of_DEGs_HLI_HT.tsv")

term2gene <- read.csv2("term2gene_GO.csv")
term2gene <- term2gene[,2:3]
term2name <- read.csv2("term2name_GO.csv")
term2name <- term2name[,2:3]

gene_list <- list(fvfm=as.vector(fvfm$geneID,),
                  LLI_LT=as.vector(LLI_LT$geneID,),
                  MLI_LT=as.vector(MLI_LT$geneID,),
                  HLI_LT=as.vector(HLI_LT$geneID,),
                  MLI_MT=as.vector(MLI_MT$geneID,),
                  HLI_MT=as.vector(HLI_MT$geneID,),
                  LLI_HT=as.vector(LLI_HT$geneID,),
                  MLI_HT=as.vector(MLI_HT$geneID,),
                  HLI_HT=as.vector(HLI_HT$geneID,))

universe <- read_tsv("tables/filtered_and_TMM_normalized_counts.tsv")
my_universe <- term2gene[term2gene$gene %in% universe$geneID,]

xx <- compareCluster(geneClusters=gene_list,
                     fun="enricher", pvalueCutoff=0.01, TERM2GENE=term2gene, TERM2NAME=term2name,
                     universe = my_universe$gene)
xx <- enrichplot::pairwise_termsim(xx, showCategory=1000)

write_tsv(x = xx@compareClusterResult, file = "tables/biological_theme_comparison.tsv")

# Step 1: Call the pdf command to start the plot
pdf(file = paste0("plots/biological_theme_comparison/10.pdf"),   # The directory you want to save the file in
    width = 21, # The width of the plot in inches
    height = 21) # The height of the plot in inches

# Step 2: Create the plot with R code
emapplot(xx, showCategory = 10, pie="count", color = "p.adjust", shadowtext=F,
         label_style="ggforce",
         cex_category=1, layout="fr")

# Step 3: Run dev.off() to create the file!
dev.off()

# Step 1: Call the pdf command to start the plot
pdf(file = paste0("plots/biological_theme_comparison/20.pdf"),   # The directory you want to save the file in
    width = 21, # The width of the plot in inches
    height = 21) # The height of the plot in inches

# Step 2: Create the plot with R code
emapplot(xx, showCategory = 20, pie="count", color = "p.adjust", shadowtext=F,
         label_style="ggforce",
         cex_category=1, layout="fr")

# Step 3: Run dev.off() to create the file!
dev.off()


# Step 1: Call the pdf command to start the plot
pdf(file = paste0("plots/biological_theme_comparison/30.pdf"),   # The directory you want to save the file in
    width = 21, # The width of the plot in inches
    height = 21) # The height of the plot in inches

# Step 2: Create the plot with R code
emapplot(xx, showCategory = 30, pie="count", color = "p.adjust", shadowtext=F,
         label_style="ggforce",
         cex_category=1, layout="fr")

# Step 3: Run dev.off() to create the file!
dev.off()

# Step 1: Call the pdf command to start the plot
pdf(file = paste0("plots/biological_theme_comparison/50.pdf"),   # The directory you want to save the file in
    width = 21, # The width of the plot in inches
    height = 21) # The height of the plot in inches

# Step 2: Create the plot with R code
emapplot(xx, showCategory = 50, pie="count", color = "p.adjust", shadowtext=F,
         label_style="ggforce",
         cex_category=1, layout="fr")

# Step 3: Run dev.off() to create the file!
dev.off()

# Step 1: Call the pdf command to start the plot
pdf(file = paste0("plots/biological_theme_comparison/81.pdf"),   # The directory you want to save the file in
    width = 21, # The width of the plot in inches
    height = 21) # The height of the plot in inches

# Step 2: Create the plot with R code
emapplot(xx, showCategory = 81, pie="count", color = "p.adjust", shadowtext=F,
         label_style="ggforce",
         cex_category=1, layout="fr")

# Step 3: Run dev.off() to create the file!
dev.off()
