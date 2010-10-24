\alias{gtkWindowActivateDefault}
\name{gtkWindowActivateDefault}
\title{gtkWindowActivateDefault}
\description{Activates the default widget for the window, unless the current 
focused widget has been configured to receive the default action 
(see \code{\link{gtkWidgetSetReceivesDefault}}), in which case the
focused widget is activated.}
\usage{gtkWindowActivateDefault(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWindow}}}}
\value{[logical] \code{TRUE} if a widget got activated.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
