\alias{gtkActionBlockActivate}
\name{gtkActionBlockActivate}
\title{gtkActionBlockActivate}
\description{Disable activation signals from the action }
\usage{gtkActionBlockActivate(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkAction}}}}
\details{This is needed when updating the state of your proxy
\code{\link{GtkActivatable}} widget could result in calling \code{\link{gtkActionActivate}},
this is a convenience function to avoid recursing in those
cases (updating toggle state for instance).
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
