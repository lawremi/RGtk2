\alias{atkTableGetSelectedColumns}
\name{atkTableGetSelectedColumns}
\title{atkTableGetSelectedColumns}
\description{Gets the selected columns of the table by initializing **selected with 
the selected column numbers.}
\usage{atkTableGetSelectedColumns(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkTable}}]  a GObject instance that implements AtkTableIface}}
\value{
A list containing the following elements:
\item{retval}{[integer]  a gint representing the number of selected columns,
or \code{0} if value does not implement this interface.}
\item{\verb{selected}}{[integer]  a \verb{integer}** that is to contain the selected columns numbers}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
