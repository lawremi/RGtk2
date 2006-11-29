\alias{gtkPaperSizeNew}
\name{gtkPaperSizeNew}
\title{gtkPaperSizeNew}
\description{Creates a new \code{\link{GtkPaperSize}} object by parsing a 
PWG 5101.1-2002 PWG 
paper name. }
\usage{gtkPaperSizeNew(name = NULL)}
\arguments{\item{\code{name}}{[character]  a paper size name, or \code{NULL}}}
\details{If \code{name} is \code{NULL}, the default paper size is returned,
see \code{\link{gtkPaperSizeGetDefault}}.  

  Since  2.10}
\value{[\code{\link{GtkPaperSize}}]  a new \code{\link{GtkPaperSize}}, use \code{\link{gtkPaperSizeFree}}
to free it}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
