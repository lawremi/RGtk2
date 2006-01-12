\alias{cairo-Types}
\alias{cairo_user_data_key_t}
\name{cairo-Types}
\title{Types}
\description{Generic data types used in the cairo API}
\section{Structures}{\describe{\item{\code{cairo_user_data_key_t}}{
\code{\link{cairo_user_data_key_t}} is used for attaching user data to cairo
data structures.  The actual contents of the struct is never used,
and there is no need to initialize the object; only the unique
a \code{cairo_data_key_t} object is used.  Typically, you
would just use the a static \code{cairo_data_key_t} object.  

\describe{\item{\code{unused}}{[integer]  not used; ignore.}}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-Types.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
