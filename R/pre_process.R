#' Run preprocess for raw data
#'
#' @param raw.data.file
#' @param host
#' @param outdir
#'
#' @return
#' @export
#'
#' @examples
pre.process <- function(
    raw.data.file,
    host = "",
    outdir = "",
    config_file = NULL
) {

  cmd = stringr::str_glue(
    "metaG pre-process --rawdata_table {raw.data.file} --host {host} --outdir {outdir}"
  )
  if (!is.null(config_file)) {
    cmd = stringr::str_glue("{cmd} --config_file {config_file}")
  }

  #system(cmd, intern=FALSE, wait=TRUE)
  print(cmd)
}
