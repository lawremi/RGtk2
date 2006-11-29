\alias{gtkNotebookSetWindowCreationHook}
\name{gtkNotebookSetWindowCreationHook}
\title{gtkNotebookSetWindowCreationHook}
\description{Installs a global function used to create a window
when a detached tab is dropped in an empty area.}
\usage{gtkNotebookSetWindowCreationHook(func, data)}
\arguments{
\item{\code{func}}{[\code{\link{GtkNotebookWindowCreationFunc}}]  the \code{\link{GtkNotebookWindowCreationFunc}}, or \code{NULL}}
\item{\code{data}}{[R object]  user data for \code{func}}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
