\alias{gdkKeymapAddVirtualModifiers}
\name{gdkKeymapAddVirtualModifiers}
\title{gdkKeymapAddVirtualModifiers}
\description{Adds virtual modifiers (i.e. Super, Hyper and Meta) which correspond
to the real modifiers (i.e Mod2, Mod3, ...) in \code{modifiers}.
are set in \code{state} to their non-virtual counterparts (i.e. Mod2,
Mod3,...) and set the corresponding bits in \code{state}.}
\usage{gdkKeymapAddVirtualModifiers(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkKeymap}}}}
\details{GDK already does this before delivering key events, but for
compatibility reasons, it only sets the first virtual modifier
it finds, whereas this function sets all matching virtual modifiers.
  
This function is useful when matching key events against
accelerators.
  Since 2.20}
\value{
A list containing the following elements:
\item{\verb{state}}{pointer to the modifier mask to change}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
