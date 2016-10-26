\name{generateInternalRd}
\alias{generateInternalRd}
\title{Create package internal documentation}
\description{
  This creates the Internal.Rd file that "documents"
  the automatically generated functions.
  This helps in passing R CMD check for the generated package.
  This function writes the name of each of the functions in the
  functions list of the \code{defs} object
  as an alias in the generated Rd file. 
}
\usage{
generateInternalRd(defs, package)
}
\arguments{
  \item{defs}{the collection of definitions read from the .defs files}
  \item{package}{the name of the package being created.
   This is used to create the file.}
}
\value{
  The return value is irrelevant.
  It is the side effect of creating the \code{package-Internal.Rd}
  file that is the result.
}
\references{
 \url{http://www.omegahat.net/RGtk}
 \url{http://www.omegahat.net/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}
\author{Duncan Temple Lang}

\seealso{

}

\examples{

}
\keyword{interface}

