\alias{gtkIconViewGetCursor}
\name{gtkIconViewGetCursor}
\title{gtkIconViewGetCursor}
\description{Fills in \code{path} and \code{cell} with the current cursor path and cell. 
If the cursor isn't currently set, then *\code{path} will be \code{NULL}.  
If no cell currently has focus, then *\code{cell} will be \code{NULL}.}
\usage{gtkIconViewGetCursor(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkIconView}}}}
\details{
  Since 2.8}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the cursor is set.}
\item{\verb{path}}{Return location for the current cursor path, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{cell}}{Return location the current focus cell, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
