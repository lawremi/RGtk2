\name{RGtkDataFrame}
\alias{RGtkDataFrame}
\alias{[.RGtkDataFrame}
\alias{[<-.RGtkDataFrame}
\alias{as.data.frame.RGtkDataFrame}
\alias{cbind.RGtkDataFrame}
\alias{rbind.RGtkDataFrame}
\alias{rGtkDataFrame}
\alias{rGtkDataFrameNew}
\title{The RGtkDataFrame model}
\description{A \code{\link{GtkTreeModel}} implementation backed by an R data frame}
\usage{
rGtkDataFrame(frame = data.frame())
rGtkDataFrameNew(frame = data.frame())
cbind.RGtkDataFrame(x, ...)
rbind.RGtkDataFrame(x, ...)
as.data.frame.RGtkDataFrame(x, ...)
"[.RGtkDataFrame"(x, i, j)
"[<-.RGtkDataFrame"(x, i, j, value)
}
\arguments{
\item{frame}{The frame to use as the backing store of the model}
\item{x}{An \code{RGtkDataFrame} object}
\item{i}{Row index}
\item{j}{Column index}
\item{value}{An R object similar to that accepted by \code{[<-.data.frame}}
\item{...}{Items to append as columns (\code{cbind}) or rows (\code{rbind})}
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

The \code{cbind} and \code{rbind} methods allow appending columns and rows, respectively. 
Note that in this case no copy is made of the data; the result is applied directly to the model.

The \code{as.data.frame} method retrieves the backing data frame from the model, so that one 
can perform any data frame operation on the data. Of course, any changes are \emph{not} 
propagated back to the model, so it may take some work to efficiently merge any changes, if necessary.
}
\note{It is not yet clear how to encode a tree structure with a data frame, so this is 
only currently useful for flat tables. I am thinking that designating a sequence of 
columns containing factors could communicate a tree structure.}
\author{Michael Lawrence}
\keyword{interface}

