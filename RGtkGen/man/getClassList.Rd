\name{getClassList}
\alias{getClassList}
\title{All defined classes in files}
\description{
  This returns a vector of the names of the ancestor
  classes for the Gtk class given by \code{name}.
  This is used as the S3-style class attribute
  for a Gtk object.
  (The vector also contains \code{name} itself, giving
  an appropriate class vector for the Gtk object.)
}
\usage{
getClassList(name, classes)
}
\arguments{
  \item{name}{the name of the Gtk class whose ancestor classes are to be
  determined.}
  \item{classes}{the list of class definitions from the .defs files}
}
\details{
  This recursively walks its way up the Gtk class hierarchy
  in \code{classes} by finding the parent class.
}
\value{
  A character vector containing
  \code{name} and its ancestor classes, in the order
  in which they inherit from each other - most specific to least specific.
}

\references{
 \url{http://www.omegahat.net/RGtk}
 \url{http://www.omegahat.net/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}


\seealso{}

\examples{
 data(GtkDefs)
 getClassList("GtkDrawingArea", GtkDefs$classes)
}
\keyword{programming}
