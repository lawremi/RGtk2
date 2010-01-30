\alias{gtkActionGroupAddToggleActionsFull}
\name{gtkActionGroupAddToggleActionsFull}
\title{gtkActionGroupAddToggleActionsFull}
\description{This variant of \code{\link{gtkActionGroupAddToggleActions}} adds a 
\verb{GDestroyNotify} callback for \code{user.data}.}
\usage{gtkActionGroupAddToggleActionsFull(object, entries, user.data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkActionGroup}}]  the action group}
\item{\verb{entries}}{[\verb{\link{GtkToggleActionEntry}}]  a list of toggle action descriptions}
\item{\verb{user.data}}{[R object]  data to pass to the action callbacks}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
