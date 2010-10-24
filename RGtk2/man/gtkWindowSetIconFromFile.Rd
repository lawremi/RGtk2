\alias{gtkWindowSetIconFromFile}
\name{gtkWindowSetIconFromFile}
\title{gtkWindowSetIconFromFile}
\description{Sets the icon for \code{window}.  
Warns on failure if \code{err} is \code{NULL}.}
\usage{gtkWindowSetIconFromFile(object, filename, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{filename}}{location of icon file}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{This function is equivalent to calling \code{\link{gtkWindowSetIcon}}
with a pixbuf created by loading the image from \code{filename}.
  Since 2.2}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if setting the icon succeeded.}
\item{\verb{error}}{ location to store error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
