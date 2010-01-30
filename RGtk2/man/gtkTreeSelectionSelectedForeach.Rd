\alias{gtkTreeSelectionSelectedForeach}
\name{gtkTreeSelectionSelectedForeach}
\title{gtkTreeSelectionSelectedForeach}
\description{Calls a function for each selected node. Note that you cannot modify
the tree or selection from within this function. As a result,
\code{\link{gtkTreeSelectionGetSelectedRows}} might be more useful.}
\usage{gtkTreeSelectionSelectedForeach(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTreeSelection}}]  A \verb{\link{GtkTreeSelection}}.}
\item{\verb{func}}{[\verb{\link{GtkTreeSelectionForeachFunc}}]  The function to call for each selected node.}
\item{\verb{data}}{[R object]  user data to pass to the function.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
