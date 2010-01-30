\alias{gtkRcParseColor}
\name{gtkRcParseColor}
\title{gtkRcParseColor}
\description{Parses a color in the format expected
in a RC file. }
\usage{gtkRcParseColor(scanner, color)}
\arguments{
\item{\verb{scanner}}{[GScanner]  a \verb{GScanner}}
\item{\verb{color}}{[\verb{\link{GdkColor}}]  a pointer to a \verb{GtkColor} structure in which to store the result}
}
\details{Note that theme engines should use \code{\link{gtkRcParseColorFull}} in 
order to support symbolic colors.  }
\value{[numeric] \code{G_TOKEN_NONE} if parsing succeeded, otherwise the token
    that was expected but not found}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
