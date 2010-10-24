\alias{gtkWidgetSetHasWindow}
\name{gtkWidgetSetHasWindow}
\title{gtkWidgetSetHasWindow}
\description{Specifies whether \code{widget} has a \code{\link{GdkWindow}} of its own. Note that
all realized widgets have a non-\code{NULL} "window" pointer
(\code{\link{gtkWidgetGetWindow}} never returns a \code{NULL} window when a widget
is realized), but for many of them it's actually the \code{\link{GdkWindow}} of
one of its parent widgets. Widgets that create a \code{window} for
themselves in GtkWidget::\code{realize()} however must announce this by
calling this function with \code{has.window} = \code{TRUE}.}
\usage{gtkWidgetSetHasWindow(object, has.window)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{has.window}}{whether or not \code{widget} has a window.}
}
\details{This function should only be called by widget implementations,
and they should call it in their \code{init()} function.
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
