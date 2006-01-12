\name{GdkEvent}
\alias{GdkEvent}
\title{The GdkEvent Framework}
\description{A \code{GdkEvent} represents a hardware-level event in \code{\link{GDK}}.}
\details{
In RGtk2, R objects corresponding to \code{GdkEvent}s inherit from the \emph{GdkEvent} class.
A \code{GdkEvent} is \emph{not} a \code{GObject}, but there are many specific 
event types that extend from the \emph{GdkEvent} base S3 class. Specific event fields may 
be accessed in the same way as the fields of any external object in RGtk2 (via the 
\code{[[} operator).
}
\note{ 
While functions exist to create \code{GdkEvent}s, there is currently no way 
in RGtk2 to set the event fields, so the functions are useless. If the user has 
some strange motivation to create hardware events in R, please contact the author.
}
\author{Michael Lawrence}
\seealso{
\code{\link{gdk-Event-Structures}}
\code{\link{gdk-Events}}
}
\keyword{interface}
\keyword{internal}

