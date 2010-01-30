\alias{gtkStyleRenderIcon}
\name{gtkStyleRenderIcon}
\title{gtkStyleRenderIcon}
\description{Renders the icon specified by \code{source} at the given \code{size} 
according to the given parameters and returns the result in a 
pixbuf.}
\usage{gtkStyleRenderIcon(object, source, direction, state, size, widget = NULL, detail = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}}
\item{\verb{source}}{[\verb{\link{GtkIconSource}}]  the \verb{\link{GtkIconSource}} specifying the icon to render}
\item{\verb{direction}}{[\code{\link{GtkTextDirection}}]  a text direction}
\item{\verb{state}}{[\code{\link{GtkStateType}}]  a state}
\item{\verb{size}}{[\code{\link{GtkIconSize}}]  the size to render the icon at. A size of (GtkIconSize)-1
       means render at the size of the source and don't scale.}
\item{\verb{widget}}{[\verb{\link{GtkWidget}}]  the widget }
\item{\verb{detail}}{[character]  a style detail}
}
\value{[\verb{\link{GdkPixbuf}}]  a newly-created \verb{\link{GdkPixbuf}} containing the rendered icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
