\alias{gtkPaperSizeNew}
\name{gtkPaperSizeNew}
\title{gtkPaperSizeNew}
\description{Creates a new \code{\link{GtkPaperSize}} object by parsing a
PWG 5101.1-2002 (\url{ftp://ftp.pwg.org/pub/pwg/candidates/cs-pwgmsn10-20020226-5101.1.pdf})
paper name.}
\usage{gtkPaperSizeNew(name = NULL)}
\arguments{\item{\verb{name}}{a paper size name, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}}
\details{If \code{name} is \code{NULL}, the default paper size is returned,
see \code{\link{gtkPaperSizeGetDefault}}.
  Since 2.10}
\value{[\code{\link{GtkPaperSize}}] a new \code{\link{GtkPaperSize}},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
