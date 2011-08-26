\alias{gtkAcceleratorName}
\name{gtkAcceleratorName}
\title{gtkAcceleratorName}
\description{Converts an accelerator keyval and modifier mask
into a string parseable by \code{\link{gtkAcceleratorParse}}.
For example, if you pass in \verb{GDK_q} and \verb{GDK_CONTROL_MASK},
this function returns "<Control>q". }
\usage{gtkAcceleratorName(accelerator.key, accelerator.mods)}
\arguments{
\item{\verb{accelerator.key}}{accelerator keyval}
\item{\verb{accelerator.mods}}{accelerator modifier mask}
}
\details{If you need to display accelerators in the user interface,
see \code{\link{gtkAcceleratorGetLabel}}.}
\value{[character] a newly-allocated accelerator name}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
