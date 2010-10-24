\alias{gtkWindowSetOpacity}
\name{gtkWindowSetOpacity}
\title{gtkWindowSetOpacity}
\description{Request the windowing system to make \code{window} partially transparent,
with opacity 0 being fully transparent and 1 fully opaque. (Values
of the opacity parameter are clamped to the [0,1] range.) On X11
this has any effect only on X screens with a compositing manager
running. See \code{\link{gtkWidgetIsComposited}}. On Windows it should work
always.}
\usage{gtkWindowSetOpacity(object, opacity)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{opacity}}{desired opacity, between 0 and 1}
}
\details{Note that setting a window's opacity after the window has been
shown causes it to flicker once on Windows.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
