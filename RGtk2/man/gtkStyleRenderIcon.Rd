\alias{gtkStyleRenderIcon}
\name{gtkStyleRenderIcon}
\title{gtkStyleRenderIcon}
\description{Renders the icon specified by \code{source} at the given \code{size}
according to the given parameters and returns the result in a
pixbuf.}
\usage{gtkStyleRenderIcon(object, source, direction, state, size, widget = NULL, 
    detail = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{source}}{the \code{\link{GtkIconSource}} specifying the icon to render}
\item{\verb{direction}}{a text direction}
\item{\verb{state}}{a state}
\item{\verb{size}}{(type int) the size to render the icon at. A size of
(GtkIconSize)-1 means render at the size of the source and
don't scale.}
\item{\verb{widget}}{the widget. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{a style detail. \emph{[  \acronym{allow-none}  ]}}
}
\value{[\code{\link{GdkPixbuf}}] a newly-created \code{\link{GdkPixbuf}} containing the rendered icon}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
