\alias{cairo-Error-handling}
\alias{CairoStatus}
\name{cairo-Error-handling}
\title{Error handling}
\description{Decoding cairo's status}
\section{Methods and Functions}{\code{\link{cairoStatusToString}(status)}\cr}
\section{Enums and Flags}{\describe{\item{\code{CairoStatus}}{
\code{\link{CairoStatus}} is used to indicate errors that can occur when
using Cairo. In some cases it is returned directly by functions.
but when using \code{\link{Cairo}}, the last error, if any, is stored in
the context and can be retrieved with \code{\link{cairoStatus}}.  

\describe{
\item{\code{CAIRO_STATUS_SUCCESS (success)}}{ no error has occurred}
\item{\code{CAIRO_STATUS_NO_MEMORY (no-memory)}}{ out of memory}
\item{\code{CAIRO_STATUS_INVALID_RESTORE (invalid-restore)}}{ cairo_restore without matching cairo_save}
\item{\code{CAIRO_STATUS_INVALID_POP_GROUP (invalid-pop-group)}}{ no saved group to pop}
\item{\code{CAIRO_STATUS_NO_CURRENT_POINT (no-current-point)}}{ no current point defined}
\item{\code{CAIRO_STATUS_INVALID_MATRIX (invalid-matrix)}}{ invalid matrix (not invertible)}
\item{\code{CAIRO_STATUS_INVALID_STATUS (invalid-status)}}{ invalid value for an input cairo_status_t}
\item{\code{CAIRO_STATUS_NULL_POINTER (null-pointer)}}{ NULL pointer}
\item{\code{CAIRO_STATUS_INVALID_STRING (invalid-string)}}{ input string not valid UTF-8}
\item{\code{CAIRO_STATUS_INVALID_PATH_DATA (invalid-path-data)}}{ input path data not valid}
\item{\code{CAIRO_STATUS_READ_ERROR (read-error)}}{ error while reading from input stream}
\item{\code{CAIRO_STATUS_WRITE_ERROR (write-error)}}{ error while writing to output stream}
\item{\code{CAIRO_STATUS_SURFACE_FINISHED (surface-finished)}}{ target surface has been finished}
\item{\code{CAIRO_STATUS_SURFACE_TYPE_MISMATCH (surface-type-mismatch)}}{ the surface type is not appropriate for the operation}
\item{\code{CAIRO_STATUS_PATTERN_TYPE_MISMATCH (pattern-type-mismatch)}}{ the pattern type is not appropriate for the operation}
\item{\code{CAIRO_STATUS_INVALID_CONTENT (invalid-content)}}{ invalid value for an input cairo_content_t}
\item{\code{CAIRO_STATUS_INVALID_FORMAT (invalid-format)}}{ invalid value for an input cairo_format_t}
\item{\code{CAIRO_STATUS_INVALID_VISUAL (invalid-visual)}}{ invalid value for an input Visual*}
\item{\code{CAIRO_STATUS_FILE_NOT_FOUND (file-not-found)}}{ file not found}
\item{\code{CAIRO_STATUS_INVALID_DASH (invalid-dash)}}{ invalid value for a dash setting}
}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-Error-handling.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
