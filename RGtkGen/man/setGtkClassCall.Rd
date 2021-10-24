\name{setGtkClassCall}
\alias{setGtkClassCall}
\title{Create call to set class of Gtk object}
\description{
  This function generates code that will set
  the class of an S object that is a reference to a
  Gtk object.
  There are two possible ways for this function
  to work.
  a) generating the class information at compile
  time from the specified type (\code{className})
  when this function is called, or
  b) generating a general and dynamic call that is executed
  at run-time when the class information is needed and
  querying the Gtk reference object directly.

  This currently uses the first approach (a).
}
\usage{
setGtkClassCall(className, defs, variable)
}
\arguments{
  \item{className}{the name of the Gtk class whose S class information
    is required.}
  \item{defs}{the collection of Gtk definitions including the
    class hierarchy information }
  \item{variable}{the name of the S variable whose class is being set.
    This is given so that the generate code can modify this object,
  e.g. using \code{class(w) <- ...}}
}
\details{
  This currently uses \code{\link{getClassList}}
  to get the class inheritance information immediately
  and then put this directly into the S code being generated.
  It can also be implemented using a call to
  \code{\link[RGtk]{gtkObjectGetClasses}}
}
\value{
  A string giving the S code to set the class
  of the specified variable.
}

\references{\url{http://www.omegahat.net/RGtk/},
  \url{http://www.omegahat.net/RGtkBindingGenerator},
  \url{http://www.gtk.org}
  \url{http://www.pygtk.org}(?)
}
\author{Duncan Temple Lang <duncan@research.bell-labs.com>}

\seealso{
 \code{\link{genRCode}}
}

\examples{
}

\keyword{programming}
