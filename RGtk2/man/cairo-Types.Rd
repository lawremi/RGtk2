\alias{cairo-Types}
\alias{CairoUserDataKey}
\name{cairo-Types}
\title{Types}
\description{Generic data types used in the cairo API}
\section{Structures}{\describe{\item{\code{CairoUserDataKey}}{
\code{\link{CairoUserDataKey}} is used for attaching user data to cairo
data structures.  The actual contents of the struct is never used,
and there is no need to initialize the object; only the unique
a \code{cairo_data_key_t} object is used.  Typically, you
would just use the a static \code{cairo_data_key_t} object.  

\describe{\item{\code{unused}}{[integer]  not used; ignore.}}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-Types.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
