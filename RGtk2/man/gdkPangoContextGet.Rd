\alias{gdkPangoContextGet}
\name{gdkPangoContextGet}
\title{gdkPangoContextGet}
\description{Creates a \code{\link{PangoContext}} for the default GDK screen.}
\usage{gdkPangoContextGet()}
\details{
  
When using GTK+, normally you should use \code{\link{gtkWidgetGetPangoContext}}
instead of this function, to get the appropriate context for
the widget you intend to render text onto.
  
The newly created context will have the default font options (see
\code{\link{CairoFontOptions}}) for the default screen; if these options
change it will not be updated. Using \code{\link{gtkWidgetGetPangoContext}}
is more convenient if you want to keep a context around and track
changes to the screen's font rendering settings.}
\value{[\code{\link{PangoContext}}] a new \code{\link{PangoContext}} for the default display}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
