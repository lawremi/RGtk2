\name{gdkGetWindowSize}
\alias{gdkGetWindowSize}
\title{Obtain dimensions of a Gtk window}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

 Returns the width and height of a Gtk window.
}
\usage{
gdkGetWindowSize(w)
}
\arguments{
  \item{w}{the object of class \code{"GdkWindow"}
           whose dimensions are to be queried.}
}
\value{
  An integer vector with two elements:
  \item{width}{the number of pixels the window spans in the horizontal
    dimension}
  \item{height}{the number of pixels the window spans in the vertical dimension}  
}

\author{
Duncan Temple Lang <duncan@research.bell-labs.com>
}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)


}

\seealso{
\code{\link{gtkWidgetSetUsize}}
}



\keyword{interface}
\keyword{internal}

