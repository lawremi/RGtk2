\alias{gdkKeymapMapVirtualModifiers}
\name{gdkKeymapMapVirtualModifiers}
\title{gdkKeymapMapVirtualModifiers}
\description{Maps the virtual modifiers (i.e. Super, Hyper and Meta) which
are set in \code{state} to their non-virtual counterparts (i.e. Mod2,
Mod3,...) and set the corresponding bits in \code{state}.}
\usage{gdkKeymapMapVirtualModifiers(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkKeymap}}}}
\details{This function is useful when matching key events against
accelerators.
  Since 2.20}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if no virtual modifiers were mapped to the
same non-virtual modifier. Note that \code{FALSE} is also returned
if a virtual modifier is mapped to a non-virtual modifier that
was already set in \code{state}.}
\item{\verb{state}}{pointer to the modifier state to map}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
