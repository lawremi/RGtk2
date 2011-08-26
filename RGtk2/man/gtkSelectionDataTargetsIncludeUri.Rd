\alias{gtkSelectionDataTargetsIncludeUri}
\name{gtkSelectionDataTargetsIncludeUri}
\title{gtkSelectionDataTargetsIncludeUri}
\description{Given a \code{\link{GtkSelectionData}} object holding a list of targets,
determines if any of the targets in \code{targets} can be used to
provide a list or URIs.}
\usage{gtkSelectionDataTargetsIncludeUri(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkSelectionData}} object}}
\details{Since 2.10}
\value{[logical] \code{TRUE} if \code{selection.data} holds a list of targets,
and a suitable target for URI lists is included, otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
