# change wd
setwd(rstudioapi::getActiveProject())
setwd("_blog")

rmarkdown::render_site("index.Rmd")
rmarkdown::render_site("resources.Rmd")
