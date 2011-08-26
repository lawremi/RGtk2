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
\item{\verb{object}}{A \code{\link{GtkTreeModelFilter}}.}
\item{\verb{types}}{The \code{\link{GType}}s of the columns.}
\item{\verb{func}}{A \code{\link{GtkTreeModelFilterModifyFunc}}}
\item{\verb{data}}{User data to pass to the modify function, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
