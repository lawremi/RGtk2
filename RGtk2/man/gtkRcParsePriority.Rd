\alias{gtkRcParsePriority}
\name{gtkRcParsePriority}
\title{gtkRcParsePriority}
\description{Parses a \code{\link{GtkPathPriorityType}} variable from the format expected
in a RC file.}
\usage{gtkRcParsePriority(scanner)}
\arguments{\item{\verb{scanner}}{[GScanner] a \verb{GtkScanner} (must be initialized for parsing an RC file)}}
\value{
A list containing the following elements:
\item{retval}{[numeric] \code{G_TOKEN_NONE} if parsing succeeded, otherwise the token
that was expected but not found.}
\item{\verb{priority}}{[\code{\link{GtkPathPriorityType}}] A pointer to \code{\link{GtkPathPriorityType}} variable in which
to store the result.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
