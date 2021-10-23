\alias{GCharsetConverter}
\name{GCharsetConverter}
\title{GCharsetConverter}
\description{Convert between charsets}
\section{Hierarchy}{\preformatted{GObject
   +----GCharsetConverter}}
\section{Interfaces}{GCharsetConverter implements
 GConverter and  \code{\link{GInitable}}.}
\section{Detailed Description}{\verb{GCharsetConverter} is an implementation of \verb{GConverter} based on
GIConv.}
\section{Properties}{\describe{
\item{\verb{from-charset} [character : *                : Read / Write / Construct Only]}{

The character encoding to convert from.  Default value: NULL

}
\item{\verb{to-charset} [character : *                : Read / Write / Construct Only]}{

The character encoding to convert to.  Default value: NULL

}
\item{\verb{use-fallback} [logical : Read / Write / Construct]}{

Use fallback (of form \\<hexval>) for invalid bytes.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GCharsetConverter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
