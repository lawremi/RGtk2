\name{CairoWriteFunc}
\alias{CairoWriteFunc}
\title{CairoWriteFunc}
\description{A callback used by cairo for outputting graphics data in formats
like svg and png.}
\section{Signature}{
  \describe{
    \item{}{\code{CairoWriteFunc(data, length, user_data)}:
      The type of function which is called when a backend needs to write
      data to an output stream. It is passed the closure which was specified
      by the user at the time the write function was registered, the data to
      write and the length of the data in bytes. The write function should
      return \code{CAIRO_STATUS_SUCCESS} if all the data was successfully
      written, \code{CAIRO_STATUS_WRITE_ERROR} otherwise.
      \describe{
        \item{\code{data}}{[raw] the buffer containing the data to write}
        \item{\code{length}}{[numeric] the amount of data to write}
        \item{\code{user_data}}{[R object] user-supplied data}
      }
    }
  }
}
\references{\url{https://www.cairographics.org/manual/cairo-PNG-Support.html}}
\author{Michael Lawrence}
\keyword{internal}
\keyword{IO}
