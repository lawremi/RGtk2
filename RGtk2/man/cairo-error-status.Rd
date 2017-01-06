\alias{cairo-error-status}
\alias{CairoStatus}
\name{cairo-error-status}
\title{Error handling}
\description{Decoding cairo's status}
\section{Methods and Functions}{\code{\link{cairoStatusToString}(status)}\cr}
\section{Detailed Description}{Cairo uses a single status type to represent all kinds of errors.  A status
value of \code{CAIRO_STATUS_SUCCESS} represents no error and has an integer value
of zero.  All other status values represent an error.
  
Cairo's error handling is designed to be easy to use and safe.  All major
cairo objects \dfn{retain} an error status internally which
can be queried anytime by the users using cairo*\code{status()} calls.  In
the mean time, it is safe to call all cairo functions normally even if the
underlying object is in an error status.  This means that no error handling
code is required before or after each individual cairo function call.}
\section{Enums and Flags}{\describe{\item{\verb{CairoStatus}}{
\code{\link{CairoStatus}} is used to indicate errors that can occur when
using Cairo. In some cases it is returned directly by functions.
but when using \code{\link{Cairo}}, the last error, if any, is stored in
the context and can be retrieved with \code{\link{cairoStatus}}.
  
New entries may be added in future versions.  Use \code{\link{cairoStatusToString}}
to get a human-readable representation of an error message.  

\describe{
\item{\verb{success}}{ no error has occurred}
\item{\verb{no-memory}}{ out of memory}
\item{\verb{invalid-restore}}{\code{\link{cairoRestore}} called without matching \code{\link{cairoSave}}}
\item{\verb{invalid-pop-group}}{ no saved group to pop}
\item{\verb{no-current-point}}{ no current point defined}
\item{\verb{invalid-matrix}}{ invalid matrix (not invertible)}
\item{\verb{invalid-status}}{ invalid value for an input \code{\link{CairoStatus}}}
\item{\verb{null-pointer}}{\code{NULL} pointer}
\item{\verb{invalid-string}}{ input string not valid UTF-8}
\item{\verb{invalid-path-data}}{ input path data not valid}
\item{\verb{read-error}}{ error while reading from input stream}
\item{\verb{write-error}}{ error while writing to output stream}
\item{\verb{surface-finished}}{ target surface has been finished}
\item{\verb{surface-type-mismatch}}{ the surface type is not appropriate for the operation}
\item{\verb{pattern-type-mismatch}}{ the pattern type is not appropriate for the operation}
\item{\verb{invalid-content}}{ invalid value for an input \code{\link{CairoContent}}}
\item{\verb{invalid-format}}{ invalid value for an input \code{\link{CairoFormat}}}
\item{\verb{invalid-visual}}{ invalid value for an input Visual*}
\item{\verb{file-not-found}}{ file not found}
\item{\verb{invalid-dash}}{ invalid value for a dash setting}
\item{\verb{invalid-dsc-comment}}{ invalid value for a DSC comment (Since 1.2)}
\item{\verb{invalid-index}}{ invalid index passed to getter (Since 1.4)}
\item{\verb{clip-not-representable}}{ clip region not representable in desired format (Since 1.4)}
}

}}}
\references{\url{https://www.cairographics.org/manual/cairo-Error-handling.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
