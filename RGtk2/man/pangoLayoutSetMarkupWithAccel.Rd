\alias{pangoLayoutSetMarkupWithAccel}
\name{pangoLayoutSetMarkupWithAccel}
\title{pangoLayoutSetMarkupWithAccel}
\description{Sets the layout text and attribute list from marked-up text (see
markup format). Replaces
the current text and attribute list.}
\usage{pangoLayoutSetMarkupWithAccel(object, markup, accel.marker)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\code{markup}}{[char]  some marked-up text 
(see markup format)}
\item{\code{accel.marker}}{[numeric]  marker for accelerators in the text}
}
\details{If \code{accel.marker} is nonzero, the given character will mark the
character following it as an accelerator. For example, the accel
marker might be an ampersand or underscore. All characters marked
as an accelerator will receive a \code{PANGO_UNDERLINE_LOW} attribute,
and the first character so marked will be returned in \code{accel.char}.
Two \code{accel.marker} characters following each other produce a single
literal \code{accel.marker} character.  }
\value{
A list containing the following elements:
\item{\code{accel.char}}{[numeric]  return location for any located accelerators}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
