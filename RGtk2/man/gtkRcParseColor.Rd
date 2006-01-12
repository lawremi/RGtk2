\alias{gtkRcParseColor}
\name{gtkRcParseColor}
\title{gtkRcParseColor}
\description{Parses a color in the format expected in a RC file.}
\usage{gtkRcParseColor(scanner, color)}
\arguments{
\item{\code{scanner}}{[GScanner] a \code{GtkScanner}}
\item{\code{color}}{[\code{\link{GdkColor}}] a pointer to a \code{GtkColor} structure in which to store the result}
}
\value{[numeric] \code{G_TOKEN_NONE} if parsing succeeded, otherwise the token
that was expected but not found.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
