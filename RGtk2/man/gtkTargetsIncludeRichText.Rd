\alias{gtkTargetsIncludeRichText}
\name{gtkTargetsIncludeRichText}
\title{gtkTargetsIncludeRichText}
\description{Determines if any of the targets in \code{targets} can be used to
provide rich text.}
\usage{gtkTargetsIncludeRichText(targets, buffer)}
\arguments{
\item{\code{targets}}{[\code{\link{GdkAtom}}]  a list of \code{\link{GdkAtom}}s}
\item{\code{buffer}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
}
\details{  Since  2.10}
\value{[logical] \code{TRUE} if \code{targets} include a suitable target for rich text,
              otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
