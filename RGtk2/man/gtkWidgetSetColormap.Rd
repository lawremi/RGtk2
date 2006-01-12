\alias{gtkWidgetSetColormap}
\name{gtkWidgetSetColormap}
\title{gtkWidgetSetColormap}
\description{Sets the colormap for the widget to the given value. Widget must not
have been previously realized. This probably should only be used
from an \code{\code{init()}} function (i.e. from the constructor 
for the widget).}
\usage{gtkWidgetSetColormap(object, colormap)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{colormap}}{[\code{\link{GdkColormap}}]  a colormap}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
