\alias{gtkAcceleratorValid}
\name{gtkAcceleratorValid}
\title{gtkAcceleratorValid}
\description{Determines whether a given keyval and modifier mask constitute
a valid keyboard accelerator. For example, the \verb{GDK_a} keyval
plus \verb{GDK_CONTROL_MASK} is valid - this is a "Ctrl+a" accelerator.
But, you can't, for instance, use the \verb{GDK_Control_L} keyval
as an accelerator.}
\usage{gtkAcceleratorValid(keyval, modifiers)}
\arguments{
\item{\verb{keyval}}{a GDK keyval}
\item{\verb{modifiers}}{modifier mask}
}
\value{[logical] \code{TRUE} if the accelerator is valid}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
