\alias{gtkAlignmentGetPadding}
\name{gtkAlignmentGetPadding}
\title{gtkAlignmentGetPadding}
\description{Gets the padding on the different sides of the widget.
See \code{\link{gtkAlignmentSetPadding}}.}
\usage{gtkAlignmentGetPadding(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkAlignment}}}}
\details{Since 2.4}
\value{
A list containing the following elements:
\item{\verb{padding.top}}{location to store the padding for the top of the widget, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{padding.bottom}}{location to store the padding for the bottom of the widget, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{padding.left}}{location to store the padding for the left of the widget, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{padding.right}}{location to store the padding for the right of the widget, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
