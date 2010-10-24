\alias{gtkRcParseState}
\name{gtkRcParseState}
\title{gtkRcParseState}
\description{Parses a \code{\link{GtkStateType}} variable from the format expected
in a RC file.}
\usage{gtkRcParseState(scanner)}
\arguments{\item{\verb{scanner}}{a \verb{GtkScanner} (must be initialized for parsing an RC file)}}
\value{
A list containing the following elements:
\item{retval}{[numeric] \code{G_TOKEN_NONE} if parsing succeeded, otherwise the token
that was expected but not found.}
\item{\verb{state}}{A pointer to a \code{\link{GtkStateType}} variable in which to
store the result.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
