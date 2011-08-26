\alias{gtkMiscGetAlignment}
\name{gtkMiscGetAlignment}
\title{gtkMiscGetAlignment}
\description{Gets the X and Y alignment of the widget within its allocation. 
See \code{\link{gtkMiscSetAlignment}}.}
\usage{gtkMiscGetAlignment(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkMisc}}}}
\value{
A list containing the following elements:
\item{\verb{xalign}}{location to store X alignment of \code{misc}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{yalign}}{location to store Y alignment of \code{misc}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
