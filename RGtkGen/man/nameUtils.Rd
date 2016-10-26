\name{changeCapitalization}
\alias{changeCapitalization}
\alias{collapseClassName}
\alias{mapToClassName}
\alias{toCapPhraseName}
\alias{getEnumCRoutineName}
\alias{getClassFunctionName}
\alias{nameToS}
\alias{nameToC}
\alias{nameToSArg}
\title{Utility functions for generating "variable" names in S and C}
\description{

}
\usage{
nameToS(name)
nameToC(name)
nameToSArg(name)
changeCapitalization(x, up = TRUE)
collapseClassName(name)
mapToClassName(name, classes, capitalize = TRUE)
toCapPhraseName(name, capitalize = FALSE, classNames = NULL)

getClassFunctionName(name)

getEnumCRoutineName(name)
}

\arguments{
  \item{name}{the name to be mapped to the appropriate format}
  \item{x}{the string whose capitalization is to be changed.}
  \item{up}{a logical value indicating whether to change the first
    character of the string to upper (\code{TRUE}) or lower
    (\code{FALSE}) case.}
  \item{capitalize}{a logical value indicating whether to capitalize the
    first letter of each ``term'' in the class name (e.g. capitalize
    the D and A in GtkDrawingArea.}
  \item{classes}{a list of the class definitions read from the .defs
    files. This is used only to get the the names of the classes
    (via a call to \code{\link[base]{names}}.
   }  
  \item{classNames}{}
}
\details{

}
\value{

}
\references{\url{http://www.omegahat.net/RGtk},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{}

\examples{

}
\keyword{programming}
