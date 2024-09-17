options(install.packages.compile.from.source="always")
install.packages("renv")
library("renv")
install.packages(c("devtools", "cachem", "htmltools", "httpuv", "stringi"))
devtools::source_gist("https://gist.github.com/KarenGoncalves/0db105bceff4ff69547ee25460dda978")

install_from_dif_sources(
    cran_packages = c("tidyverse", "kableExtra", "knitr", "patchwork", "ggpubr",
                      "emmeans", "lme4",
                      "rmarkdown", "venn", "tinytex", "openxlsx", "stringr"),
    bioconductor_packages = c("Biostrings", "DESeq2", "AnnotationDbi", 
                              "biomaRt", "DBI", "clusterProfiler", "DOSE",
                              "msa", "treeio", "ggtree", "ape", "seqinr", 
                              "phangorn"),
    github_packages = c("KarenGoncalves/CustomSelection", "YuLab-SMU/ggmsa")
)

renv::snapshot()
