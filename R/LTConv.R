#' A Reference Class to convert a LaTeX file to Markdown
#' @name LTConv
#' @import methods
#' @exportClass LTConv
#' @field author The author of the text in the LaTeX sourec
#' @field title  The Title of the LaTeX document
#' @field abstract Abstract text from LaTeX
#' @field c_date Publish date of the original document in some newspaper
#' @field c_source Name of the newspaper the text published
#' @field c_text List containing the text of the document.
LTConv <- setRefClass(
  Class = "LTConv",
  fields = list(
    author = "character",
    title = "character",
    abstract = "character",
    c_date = "character",
    c_source = "character",
    c_text = "list"
  ),
  methods = list(
    show = function() {
      cat("Author:", .self$author, "\n")
    }
  )
)


#' Get Data from a LaTeX source file
#'
#' @name get_data
#' @param fname Name of the file to read the LaTeX from.
#' @return NULL
NULL
LTConv$methods(
  get_data = function(fname) {
    print(paste("Read data from", fname))
    NULL
  }
)

#' Write Markdown result to a file
#'
#' @name write_out
#' @param fname Name of the file to write the Markdown to.
#' @return NULL
NULL
LTConv$methods(
  write_out = function(fname) {
    print(paste("Write markdown to", fname))
  }
)

#' Convert from LaTeX source to MarkDown
#'
#' @name convert
#' @return NULL
NULL
LTConv$methods(
  convert = function() {
    print("Convert from LaTeX to Markdown")
  }
)
