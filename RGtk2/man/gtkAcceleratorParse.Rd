\alias{gtkAcceleratorParse}
\name{gtkAcceleratorParse}
\title{gtkAcceleratorParse}
\description{Parses a string representing an accelerator. The
format looks like "<Control>a" or "<Shift><Alt>F1" or
"<Release>z" (the last one is for key release).
The parser is fairly liberal and allows lower or upper case,
and also abbreviations such as "<Ctl>" and "<Ctrl>".}
\usage{gtkAcceleratorParse(accelerator)}
\arguments{\item{\verb{accelerator}}{string representing an accelerator}}
\details{If the parse fails, \code{accelerator.key} and \code{accelerator.mods} will
be set to 0 (zero).}
\value{
A list containing the following elements:
\item{\verb{accelerator.key}}{return location for accelerator keyval}
\item{\verb{accelerator.mods}}{return location for accelerator modifier mask}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
