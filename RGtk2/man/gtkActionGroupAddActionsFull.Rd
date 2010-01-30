\alias{gtkActionGroupAddActionsFull}
\name{gtkActionGroupAddActionsFull}
\title{gtkActionGroupAddActionsFull}
\description{This variant of \code{\link{gtkActionGroupAddActions}} adds a \verb{GDestroyNotify}
callback for \code{user.data}.}
\usage{gtkActionGroupAddActionsFull(object, entries, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkActionGroup}}]  the action group}
\item{\verb{entries}}{[\verb{\link{GtkActionEntry}}]  a list of action descriptions}
\item{\verb{user.data}}{[R object]  data to pass to the action callbacks}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
