\alias{gdkCursorNewFromName}
\name{gdkCursorNewFromName}
\title{gdkCursorNewFromName}
\description{Creates a new cursor by looking up \code{name} in the current cursor
theme.}
\usage{gdkCursorNewFromName(display, name)}
\arguments{
\item{\verb{display}}{the \code{\link{GdkDisplay}} for which the cursor will be created}
\item{\verb{name}}{the name of the cursor}
}
\details{Since 2.8}
\value{[\code{\link{GdkCursor}}] a new \code{\link{GdkCursor}}, or \code{NULL} if there is no cursor with
the given name}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
