\alias{gdkDisplaySetPointerHooks}
\name{gdkDisplaySetPointerHooks}
\title{gdkDisplaySetPointerHooks}
\description{This function allows for hooking into the operation
of getting the current location of the pointer on a particular
display. This is only useful for such low-level tools as an
event recorder. Applications should never have any
reason to use this facility.}
\usage{gdkDisplaySetPointerHooks(object, new.hooks)}
\arguments{
\item{\verb{object}}{a \code{\link{GdkDisplay}}}
\item{\verb{new.hooks}}{a table of pointers to functions for getting
quantities related to the current pointer position,
or \code{NULL} to restore the default table.}
}
\details{Since 2.2}
\value{[GdkDisplayPointerHooks] the previous pointer hook table}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
