\name{getConstructors}
\alias{getConstructors}
\title{Identifies constructors routine definitions for all classes}
\description{
  This searches the class and function definitions read
  from the .defs files and returns the constructor
  functions, identified by those routines with
  a \code{_new} in their names.
}
\usage{
getConstructors(defs)
}

\arguments{
  \item{defs}{the entire collection of symbolic definitions for the Gtk
    classes, routines, etc. read from the .defs files via
    \code{\link{getDefs}}.
  }
}
\details{
  This raises a warning if it finds a constructor function
  without a class definition with the associated name.
}
\value{
  A named character vector giving
  the names of the constructors indexed by
  the associated class name, i.e.
  the elements are the names of the constructor routines
  and the names of the elements are the class names.
  
}
\references{\url{http://www.omegahat.net/RGtk},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
 \code{\link{collapseConstructors}}
}

\examples{
 data(GtkDefs)
 getConstructors(GtkDefs)
}
\keyword{programming}

