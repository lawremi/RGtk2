\alias{gtkIconSetRenderIcon}
\name{gtkIconSetRenderIcon}
\title{gtkIconSetRenderIcon}
\description{Renders an icon using \code{\link{gtkStyleRenderIcon}}. In most cases,
\code{\link{gtkWidgetRenderIcon}} is better, since it automatically provides
most of the arguments from the current widget settings.  This
function never returns \code{NULL}; if the icon can't be rendered
(perhaps because an image file fails to load), a default "missing
image" icon will be returned instead.}
\usage{gtkIconSetRenderIcon(object, style, direction, state, size, widget = NULL, detail = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkIconSet}}]  a \code{\link{GtkIconSet}}}
\item{\code{style}}{[\code{\link{GtkStyle}}]  a \code{\link{GtkStyle}} associated with \code{widget}, or \code{NULL}}
\item{\code{direction}}{[\code{\link{GtkTextDirection}}]  text direction}
\item{\code{state}}{[\code{\link{GtkStateType}}]  widget state}
\item{\code{size}}{[\code{\link{GtkIconSize}}]  icon size. A size of (GtkIconSize)-1
       means render at the size of the source and don't scale.}
\item{\code{widget}}{[\code{\link{GtkWidget}}]  widget that will display the icon, or \code{NULL}.
         The only use that is typically made of this
         is to determine the appropriate \code{\link{GdkScreen}}.}
\item{\code{detail}}{[char]  detail to pass to the theme engine, or \code{NULL}.
         Note that passing a detail of anything but \code{NULL}
         will disable caching.}
}
\value{[\code{\link{GdkPixbuf}}]  a \code{\link{GdkPixbuf}} to be displayed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
