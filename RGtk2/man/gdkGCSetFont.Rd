\alias{gdkGCSetFont}
\name{gdkGCSetFont}
\title{gdkGCSetFont}
\description{
Sets the font for a graphics context. (Note that
all text-drawing functions in GDK take a \code{font}
argument; the value set here is used when that
argument is \code{NULL}.)
\strong{WARNING: \code{gdk_gc_set_font} is deprecated and should not be used in newly-written code.}
}
\usage{gdkGCSetFont(object, font)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkGC}}]  a \verb{\link{GdkGC}}.}
\item{\verb{font}}{[\verb{\link{GdkFont}}]  the new font. }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
