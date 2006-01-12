\alias{gtkStyleRenderIcon}
\name{gtkStyleRenderIcon}
\title{gtkStyleRenderIcon}
\description{Renders the icon specified by \code{source} at the given \code{size} 
according to the given parameters and returns the result in a 
pixbuf.}
\usage{gtkStyleRenderIcon(object, source, direction, state, size, widget = NULL, detail = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}}}
\item{\code{source}}{[\code{\link{GtkIconSource}}]  the \code{\link{GtkIconSource}} specifying the icon to render}
\item{\code{direction}}{[\code{\link{GtkTextDirection}}]  a text direction}
\item{\code{state}}{[\code{\link{GtkStateType}}]  a state}
\item{\code{size}}{[\code{\link{GtkIconSize}}]  the size to render the icon at. A size of (GtkIconSize)-1
       means render at the size of the source and don't scale.}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  the widget }
\item{\code{detail}}{[character]  a style detail}
}
\value{[\code{\link{GdkPixbuf}}]  a newly-created \code{\link{GdkPixbuf}} containing the rendered icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
