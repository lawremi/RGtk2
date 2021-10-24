\name{collapseConstructors}
\alias{collapseConstructors}
\title{Combine Gtk constructor functions with different arguments}
\description{
  This attempts to create a single convenience function
  that interfaces to two or more Gtk constructor functions
  by detecting the which function is to be called based
  on the arguments.
  It is typically used for a constructor that takes no
  arguments (e.g. \code{gtkButtonNew}) and
  one that takes parameters (e.g. \code{gtkButtonNewWithLabel}.
  The function can then determine which of the underlying
  S functions is to be called.

  This does not work for complex collections of Gtk constructor
  functions that have multiple arguments and rely on different
  calling patterns to identify which constructor is desired.
}
\usage{
collapseConstructors(k = getConstructors(defs), defs, filter = NULL)
}
\arguments{
  \item{k}{ ~~Describe \code{k} here~~ }
  \item{defs}{ ~~Describe \code{defs} here~~ }
  \item{filter}{ ~~Describe \code{filter} here~~ }
}
\details{
}
\value{
  If it is a LIST, use
  \item{comp1 }{Description of `comp1'}
  \item{comp2 }{Description of `comp2'}
  ...
}

\references{\url{http://www.omegahat.net/RGtk/},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}


\seealso{
  \code{\link{outputConstructors}}
  \code{\link{genCode}}  
}

\examples{

}
\keyword{programming}

