\name{children}
\alias{gtkChildren}
\alias{gtkParent}
\title{Get child widgets of a Gtk container}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

This returns a list of the widgets that
are currently contained or managed by 
a particular Gtk container widget.
}
\usage{
gtkChildren(object)
gtkParent(object)
}
\arguments{
  \item{w}{the Gtk widget object whose children or parent
    widget(s) are to be retrieved.
    For \code{gtkChildren}, the object should be an object
    that inherits from the class \code{GtkContainer}.
  }
}
\value{
 For \code{gtkChildren},
  a list with each element corresponding
  to a child in the container widget.
}
\references{
\url{http://www.gtk.org}
\url{http://www.omegahat.net/RGtk/}
}
\author{Duncan Temple Lang}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)

This is a slightly modified function from Duncan's original. It now always behaves 
as if the former argument \code{FULL} is \code{TRUE}.

This is an extra-ordinarily early release 
intended to encourage others to contribute code, etc.}

\seealso{
\code{\link{gtkParent}}
}



\keyword{interface}
\keyword{internal}

