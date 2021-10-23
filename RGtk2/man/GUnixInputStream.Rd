\alias{GUnixInputStream}
\name{GUnixInputStream}
\title{GUnixInputStream}
\description{Streaming input operations for UNIX file descriptors}
\section{Hierarchy}{\preformatted{GObject
   +----GInputStream
         +----GUnixInputStream}}
\section{Detailed Description}{\verb{GUnixInputStream} implements \verb{\link{GInputStream}} for reading from a
UNIX file descriptor, including asynchronous operations. The file
descriptor must be selectable, so it doesn't work with opened files.
  
Note that \file{<gio/gunixinputstream.h>} belongs 
to the UNIX-specific GIO interfaces, thus you have to use the 
\file{gio-unix-2.0.pc} pkg-config file when using it.}
\section{Properties}{\describe{
\item{\verb{close-fd} [logical : Read / Write]}{

Whether to close the file descriptor when the stream is closed.
  Default value: TRUE  Since 2.20

}
\item{\verb{fd} [integer : Read / Write / Construct Only]}{

The file descriptor that the stream reads from.
  Default value: -1  Since 2.20

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GUnixInputStream.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
