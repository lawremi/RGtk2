\name{computeSubClasses}
\alias{computeSubClasses}
\title{Generate Gtk class inheritance table}
\description{
  This process a list of Gtk classes
  each with information about its parent class
  and creates a table (i.e. named list) giving
  the class (by the name) and its
  descendant or child classes, across all generations
  of descendant classes (i.e. not just the direct sub-classes). 

  Classes that don't have an explicit parent class (e.g. GdkVisual)
  are added to the Orphan Classes element of the resulting list.
}
\usage{
computeSubClasses(classes)
}
\arguments{
  \item{classes}{the \code{classes} element of the object returned
   from \code{\link{getDefs}}}
}

\value{
  A named list whose names are the names of the parent classes,
  each whose associated element is a character vector giving
  the names of the descendant classes.
}

\references{
 \url{http://www.omegahat.net/RGtk/}
 \url{http://www.omegahat.net/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}

\author{Duncan Temple Lang <duncan@research.bell-labs.com>}


\seealso{
 \code{\link{getDefs}}
}  

\examples{

}
\keyword{programming}

