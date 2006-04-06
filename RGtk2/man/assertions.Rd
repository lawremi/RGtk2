\alias{checkPtrType}
\alias{checkArrType}
\alias{implements}
\name{assertions}
\title{RGtk2 Type Assertion}
\description{Assert that an object is of a particular type}
\usage{
checkPtrType(w, klass = "GtkWidget", nullOk = FALSE, critical = TRUE)
implements(obj, interface)
}
\arguments{
\item{w}{An object whose type is to be verified.}
\item{klass}{The type the object is expected to be.}
\item{nullOk}{Whether the object is allowed to be \code{NULL}.}
\item{critical}{Whether to stop if the object is not of the specified type. If this
is a character vector, then the function will stop on mismatch and report that string
as the error message.}
\item{obj}{A GObject.}
\item{interface}{The interface that \code{obj} is expected to implement.}
}
\details{
All RGtk2 functions check that the arguments are of the correct type, if possible.
The \code{checkPtrType} function is most useful to the user when it is not known if an object is of
the required type. A good example is the \emph{user data} argument of a callback function.
To see if a \code{GObject} implements a certain interface, use \code{implements}.
}
\author{Michael Lawrence and Duncan Temple Lang}
\keyword{misc}
