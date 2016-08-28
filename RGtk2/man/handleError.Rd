\name{handleError}
\alias{handleError}

\title{
  Error handling
}
\description{
  The \code{handleError} function is an internal utility for use by
  packages extending RGtk2. It decides how to handle an error emitted by
  GTK+ or one of the other libraries.
}
\usage{
handleError(x, .errwarn)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    The result of a call to an underlying library.
  }
  \item{.errwarn}{
    \emph{DEPRECATED}. Whether to emit a warning if there is an error
    and \code{getOption("RGtk2::newErrorHandling")} is 
    \code{FALSE} (\code{TRUE} is now the default).
  }
}
\details{
  There are currently two modes of error handling in RGtk2. One was
  introduced with RGtk2 2.20.0. It is now the default and
  will eventually replace the older
  one. Setting the option \code{RGtk2::newErrorHandling} to \code{FALSE}
  disables the newer error handling, to ease the transition of code.

  The original behavior is to return a list from every library function
  that might raise an error. The \code{error} component of the list
  holds the error, while the primary return value of the underlying
  function is named \code{retval} (and there might be additional return
  values). If there is no error, the \code{error} component is
  \code{NULL}. Otherwise, it holds an object of type
  \code{\link{simpleError}} (actually until 2.20.0 this was just a list
  with a very similar structure).

  The new approach, active when
  \code{getOption("RGtk2::newErrorHandling")} returns \code{TRUE}, will
  throw any error (as a \code{simpleError} object). An error in the
  underlying library is an error in R. No error object is returned. This
  often results in a simpler return value, as a list is no longer
  necessary unless there are multiple return values from the wrapped
  function. The \code{.errwarn} argument is ignored and will soon be
  removed from the wrappers along with the old error handling, resulting
  in a simpler API.
}

\value{
  \code{x}, with the error removed if the "RGtk2::newErrorHandling"
  option is \code{TRUE}.
}
\author{
  Michael Lawrence
}

\keyword{ internal }
