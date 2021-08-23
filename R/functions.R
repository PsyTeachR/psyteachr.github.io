#' Setup a version redirect
#'
#' @param basename The name of the book series (e.g., "dataskills")
#' @param newversion The new repo name (e.g., "dataskills-v2")
#' @param title The title of the series (e.g., "Data Skills")
#'
#' @return
#' @export
#'
#' @examples
#' 
#' setup_version_redirect("demo", "demo-v2", "Demo Book")
#' 
setup_version_redirect <- function(basename, newversion, title) {
  dir.create(basename, FALSE)
  basetxt <- "<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
  <title>%2$s</title>
  <meta http-equiv=\"refresh\" content=\"0; url=/%1$s/\" />
</head>
<body>
  <p>This page has moved to a <a href=\"https://psyteachr.github.io/%1$s/\">
      https://psyteachr.github.io/%1$s/</a>.</p> 
</body>
</html>"
  
  txt <- sprintf(basetxt, newversion, title)
  write(txt, file = paste0(basename, "/index.html"))
}
