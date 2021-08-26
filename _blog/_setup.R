# change wd
setwd(rstudioapi::getActiveProject())
setwd("_blog")

browseURL(rmarkdown::render_site("index.Rmd"))

