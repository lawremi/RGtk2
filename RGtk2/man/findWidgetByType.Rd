\name{findWidgetByType}
\alias{findWidgetByType}
\title{Find widget in hierarchy by type}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

  This function recursively descends the widget hierarchy
  identified by the root node \code{win} and finds the first
  widget that matches the specified target type.
}
\usage{
findWidgetByType(win, gtkType = "GtkMenuBar", verbose = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{win}{the root node of the widget hierarchy whose children and
    descendants are to be searced.}
  \item{gtkType}{the name of the Gtk type we are looking for.
    If this is a function, it is called for each widget in the hierarchy
    until it returns \code{TRUE}.
    Each call is given the widget as its only argument
    and expected to return a logical value indicating whether the
    widget matches or not. One can use a closure and always
    return \code{FALSE} if one wants to iterate over all the
    widgets and collect the matching ones.
  }
  \item{verbose}{a logical value indicating whether to print information
   to the console as we recurse.}
}

\value{
 The widget that matched or \code{NULL}.
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


\seealso{
\code{\link{gtkContainerGetChildren}}
}


\keyword{interface}
\keyword{internal}


