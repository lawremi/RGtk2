\name{genCode}
\alias{genCode}
\title{Create the R and C code for a set of defintions}
\description{
  This takes one or more symbolic descriptions of a collection
  of classes, routines and enumerations and generates the S-language
  bindings to these entitities. This includes both S-language
  functions and the associated C code.
}
\usage{
genCode(defs = getDefs(), filePrefix = "gtk", dir = "/tmp", existingDefs = NULL, verbose = FALSE, libName = filePrefix, package = "RGtk")
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{defs}{}
  \item{filePrefix}{}
  \item{dir}{the directory in which to write the files containing the
      generated S and C code.}
  \item{existingDefs}{}
  \item{verbose}{a logical value indicating whether to ouput
    intermediate progress messages during the computations}
  \item{libName}{}
  \item{package}{}
}
\value{
  The main purpose of this is for its side effects.
  It generates S- and C-language files describing the
  enumeration types, the C routines and accessors
  for the data structure elements.

  The different C files contain a directive to include
  a file named \code{package.h}
  where the value of \code{package} is used
  here. So, for example, the file
  \code{RGtk.h} is included in the different .c
  files generated for the RGtk package.
  
}
\references{
 \url{http://www.omegahat.net/RGtk/}
 \url{http://www.omegahat.net/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}
\author{Duncan Temple Lang}

\seealso{
  \code{\link{generateCodeFiles}}
  \code{\link{getDefs}}
  \code{\link{genLoadClassesCode}}
}

\examples{

}
\keyword{programming}

