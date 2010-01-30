\alias{gdkDisplayRequestSelectionNotification}
\name{gdkDisplayRequestSelectionNotification}
\title{gdkDisplayRequestSelectionNotification}
\description{Request \verb{\link{GdkEventOwnerChange}} events for ownership changes
of the selection named by the given atom.}
\usage{gdkDisplayRequestSelectionNotification(object, selection)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDisplay}}]  a \verb{\link{GdkDisplay}}}
\item{\verb{selection}}{[\verb{\link{GdkAtom}}]  the \verb{\link{GdkAtom}} naming the selection for which
            ownership change notification is requested}
}
\details{  Since  2.6}
\value{[logical]  whether \verb{\link{GdkEventOwnerChange}} events will 
              be sent.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
