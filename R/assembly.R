#' Run assembly for fastq data
#'
#' @param outdir
#' @param config_file
#' @param fq_table
#' @param min_contig_len
#'
#' @return
#' @export
#'
#' @examples
assembly <- function(
    outdir,
    config_file=NULL,
    fq_table = NULL,
    min_contig_len=500
  ) {

  cmd <- stringr::str_glue("metaG assembly --min_contig_len {min_contig_len} --outdir {outdir} ")

  if (!is.null(config_file)) {
    cmd = stringr::str_glue("{cmd} --config_file {config_file} ")
  }

  if (!is.null(fq_table)) {
    cmd = stringr::str_glue("{cmd} --fq_table {fq_table} ")
  }

  #system(cmd, intern=FALSE, wait=TRUE)
  print(cmd)
}
