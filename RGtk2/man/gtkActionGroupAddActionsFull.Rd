\alias{gtkActionGroupAddActionsFull}
\name{gtkActionGroupAddActionsFull}
\title{gtkActionGroupAddActionsFull}
\description{This variant of \code{\link{gtkActionGroupAddActions}} adds a \code{GDestroyNotify}
callback for \code{user.data}.}
\usage{gtkActionGroupAddActionsFull(object, entries, user.data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkActionGroup}}]  the action group}
\item{\code{entries}}{[\code{\link{GtkActionEntry}}]  a list of action descriptions}
\item{\code{user.data}}{[R object]  data to pass to the action callbacks}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
