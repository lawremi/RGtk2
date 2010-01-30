\alias{gtkActionBlockActivateFrom}
\name{gtkActionBlockActivateFrom}
\title{gtkActionBlockActivateFrom}
\description{Disables calls to the \code{\link{gtkActionActivate}}
function by signals on the given proxy widget.  This is used to
break notification loops for things like check or radio actions.}
\usage{gtkActionBlockActivateFrom(object, proxy)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkAction}}]  the action object}
\item{\verb{proxy}}{[\verb{\link{GtkWidget}}]  a proxy widget}
}
\details{This function is intended for use by action implementations.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
