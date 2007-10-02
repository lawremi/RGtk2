\name{gtkObjectGetArgs}
\alias{gtkObjectGetArgs}
\alias{gtkObjectGetArg}
\alias{gtkObjectSetArgs}
\title{Access properties of a Gtk object}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  These functions allow one to both read
  and set properties of a Gtk object by
  name and also in the usual S-like manner.
  \code{gtkObjectGetArgs} retrieves
  the values of one or more properties by
  specifying their name as a vector.
  \code{gtkObjectGetArg} retrieves the value of a single
  property and avoids having to worry about whether the result
  is a value or a list of values of length 1.
  \code{gtkObjectSetArgs} allows one to set
  one or more properties by name in the form
  \code{gtkObjectSetArgs(obj, x=1, y="a")}.
  \code{[.GtkObject} and \code{[[<-.GtkObject}
  provide S-like accessors.
}
\usage{
gtkObjectGetArgs(obj, argNames)
gtkObjectGetArg(obj, argName)
gtkObjectSetArgs(obj, ..., .vals)
}
\arguments{
  \item{obj}{the Gtk object whose properties are to be accessed}
  \item{argNames}{a character vector giving the names of the properties
   to retrieve.}
  \item{argName}{a string (i.e. character vector of length 1)
    giving the name of the property whose value is to be retrieved.}
  \item{...}{for \code{[.GtkObject}, this is a character vector
   giving the names of the properties of interest.
   For \code{gtkObjectSetArgs}, this is a collection of name=value
   pairs where \code{name} is the name of the property to set and
   \code{value} is the value to which it is to be set.}
  \item{.vals}{a named list similar to \code{...} in \code{gtkObjectSetArgs}
     }
}

\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)



}

\keyword{interface}
\keyword{internal}
