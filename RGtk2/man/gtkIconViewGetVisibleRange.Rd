\alias{gtkIconViewGetVisibleRange}
\name{gtkIconViewGetVisibleRange}
\title{gtkIconViewGetVisibleRange}
\description{Sets \code{start.path} and \code{end.path} to be the first and last visible path. 
Note that there may be invisible paths in between.}
\usage{gtkIconViewGetVisibleRange(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkIconView}}]  A \verb{\link{GtkIconView}}}}
\details{.  

  Since  2.8}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE}, if valid paths were placed in \code{start.path} and \code{end.path}}
\item{\verb{start.path}}{[\verb{\link{GtkTreePath}}]  Return location for start of region, or \code{NULL}}
\item{\verb{end.path}}{[\verb{\link{GtkTreePath}}]  Return location for end of region, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
