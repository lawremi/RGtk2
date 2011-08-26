\alias{gtkTreeModelFilterSetVisibleFunc}
\name{gtkTreeModelFilterSetVisibleFunc}
\title{gtkTreeModelFilterSetVisibleFunc}
\description{Sets the visible function used when filtering the \code{filter} to be \code{func}. The
function should return \code{TRUE} if the given row should be visible and
\code{FALSE} otherwise.}
\usage{gtkTreeModelFilterSetVisibleFunc(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeModelFilter}}.}
\item{\verb{func}}{A \code{\link{GtkTreeModelFilterVisibleFunc}}, the visible function.}
\item{\verb{data}}{User data to pass to the visible function, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If the condition calculated by the function changes over time (e.g. because
it depends on some global parameters), you must call 
\code{\link{gtkTreeModelFilterRefilter}} to keep the visibility information of 
the model uptodate.
  
Note that \code{func} is called whenever a row is inserted, when it may still be
empty. The visible function should therefore take special care of empty
rows, like in the example below.
  \preformatted{
visible_func <- function(model, iter, data)
{
  ## Visible if row is non-empty and first column is "HI"
  visible <- FALSE

  str <- model$get(iter, 0)[[1]]
  if (identical(str, "HI"))
    visible <- TRUE

  return(visible)
}
}  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
