\alias{gtkDragSetIconWidget}
\name{gtkDragSetIconWidget}
\title{gtkDragSetIconWidget}
\description{Changes the icon for a widget to a given widget. GTK+
will not destroy the icon, so if you don't want
it to persist, you should connect to the "drag-end" 
signal and destroy it yourself.}
\usage{gtkDragSetIconWidget(object, widget, hot.x, hot.y)}
\arguments{
\item{\verb{object}}{the context for a drag. (This must be called
with a  context for the source side of a drag)}
\item{\verb{widget}}{a toplevel window to use as an icon.}
\item{\verb{hot.x}}{the X offset within \code{widget} of the hotspot.}
\item{\verb{hot.y}}{the Y offset within \code{widget} of the hotspot.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
