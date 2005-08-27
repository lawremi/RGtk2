\name{mergeDefs}
\alias{mergeDefs}
\title{Combine definitions for classes, functions, ... from different sources}
\description{
  This combines the definitions read from different .defs files
  into a single object containing the unique definitions.
  No effort is made to determine if duplicated definitions agree.
  They are simple discared and the value in \code{into} is maintained.
}
\usage{
mergeDefs(from, into)
}
\arguments{
  \item{from}{the "new" definitions whch are to be combined with thos in
    \code{into}. Definitions in any of the categories of this object
    that have the same name as a definition in the corresponding
    category of \code{into} will be discarded.
    In such cases, a warning is generated.
  }
  \item{into}{the original/master definitions which are to be augmented
    with those from \code{from}.}
}
\details{
 
}
\value{
  An object identical in top-level structure
  to \code{into} with the elements containing
  the result of merging the elements from \code{from} and \code{into}.
}

\seealso{
  \code{\link{generateCodeFiles}}  
  \code{\link{genCode}}
}  

\examples{

}
\keyword{programming}
