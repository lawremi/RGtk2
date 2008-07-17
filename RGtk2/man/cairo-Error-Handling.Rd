\alias{cairo-Error-Handling}
\alias{CairoStatus}
\name{cairo-Error-Handling}
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
\section{Enums and Flags}{\describe{\item{\code{CairoStatus}}{
\code{\link{CairoStatus}} is used to indicate errors that can occur when
using Cairo. In some cases it is returned directly by functions.
but when using \code{\link{Cairo}}, the last error, if any, is stored in
the context and can be retrieved with \code{\link{cairoStatus}}.
  
New entries may be added in future versions.  Use \code{\link{cairoStatusToString}}
to get a human-readable representation of an error message.  

\describe{
\item{\code{success}}{ no error has occurred}
\item{\code{no-memory}}{ out of memory}
\item{\code{invalid-restore}}{\code{\link{cairoRestore}} called without matching \code{\link{cairoSave}}}
\item{\code{invalid-pop-group}}{ no saved group to pop}
\item{\code{no-current-point}}{ no current point defined}
\item{\code{invalid-matrix}}{ invalid matrix (not invertible)}
\item{\code{invalid-status}}{ invalid value for an input \code{\link{CairoStatus}}}
\item{\code{null-pointer}}{\code{NULL} pointer}
\item{\code{invalid-string}}{ input string not valid UTF-8}
\item{\code{invalid-path-data}}{ input path data not valid}
\item{\code{read-error}}{ error while reading from input stream}
\item{\code{write-error}}{ error while writing to output stream}
\item{\code{surface-finished}}{ target surface has been finished}
\item{\code{surface-type-mismatch}}{ the surface type is not appropriate for the operation}
\item{\code{pattern-type-mismatch}}{ the pattern type is not appropriate for the operation}
\item{\code{invalid-content}}{ invalid value for an input \code{\link{CairoContent}}}
\item{\code{invalid-format}}{ invalid value for an input \code{\link{CairoFormat}}}
\item{\code{invalid-visual}}{ invalid value for an input Visual*}
\item{\code{file-not-found}}{ file not found}
\item{\code{invalid-dash}}{ invalid value for a dash setting}
\item{\code{invalid-dsc-comment}}{ invalid value for a DSC comment (Since 1.2)}
\item{\code{invalid-index}}{ invalid index passed to getter (Since 1.4)}
\item{\code{clip-not-representable}}{ clip region not representable in desired format (Since 1.4)}
}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-Error-Handling.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
