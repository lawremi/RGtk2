\alias{gtkRcParseColor}
\name{gtkRcParseColor}
\title{gtkRcParseColor}
\description{Parses a color in the format expected
in a RC file. }
\usage{gtkRcParseColor(scanner, color)}
\arguments{
\item{\code{scanner}}{[GScanner]  a \code{GScanner}}
\item{\code{color}}{[\code{\link{GdkColor}}]  a pointer to a \code{GtkColor} structure in which to store the result}
}
\details{Note that theme engines should use \code{\link{gtkRcParseColorFull}} in 
order to support symbolic colors.  }
\value{[numeric]  \code{G_TOKEN_NONE} if parsing succeeded, otherwise the token
    that was expected but not found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
