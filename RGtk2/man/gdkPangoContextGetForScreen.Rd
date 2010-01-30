\alias{gdkPangoContextGetForScreen}
\name{gdkPangoContextGetForScreen}
\title{gdkPangoContextGetForScreen}
\description{Creates a \verb{\link{PangoContext}} for \code{screen}.}
\usage{gdkPangoContextGetForScreen(screen)}
\arguments{\item{\verb{screen}}{[\verb{\link{GdkScreen}}]  the \verb{\link{GdkScreen}} for which the context is to be created.}}
\details{.
  
When using GTK+, normally you should use \code{\link{gtkWidgetGetPangoContext}}
instead of this function, to get the appropriate context for
the widget you intend to render text onto.
  
The newly created context will have the default font options
(see \verb{\link{CairoFontOptions}}) for the screen; if these options
change it will not be updated. Using \code{\link{gtkWidgetGetPangoContext}}
is more convenient if you want to keep a context around and track
changes to the screen's font rendering settings.  

  Since  2.2}
\value{[\verb{\link{PangoContext}}]  a new \verb{\link{PangoContext}} for \code{screen}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
