\name{gtkObjectGetClasses}
\alias{gtkObjectGetClasses}
\alias{gtkTypeGetClasses}
\alias{gtkObjectGetTypeName}
\title{Dynamically Computes class information}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  These functions dynamically compute information
  about the class hierarchy for a given Gtk object
  or a type.
  The class hierarchy is defined by the C-level Gtk
  code and is ``reflected'' to S via these functions.
  Most S-level Gtk objects will be created in the RGtk package
  with the appropriate class. In cases where this is not true,
  \code{gtkObjectGetClass} can be used to compute and assign the
  appropriate class
  so that the regular S interface for that object will work.
}
\usage{
gtkObjectGetClasses(w, check=TRUE)
gtkObjectGetTypeName(w)
gtkTypeGetClasses(type)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{w}{the Gtk object whose class information is to be computed.}
  \item{type}{an S object identifying the Gtk type of interest.
    This can be either a character string giving the name of the
    type or an object of class \code{GtkType}}
  \item{check}{a logical value that can be used to bypass
    a check that the argument \code{w} is of class
    \code{GtkObject}. If the object has not class information
    but the caller knows that it is a pointer to a Gtk object,
    then to compute the class conveniently, \code{check}
    can be passed as \code{FALSE}.}
}
\details{
  This uses C code to query the internal Gtk class hierarchy.
  The class information is not (only) S class information,
  but mirrors the real Gtk class hieararchy.
}
\value{
  A character vector.
  \code{gtkObjectGetTypeName} returns the name of the class/type
  of the given object.
  \code{gtkObjectGetClasses} and \code{gtkTypeGetClasses}
  return the names of the object class/type and its
  successive parent classes, up to  \code{GtkObject}.
}
\references{
  Information on the package is available
  from \url{http://www.omegahat.net/RGtk/}.

  Information on Gtk is available from
  \url{http://www.gtk.org}.
}
\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)


  Type information about a particular class is not available
  until that class has been initialized.
  One can call the C routine
  \code{gtk_<type-name>_get_type} to initialize it
  or, more commonly and completely, create an instance
  of that class.
  So \code{.C("gtk_button_get_type", PACKAGE = "RGtk")}
  or
  \code{gtkButton()}
  should preceed
  \code{gtkTypeGetClasses("GtkButton")}
}

\seealso{
  \code{\link{gtkObjectGetSignals}}
  \code{\link{gtkTypeGetSignals}}
}

\examples{
  if (gtkInit()) {
    b <- gtkButton()
    class(b)

     # Should be true
    class(b) == gtkObjectGetClasses(b)
  }
}

\keyword{interface}
\keyword{internal}

