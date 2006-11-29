\alias{gtkIconViewGetCursor}
\name{gtkIconViewGetCursor}
\title{gtkIconViewGetCursor}
\description{Fills in \code{path} and \code{cell} with the current cursor path and cell. 
If the cursor isn't currently set, then *\code{path} will be \code{NULL}.  
If no cell currently has focus, then *\code{cell} will be \code{NULL}.}
\usage{gtkIconViewGetCursor(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkIconView}}]  A \code{\link{GtkIconView}}}}
\details{.  

  Since  2.8}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the cursor is set.}
\item{\code{path}}{[\code{\link{GtkTreePath}}]  Return location for the current cursor path, or \code{NULL}}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  Return location the current focus cell, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
