\alias{gtkContainerSetFocusChain}
\name{gtkContainerSetFocusChain}
\title{gtkContainerSetFocusChain}
\description{Sets a focus chain, overriding the one computed automatically by GTK+.}
\usage{gtkContainerSetFocusChain(object, focusable.widgets)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{focusable.widgets}}{the new focus chain}
}
\details{In principle each widget in the chain should be a descendant of the 
container, but this is not enforced by this method, since it's allowed 
to set the focus chain before you pack the widgets, or have a widget 
in the chain that isn't always packed. The necessary checks are done 
when the focus chain is actually traversed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
