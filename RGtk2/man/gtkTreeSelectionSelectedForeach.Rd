\alias{gtkTreeSelectionSelectedForeach}
\name{gtkTreeSelectionSelectedForeach}
\title{gtkTreeSelectionSelectedForeach}
\description{Calls a function for each selected node. Note that you cannot modify
the tree or selection from within this function. As a result,
\code{\link{gtkTreeSelectionGetSelectedRows}} might be more useful.}
\usage{gtkTreeSelectionSelectedForeach(object, func, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeSelection}}]  A \code{\link{GtkTreeSelection}}.}
\item{\code{func}}{[\code{\link{GtkTreeSelectionForeachFunc}}]  The function to call for each selected node.}
\item{\code{data}}{[R object]  user data to pass to the function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
