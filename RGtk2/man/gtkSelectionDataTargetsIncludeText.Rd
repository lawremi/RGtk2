\alias{gtkSelectionDataTargetsIncludeText}
\name{gtkSelectionDataTargetsIncludeText}
\title{gtkSelectionDataTargetsIncludeText}
\description{Given a \code{\link{GtkSelectionData}} object holding a list of targets,
determines if any of the targets in \code{targets} can be used to
provide text.}
\usage{gtkSelectionDataTargetsIncludeText(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSelectionData}} object}}
\value{[logical] \code{TRUE} if \code{selection.data} holds a list of targets,
and a suitable target for text is included, otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
