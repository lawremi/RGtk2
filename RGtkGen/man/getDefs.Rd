\name{getDefs}
\alias{getDefs}
\title{Read and partially process .defs files}
\description{
  This is the basic high-level/user-level function for
  reading into R a collection of .defs files containing
  the descriptions of Gtk classes, functions, enumerations, etc.
  This uses \code{\link{getRawDefs}}
  to bring the basic tables of descriptions
  into R and then post-processes these
  to organize the lists of lists
  into classes describing the different
  parts of the definitions. For example,
  it puts names on the different parameters
  
  This uses the parser written in Python
  to read the specified .defs files
  and return them to R as a collection
  of tables.
  
}
\usage{
getDefs(fileNames = c("gtk.defs"))
}
\arguments{
  \item{fileNames}{a single string or character vector of length 1
    giving the names of the different
    .defs file containing the definitions of the class, functions,
    enums, etc.
    For the moment, one can process multiple
    files by separate calls to
    \code{\link{getDefs}} followed by  calls
    to \code{\link{mergeDefs}}.
    In the future, we will determine if the Python parser  should
    be used to read multiple files.    
  }
}
\details{
  This uses the RSPython package to call the Python parser for the defs
  format and return the results to R.
}
\value{
  A list giving the "definitions" for the
  different types defined  in the .defs file(s).
  \item{functions}{}
  \item{enums}{}
  \item{flags}{}
  \item{classes}{}
  \item{boxes}{}  

}
\references{\url{http://www.omegahat.net/RGtk},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}


\seealso{
\code{\link{getRawDefs}}
}

\examples{

}
\keyword{programming}

