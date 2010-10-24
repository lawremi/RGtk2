\alias{gtkWidgetSetReceivesDefault}
\name{gtkWidgetSetReceivesDefault}
\title{gtkWidgetSetReceivesDefault}
\description{Specifies whether \code{widget} will be treated as the default widget
within its toplevel when it has the focus, even if another widget
is the default.}
\usage{gtkWidgetSetReceivesDefault(object, receives.default)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{receives.default}}{whether or not \code{widget} can be a default widget.}
}
\details{See \code{\link{gtkWidgetGrabDefault}} for details about the meaning of
"default".
  Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
