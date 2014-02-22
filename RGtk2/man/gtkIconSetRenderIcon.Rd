\alias{gtkIconSetRenderIcon}
\name{gtkIconSetRenderIcon}
\title{gtkIconSetRenderIcon}
\description{Renders an icon using \code{\link{gtkStyleRenderIcon}}. In most cases,
\code{\link{gtkWidgetRenderIcon}} is better, since it automatically provides
most of the arguments from the current widget settings.  This
function never returns \code{NULL}; if the icon can't be rendered
(perhaps because an image file fails to load), a default "missing
image" icon will be returned instead.}
\usage{gtkIconSetRenderIcon(object, style, direction, state, size, widget = NULL, 
    detail = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconSet}}}
\item{\verb{style}}{a \code{\link{GtkStyle}} associated with \code{widget}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{direction}}{text direction}
\item{\verb{state}}{widget state}
\item{\verb{size}}{icon size. A size of (GtkIconSize)-1
means render at the size of the source and don't scale. \emph{[  \acronym{type}   int]}}
\item{\verb{widget}}{widget that will display the icon, or \code{NULL}.
The only use that is typically made of this
is to determine the appropriate \code{\link{GdkScreen}}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{detail}}{detail to pass to the theme engine, or \code{NULL}.
Note that passing a detail of anything but \code{NULL}
will disable caching. \emph{[  \acronym{allow-none}  ]}}
}
\value{[\code{\link{GdkPixbuf}}] a \code{\link{GdkPixbuf}} to be displayed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
