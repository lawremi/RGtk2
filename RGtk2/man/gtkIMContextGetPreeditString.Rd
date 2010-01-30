\alias{gtkIMContextGetPreeditString}
\name{gtkIMContextGetPreeditString}
\title{gtkIMContextGetPreeditString}
\description{Retrieve the current preedit string for the input context,
and a list of attributes to apply to the string.
This string should be displayed inserted at the insertion
point.}
\usage{gtkIMContextGetPreeditString(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkIMContext}}]     a \verb{\link{GtkIMContext}}}}
\value{
A list containing the following elements:
\item{\verb{str}}{[character]         location to store the retrieved string. The
             string retrieved must be freed with \code{gFree()}.}
\item{\verb{attrs}}{[\verb{\link{PangoAttrList}}]       location to store the retrieved attribute list.
             When you are done with this list, you must
             unreference it with \code{pangoAttrListUnref()}.}
\item{\verb{cursor.pos}}{[integer]  location to store position of cursor (in characters)
             within the preedit string.  }
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
