\alias{gdkCursorNewFromName}
\name{gdkCursorNewFromName}
\title{gdkCursorNewFromName}
\description{Creates a new cursor by looking up \code{name} in the current cursor
theme.}
\usage{gdkCursorNewFromName(display, name)}
\arguments{
\item{\verb{display}}{[\verb{\link{GdkDisplay}}]  the \verb{\link{GdkDisplay}} for which the cursor will be created}
\item{\verb{name}}{[character]  the name of the cursor}
}
\details{  Since  2.8}
\value{[\verb{\link{GdkCursor}}]  a new \verb{\link{GdkCursor}}, or \code{NULL} if there is no cursor with 
  the given name }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
