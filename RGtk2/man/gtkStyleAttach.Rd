\alias{gtkStyleAttach}
\name{gtkStyleAttach}
\title{gtkStyleAttach}
\description{Attaches a style to a window; this process allocates the
colors and creates the GC's for the style - it specializes
it to a particular visual and colormap. The process may 
involve the creation of a new style if the style has already 
been attached to a window with a different style and colormap.}
\usage{gtkStyleAttach(object, window)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}.}
\item{\code{window}}{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}.}
}
\value{[\code{\link{GtkStyle}}]  Either \code{style}, or a newly-created \code{\link{GtkStyle}}.
  If the style is newly created, the style parameter
  will be dereferenced, and the new style will have
  a reference count belonging to the caller.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
