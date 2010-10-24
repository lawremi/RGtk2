\alias{gtkWidgetPushColormap}
\name{gtkWidgetPushColormap}
\title{gtkWidgetPushColormap}
\description{Pushes \code{cmap} onto a global stack of colormaps; the topmost
colormap on the stack will be used to create all widgets.
Remove \code{cmap} with \code{\link{gtkWidgetPopColormap}}. There's little
reason to use this function.}
\usage{gtkWidgetPushColormap(cmap)}
\arguments{\item{\verb{cmap}}{a \code{\link{GdkColormap}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
