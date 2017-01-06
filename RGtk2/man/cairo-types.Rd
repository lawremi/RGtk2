\alias{cairo-types}
\alias{CairoUserDataKey}
\alias{cairo_destroy_func_t}
\name{cairo-types}
\title{Types}
\description{Generic data types}
\section{Detailed Description}{Generic data types used in the cairo API}
\section{Structures}{\describe{\item{\verb{CairoUserDataKey}}{
\code{\link{CairoUserDataKey}} is used for attaching user data to cairo
data structures.  The actual contents of the struct is never used,
and there is no need to initialize the object; only the unique
a \verb{cairo_data_key_t} object is used.  Typically, you
would just use the a static \verb{cairo_data_key_t} object.  

\describe{\item{\code{unused}}{[integer]  not used; ignore.}}

}}}
\section{User Functions}{\describe{\item{\code{cairo_destroy_func_t(data)}}{
\verb{cairo_destroy_func_t} the type of function which is called when a
data element is destroyed. It is passed the pointer to the data
element and should free any memory and resources allocated for it.  

\describe{\item{\code{data}}{[R object]  The data element being destroyed.}}


}}}
\references{\url{https://www.cairographics.org/manual/cairo-Types.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
