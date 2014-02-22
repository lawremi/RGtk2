\alias{pangoFontMapCreateContext}
\name{pangoFontMapCreateContext}
\title{pangoFontMapCreateContext}
\description{Creates a \code{\link{PangoContext}} connected to \code{fontmap}.  This is equivalent
to \code{pangoContextNew()} followed by \code{\link{pangoContextSetFontMap}}.}
\usage{pangoFontMapCreateContext(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoFontMap}}]  a \code{\link{PangoFontMap}}}}
\details{If you are using Pango as part of a higher-level system,
that system may have it's own way of create a \code{\link{PangoContext}}.
For instance, the GTK+ toolkit has, among others,
\code{\link{gdkPangoContextGetForScreen}}, and
\code{\link{gtkWidgetGetPangoContext}}.  Use those instead.  
  Since 1.22}
\value{[\code{\link{PangoContext}}]  the newly allocated \code{\link{PangoContext}},}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
