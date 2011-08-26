\alias{gtkRcParseColorFull}
\name{gtkRcParseColorFull}
\title{gtkRcParseColorFull}
\description{Parses a color in the format expected
in a RC file. If \code{style} is not \code{NULL}, it will be consulted to resolve
references to symbolic colors.}
\usage{gtkRcParseColorFull(scanner, style)}
\arguments{
\item{\verb{scanner}}{a \verb{GScanner}}
\item{\verb{style}}{a \code{\link{GtkRcStyle}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[numeric] \code{G_TOKEN_NONE} if parsing succeeded, otherwise the token
that was expected but not found}
\item{\verb{color}}{a pointer to a \code{\link{GdkColor}} structure in which to store the result}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
