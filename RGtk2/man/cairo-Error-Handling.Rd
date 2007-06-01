\alias{cairo-Error-Handling}
\alias{CairoStatus}
\name{cairo-Error-Handling}
\title{Error handling}
\description{Decoding cairo's status}
\section{Methods and Functions}{\code{\link{cairoStatusToString}(status)}\cr}
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
\item{\code{invalid-restore}}{ cairo\_restore without matching cairo\_save}
\item{\code{invalid-pop-group}}{ no saved group to pop}
\item{\code{no-current-point}}{ no current point defined}
\item{\code{invalid-matrix}}{ invalid matrix (not invertible)}
\item{\code{invalid-status}}{ invalid value for an input cairo\_status\_t}
\item{\code{null-pointer}}{ NULL pointer}
\item{\code{invalid-string}}{ input string not valid UTF-8}
\item{\code{invalid-path-data}}{ input path data not valid}
\item{\code{read-error}}{ error while reading from input stream}
\item{\code{write-error}}{ error while writing to output stream}
\item{\code{surface-finished}}{ target surface has been finished}
\item{\code{surface-type-mismatch}}{ the surface type is not appropriate for the operation}
\item{\code{pattern-type-mismatch}}{ the pattern type is not appropriate for the operation}
\item{\code{invalid-content}}{ invalid value for an input cairo\_content\_t}
\item{\code{invalid-format}}{ invalid value for an input cairo\_format\_t}
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
