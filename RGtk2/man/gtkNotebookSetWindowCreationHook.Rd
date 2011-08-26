\alias{gtkNotebookSetWindowCreationHook}
\name{gtkNotebookSetWindowCreationHook}
\title{gtkNotebookSetWindowCreationHook}
\description{Installs a global function used to create a window
when a detached tab is dropped in an empty area.}
\usage{gtkNotebookSetWindowCreationHook(func, data)}
\arguments{
\item{\verb{func}}{the \code{\link{GtkNotebookWindowCreationFunc}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{data}}{user data for \code{func}}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
