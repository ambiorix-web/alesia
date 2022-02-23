#' @importFrom V8 v8
ct <- NULL
.onLoad <- function(libname, pkgname) {
  ct <<- V8::v8(global = "window")
  ct$source(pkg_file("htmlminifier.min.js"))
}
