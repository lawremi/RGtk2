\alias{gtkWindowActivateDefault}
\name{gtkWindowActivateDefault}
\title{gtkWindowActivateDefault}
\description{Activates the default widget for the window, unless the current 
focused widget has been configured to receive the default action 
(see \verb{GTK_RECEIVES_DEFAULT} in \code{\link{GtkWidgetFlags}}), in which case the
focused widget is activated.}
\usage{gtkWindowActivateDefault(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}}}
\value{[logical] \code{TRUE} if a widget got activated.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
