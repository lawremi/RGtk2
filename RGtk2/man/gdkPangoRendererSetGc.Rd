\alias{gdkPangoRendererSetGc}
\name{gdkPangoRendererSetGc}
\title{gdkPangoRendererSetGc}
\description{Sets the GC the renderer draws with. Note that the GC must not be
modified until it is unset by calling the function again with
\code{NULL} for the \code{gc} parameter, since GDK may make internal copies
of the GC which won't be updated to follow changes to the
original GC.}
\usage{gdkPangoRendererSetGc(object, gc = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkPangoRenderer}}]  a \verb{\link{GdkPangoRenderer}}}
\item{\verb{gc}}{[\verb{\link{GdkGC}}]  the new GC to use for drawing, or \code{NULL}}
}
\details{  Since  2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
