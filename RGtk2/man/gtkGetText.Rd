\name{gtkGetText}
\alias{gtkTextGetText}
\alias{gtkTextSetText}
\alias{gtkTextClearText}
\title{Access contents of Gtk text widget}
\description{
\strong{DEPRECATED!! (compatibility wrappers for RGtk 1!)} 

These functions allow
one to retrieve or set the contents
of a Gtk text widget.
}
\usage{
gtkTextSetText(w, contents="", append = FALSE)
gtkTextGetText(w)
gtkTextClearText(w, start=0, end=-1)
}
\arguments{
  \item{w}{the GtkTextWidget whose contents are to be accessed}
  \item{contents}{a character vector (of length 1) giving the 
   contents to be either appended or inserted into the text widget.}
  \item{append}{a logical value indicating whether the
   new text is to be appended to the existing contents or 
   used to replace it. If this is \code{FALSE}, the text widget
   is currently cleared first.}
  \item{start}{locations in the text widget where the 
   to start clearing the text. These are essentially character offsets
  into the string at present.}
  \item{end}{locations in the text widget where the 
   to complete clearing the text. These are essentially character offsets
  into the string at present.}
}

\references{
\url{http://www.gtk.org}
\url{http://www.omegahat.net/RGtk/}
}
\author{Duncan Temple Lang}
\note{
THIS STUFF IS VERY OLD AND DEPRECATED (compatibility wrappers for RGtk 1)

This is an extra-ordinarily early release 
intended to encourage others to contribute code, etc.}

\keyword{interface}
\keyword{internal}


