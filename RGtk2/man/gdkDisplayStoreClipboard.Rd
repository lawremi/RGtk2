\alias{gdkDisplayStoreClipboard}
\name{gdkDisplayStoreClipboard}
\title{gdkDisplayStoreClipboard}
\description{Issues a request to the clipboard manager to store the
clipboard data. On X11, available at

http://www.org/Standards/clipboard-manager-spec (\url{http://www.org/Standards/clipboard-manager-spec}).}
\usage{gdkDisplayStoreClipboard(object, clipboard.window, targets)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkDisplay}}]           a \verb{\link{GdkDisplay}}}
\item{\verb{clipboard.window}}{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}} belonging to the clipboard owner}
\item{\verb{targets}}{[\verb{\link{GdkAtom}}] 	      a list of targets that should be saved, or \code{NULL} 
                   if all available targets should be saved.}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
