\name{getCType}
\alias{getCType}
\alias{CtypeDecl}
%\alias{mapToCType}
\title{Functions to manipulate C arguments}
\description{
  These utilities are repsonsible for mapping the
  name of a type in the symbolic definitions
  to the appropriate C type.

  \code{mapToCType} isn't used in the package's code.
  Use \code{getCType} instead.
  
}
\usage{
getCType(type, defs)
CtypeDecl(type, var, defs) 
}
\arguments{
  \item{type}{the name of the C type, e.g. string, GtkWidget as a
    character vector of length 1}
  \item{defs}{the collection of symbolic class, routine and enumeration definitions.}
  \item{var}{the name of the C variable}
}
\details{

}
\value{

  \code{CtypeDecl} calls \code{getCType}
  and returns a string giving the C declaration for the specified
  variable name in the form \code{Type var}.

  \code{getCType} returns  a string giving the name of the C type corresponding
  to the  symbolic Gtk type.  It does this by a multi-clause
  \code{if-else}
  statement since some of the matching is computational rather than lookup-based.
 
}
\references{\url{http://www.omegahat.net/RGtk/},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
 \code{\link{genCCode}}
}

\examples{

}
\keyword{programming}

