\name{gtkGetType}
\alias{gtkGetType}
\alias{gtkObjectGetType}
\title{Get the GtkType object from a Gtk object or name}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This retrieves the \code{GtkType} object  for a given
  \code{GtkObject} or directly by name.
  This can be used to dynamically discover information
  about a Gtk class such as its signals, properties,
  inheritance hierarchy, etc.
}
\usage{
gtkGetType(name)
gtkObjectGetType(w, check=TRUE)
}
\arguments{
  \item{name}{a character vector giving the name of the Gtk class/type
    to be retrieved.}
  \item{w}{a GtkObject whose type is to be queried and returned.}
  \item{check}{a logical value indicating whether we should first verify
    that the \code{w} object inherits from GtkObject.
    Typically one passes \code{TRUE} for this. It is useful
    when one gets an incomplete object constructed directly in C code
    and we want to construct its class information
    (\code{gtkObjectGetClasses}) manually.   }
}
\details{
  If one calls \code{gtkGetType} with a string
  giving the name of the Gtk class, the associated
  Gtk class must have been initialized first.
  Specifically an object of that class
  must have been created earlier or
  the associated \code{gtk_<class>_get_type}
  called.
  This can be done using the \code{\link[base]{.C}}
  function as in \code{.C("gtk_button_get_type", PACKAGE= "RGtk")}.
  
  
}
\value{
  A single real value giving the internal
  C-level identifier for the Gtk type value.
  The name of the type is used as the \code{names}
  vector for the numeric vector.
}

\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)



}

\seealso{
  \code{\link{gtkObjectGetClasses}}
  \code{\link{gtkTypeGetClasses}}  
}



\keyword{interface}
\keyword{internal}
