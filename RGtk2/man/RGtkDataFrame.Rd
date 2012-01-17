\name{RGtkDataFrame}
\alias{RGtkDataFrame}
\alias{[.RGtkDataFrame}
\alias{[<-.RGtkDataFrame}
\alias{as.data.frame.RGtkDataFrame}
\alias{rGtkDataFrameAppendColumns}
\alias{rGtkDataFrameAppendRows}
\alias{rGtkDataFrame}
\alias{rGtkDataFrameNew}
\alias{dim.RGtkDataFrame}
\alias{dimnames.RGtkDataFrame}
\alias{dimnames<-.RGtkDataFrame}
\alias{rGtkDataFrameSetFrame}
\title{The RGtkDataFrame model}
\description{A \code{\link{GtkTreeModel}} implementation backed by an R data frame}
\usage{
rGtkDataFrame(frame = data.frame())
rGtkDataFrameNew(frame = data.frame())
rGtkDataFrameAppendColumns(x, ...)
rGtkDataFrameAppendRows(x, ...)
\method{as.data.frame}{RGtkDataFrame}(x, ...)
rGtkDataFrameSetFrame(x, frame = data.frame())
\method{[}{RGtkDataFrame}(x, i, j, drop = T)
\method{[}{RGtkDataFrame}(x, i, j) <- value
\method{dim}{RGtkDataFrame}(x, ...)
\method{dimnames}{RGtkDataFrame}(x, ...)
\method{dimnames}{RGtkDataFrame}(x) <- value
}
\arguments{
\item{frame}{The frame to use as the backing store of the model}
\item{x}{An \code{RGtkDataFrame} object}
\item{i}{Row index}
\item{j}{Column index}
\item{value}{An R object similar to that accepted by \code{[<-.data.frame} or the dimnames for the data frame}
\item{drop}{Whether to 'drop' the result to the simplest structure}
\item{...}{Items to append as columns or rows or just additional arguments}
}
\value{
The constructors return instances of \code{RGtkDataFrame}.
\code{as.data.frame.RGtkDataFrame} returns the data frame backing the model.
\code{[.RGtkDataFrame} returns the result of the \code{[} method on the backing frame.
}
\details{
The RGtk2 interface carries a lot of overhead, slowing down operations that require 
large numbers of function calls, such as loading a GtkTreeModel. Under the assumption 
that R programmers will store large datasets as data frames, a new \code{\link{GtkTreeModel}} 
was implemented that draws data directly from an R data frame. This offers not only a 
dramatic performance gain but also allows efficient addition of columns to a model, 
which the default GTK implementations do not allow.

The \code{RGtkDataFrame} is constructed with a delegate data frame, which can be empty, 
via either \code{rGtkDataFrameNew} or \code{rGtkDataFrame} for short. The subset and 
replacement methods work much the same as for normal data frames, except one should note that 
removing columns (ie by replacing columns with \code{NULL}s) is not supported.
Note that even if the initial data frame is empty, one should ensure that the empty vectors 
representing the column are of the desired types. If one wants to simply replace the backing frame
with a new one, then there are two options: create a new RGtkDataFrame and connect it to the views
of the old model, or use \code{rGtkDataFrameSetFrame}.

The \code{rGtkDataFrameAppendColumns} and \code{rGtkDataFrameAppendRows} 
methods allow appending columns and rows, respectively. 
Note that these are a lot shorter if using the \code{object$appendColumns(...)} syntax.

The \code{as.data.frame} method retrieves the backing data frame from the model, so that one 
can perform any data frame operation on the data. Of course, any changes are \emph{not} 
propagated back to the model, so it may take some work to efficiently merge any changes, if necessary.

For convenience, one can access the dimensions and dimension names using \code{dim.RGtkDataframe} and
\code{dimnames.RGtkDataFrame}, respectively. It is possible to set the dimension names using the
conventional replacement function. Note that rownames mean nothing to GTK.
}
\note{It is not yet clear how to encode a tree structure with a data frame, so this is 
only currently useful for flat tables.}
\author{Michael Lawrence}
\keyword{interface}

