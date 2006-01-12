\alias{gtkTreeModelFilterSetModifyFunc}
\name{gtkTreeModelFilterSetModifyFunc}
\title{gtkTreeModelFilterSetModifyFunc}
\description{With the \code{n.columns} and \code{types} parameters, you give a list of column
types for this model (which will be exposed to the parent model/view).
The \code{func}, \code{data} and \code{destroy} parameters are for specifying the modify
function. The modify function will get called for \emph{each}
data access, the goal of the modify function is to return the data which 
should be displayed at the location specified using the parameters of the 
modify function.}
\usage{gtkTreeModelFilterSetModifyFunc(object, types, func, data = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTreeModelFilter}}]  A \code{\link{GtkTreeModelFilter}}.}
\item{\code{types}}{[\code{\link{GType}}]  The \code{\link{GType}}s of the columns.}
\item{\code{func}}{[\code{\link{GtkTreeModelFilterModifyFunc}}]  A \code{\link{GtkTreeModelFilterModifyFunc}}}
\item{\code{data}}{[R object]  User data to pass to the modify function, or \code{NULL}.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
