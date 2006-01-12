\alias{gdkPixbufNewFromInline}
\name{gdkPixbufNewFromInline}
\title{gdkPixbufNewFromInline}
\description{Create a \code{\link{GdkPixbuf}} from a flat representation that is suitable for
storing as inline data in a program. This is useful if you want to
ship a program with images, but don't want to depend on any
external files.}
\usage{gdkPixbufNewFromInline(data, copy.pixels)}
\arguments{
\item{\code{data}}{[integer]  Byte data containing a serialized \code{GdkPixdata} structure}
\item{\code{copy.pixels}}{[logical]  Whether to copy the pixel data, or use direct pointers
              \code{data} for the resulting pixbuf}
}
\details{GTK+ ships with a program called \command{gdk-pixbuf-csource} 
which allows for conversion of \code{GdkPixbufs} into such a inline representation.
In almost all cases, you should pass the \option{--raw} flag to
\command{gdk-pixbuf-csource}. A sample invocation would be:
  
\preformatted{ gdk-pixbuf-csource --raw --name=myimage_inline myimage.png}
  
For the typical case where the inline pixbuf is read-only static data,
you don't need to copy the pixel data unless you intend to write to
it, so you can pass \code{FALSE} for \code{copy.pixels}.  (If you pass 
\option{--rle} to \command{gdk-pixbuf-csource}, a copy 
will be made even if \code{copy.pixels} is \code{FALSE}, so using this option is 
generally a bad idea.)
  
If you create a pixbuf from const inline data compiled into your
program, it's probably safe to ignore errors and disable length checks, 
since things will always succeed:
\preformatted{pixbuf = gdk_pixbuf_new_from_inline (-1, myimage_inline, FALSE, NULL);}
  
For non-const inline data, you could get out of memory. For untrusted 
inline data located at runtime, you could have corrupt inline data in 
addition.  }
\value{
A list containing the following elements:
\item{retval [\code{\link{GdkPixbuf}}]}{ A newly-created \code{\link{GdkPixbuf}} structure with a reference,
  count of 1, or \code{NULL} if an error occurred.}
\item{\code{error}}{[\code{\link{GError}}]  \code{\link{GError}} return location, may be \code{NULL} to ignore errors}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
