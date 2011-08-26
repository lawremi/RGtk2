\alias{gtkRcGetStyleByPaths}
\name{gtkRcGetStyleByPaths}
\title{gtkRcGetStyleByPaths}
\description{Creates up a \code{\link{GtkStyle}} from styles defined in a RC file by providing
the raw components used in matching. This function may be useful
when creating pseudo-widgets that should be themed like widgets but
don't actually have corresponding GTK+ widgets. An example of this
would be items inside a GNOME canvas widget.}
\usage{gtkRcGetStyleByPaths(settings, widget.path, class.path, type)}
\arguments{
\item{\verb{settings}}{a \code{\link{GtkSettings}} object}
\item{\verb{widget.path}}{the widget path to use when looking up the style, or \code{NULL}
if no matching against the widget path should be done. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{class.path}}{the class path to use when looking up the style, or \code{NULL}
if no matching against the class path should be done. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{type}}{a type that will be used along with parent types of this type
when matching against class styles, or \verb{G_TYPE_NONE}}
}
\details{The action of \code{\link{gtkRcGetStyle}} is similar to:
\preformatted{
path <- widget$path()$path
class_path <- widget$classPath()$path
gtkRcGetStyleByPaths(widget$getSettings(), path, class_path, class(widget)[1])
}}
\value{[\code{\link{GtkStyle}}] A style created by matching with the supplied paths,
or \code{NULL} if nothing matching was specified and the default style should
be used.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
