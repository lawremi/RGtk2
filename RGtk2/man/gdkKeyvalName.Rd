\alias{gdkKeyvalName}
\name{gdkKeyvalName}
\title{gdkKeyvalName}
\description{Converts a key value into a symbolic name.
The names are the same as those in the \file{<gdk/gdkkeysyms.h>} header file
but without the leading "GDK_".}
\usage{gdkKeyvalName(keyval)}
\arguments{\item{\verb{keyval}}{a key value.}}
\value{[character] a string containing the name of the key, or \code{NULL} if \code{keyval} is not
a valid key. The string should not be modified.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
