\alias{gtkSelectionDataTargetsIncludeRichText}
\name{gtkSelectionDataTargetsIncludeRichText}
\title{gtkSelectionDataTargetsIncludeRichText}
\description{Given a \code{\link{GtkSelectionData}} object holding a list of targets,
determines if any of the targets in \code{targets} can be used to
provide rich text.}
\usage{gtkSelectionDataTargetsIncludeRichText(object, buffer)}
\arguments{
\item{\code{object}}{[\code{\link{GtkSelectionData}}]  a \code{\link{GtkSelectionData}} object}
\item{\code{buffer}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
}
\details{  Since  2.10}
\value{[logical] \code{TRUE} if \code{selection.data} holds a list of targets,
              and a suitable target for rich text is included,
              otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
