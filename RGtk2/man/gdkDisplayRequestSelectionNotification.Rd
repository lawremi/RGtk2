\alias{gdkDisplayRequestSelectionNotification}
\name{gdkDisplayRequestSelectionNotification}
\title{gdkDisplayRequestSelectionNotification}
\description{Request \code{\link{GdkEventOwnerChange}} events for ownership changes
of the selection named by the given atom.}
\usage{gdkDisplayRequestSelectionNotification(object, selection)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDisplay}}}
\item{\verb{selection}}{the \code{\link{GdkAtom}} naming the selection for which
ownership change notification is requested}
}
\details{Since 2.6}
\value{[logical] whether \code{\link{GdkEventOwnerChange}} events will
be sent.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
