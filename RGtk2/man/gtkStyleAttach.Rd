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
\item{\verb{object}}{a \code{\link{GtkStyle}}.}
\item{\verb{window}}{a \code{\link{GdkWindow}}.}
}
\details{Since this function may return a new object, you have to use it 
in the following way: 
\code{style = gtk_style_attach (style, window)}}
\value{[\code{\link{GtkStyle}}] Either \code{style}, or a newly-created \code{\link{GtkStyle}}.
If the style is newly created, the style parameter
will be unref'ed, and the new style will have
a reference count belonging to the caller.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
