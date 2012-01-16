\name{argInfo}
\alias{gtkObjectGetArgInfo}
\alias{names.GtkObject}
\title{Access information about properties of a GtkObject}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  These allow one to discover what ``properties'' or variables
  a Gtk object supports and the details of each property
  such as its type and whether it can be set or only read.
}
\usage{
\method{names}{GtkObject}(x)
gtkObjectGetArgInfo(obj, parents=TRUE, collapse=TRUE)
}
\arguments{
  \item{x}{the Gtk object the names of whose properties are to be queried}
  \item{obj}{the Gtk object for which the property information is to be retrieved}
  \item{parents}{a logical value indicating whether to get the
    properties of the parent classes as well as the specific class of
    the Gtk object \code{obj}. If this is true, we iterate over the
    successive super-classes of \code{obj}.
    }
  \item{collapse}{a logical value indicating whether the information
    about parent classes should be collapsed into a single list (\code{TRUE})
    or maintained as separate elements in a top-level list that allows
    one to determine to which class each property originates.
    The names of a property contains the class for which it is defined.
  }
}
\details{
  A regular user will probably want to call \code{gtkObjectGetArgInfo}
  with \code{parents = TRUE}, \code{collapse=TRUE} to find all the available properties in the most
  convenient format.
  Tool writers using the reflectance may want to get the associated
  classes and process the properties hierarchically.
}
\value{
  \code{names} returns a character vector giving
  the names of the available properties
  with the class prefix removed.
  \code{gtkObjectGetArgInfo} returns a list giving details of
  the properties. At the lowest level, each property
  is described by a list containing
  \item{type}{an object of class \code{GtkType} which identifies the
   type (!) of the value of the property.}
  \item{flag}{an object which
    specifies whether the property is read-only or read-write
    and when it can be specified, etc.}
  Each property is indexed by its name in the list.
  
  The precise form of the returned value depends on the different
  arguments.
  If \code{parents} is \code{FALSE}, then a simple list giving
  each property for the class of \code{obj} is returned.
  If \code{parents} is \code{TRUE} and \code{collapse} is
  \code{FALSE}, then a list indexed by class is returned.
  Each element is a list containing the property information.
}

\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)


}



\keyword{interface}
\keyword{internal}
