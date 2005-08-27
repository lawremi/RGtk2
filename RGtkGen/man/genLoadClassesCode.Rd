\name{genLoadClassesCode}
\alias{genLoadClassesCode}
\title{Create code to load different Gtk classes}
\description{

  This generates C code that can be used to force the explicit creation
of Gtk classes. Essentially, the C code is a sequence of calls to the
associated get-type routine for each class,
e.g. \code{gtk_widget_get_type}.  Invoking such a routine causes the
associated class to be initialized in the same way that
it is implicitly created when an object of that class is created.
We use this code when we want to be able to get
reflectance information about a class
without having to have created an instance of it.


This code is not strictly necessary on most platforms.
One can explicitly call the
\code{gtk_*_get_type} routine directly via the
.C interface if it is accessible
from the DLL/shared library.
If not, this code allows one to have the same effect
with an explicitly available C symbol.
}
\usage{
genLoadClassesCode(classes, fileName)
}
\arguments{
  \item{classes}{a list giving the  Gtk class definitions
    to be loaded within this code.
    Only the names of the classes are used and are taken from
    the names attribute of this list.
    Alternatively, one can supply the names of the class directly.
  }
  \item{fileName}{the name of the file in which to output the C code.
    If this is a connection object, we write to it with the usual
    rules of not closing an previously opened connection.
    This allows the caller to combine the output into
    an existing C file.

    If the argument  is not specified (i.e. missing in the call), the code is
    written   to the standard error connection.}
}

\value{
  \code{NULL}. We are only interested in the side effect.
  We could return the code as a string, however, one can achieve
  this effect by passing a \code{\link[base]{textConnection}}
  as the argument for \code{fileName}.
}

\references{
 \url{http://www.omegahat.org/RGtk}
 \url{http://www.omegahat.org/GtkAutoBindingGen}  
 \url{http://www.gtk.org}
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
 \code{\link{generateCodeFiles}}
}

\examples{
 data(GtkDefs)
 genLoadClassesCode(GtkDefs$classes)
}

\keyword{programming}
