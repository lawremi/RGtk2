\alias{cairo-png-functions}
\alias{cairo_read_func_t}
\alias{cairo_write_func_t}
\name{cairo-png-functions}
\title{PNG Support}
\description{Reading and writing PNG images}
\section{Methods and Functions}{
\code{\link{cairoImageSurfaceCreateFromPng}(filename)}\cr
\code{\link{cairoImageSurfaceCreateFromPngStream}(con)}\cr
\code{\link{cairoSurfaceWriteToPng}(surface, filename)}\cr
\code{\link{cairoSurfaceWriteToPngStream}(surface, con)}\cr
}
\section{Detailed Description}{The PNG functions allow reading PNG images into image surfaces, and writing
any surface to a PNG file.}
\section{User Functions}{\describe{
\item{\code{cairo_read_func_t(closure, data, length)}}{
\verb{cairo_read_func_t} is the type of function which is called when a
backend needs to read data from an input stream.  It is passed the
closure which was specified by the user at the time the read
function was registered, the buffer to read the data into and the
length of the data in bytes.  The read function should return
\code{CAIRO_STATUS_SUCCESS} if all the data was successfully read,
\code{CAIRO_STATUS_READ_ERROR} otherwise.  

\describe{
\item{\code{closure}}{[R object]  the input closure}
\item{\code{data}}{[char]  the buffer into which to read the data}
\item{\code{length}}{[integer]  the amount of data to read}
}

\emph{Returns:} [\code{\link{CairoStatus}}]  the status code of the read operation

}
\item{\code{cairo_write_func_t(closure, data, length)}}{
\code{\link{CairoWriteFunc}} is the type of function which is called when a
backend needs to write data to an output stream.  It is passed the
closure which was specified by the user at the time the write
function was registered, the data to write and the length of the
data in bytes.  The write function should return
\code{CAIRO_STATUS_SUCCESS} if all the data was successfully written,
\code{CAIRO_STATUS_WRITE_ERROR} otherwise.  

\describe{
\item{\code{closure}}{[R object]  the output closure}
\item{\code{data}}{[char]  the buffer containing the data to write}
\item{\code{length}}{[integer]  the amount of data to write}
}

\emph{Returns:} [\code{\link{CairoStatus}}]  the status code of the write operation

}
}}
\references{\url{https://www.cairographics.org/manual/cairo-PNG-Support.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
