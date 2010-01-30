\alias{gtkTargetsIncludeRichText}
\name{gtkTargetsIncludeRichText}
\title{gtkTargetsIncludeRichText}
\description{Determines if any of the targets in \code{targets} can be used to
provide rich text.}
\usage{gtkTargetsIncludeRichText(targets, buffer)}
\arguments{
\item{\verb{targets}}{[\verb{\link{GdkAtom}}]  a list of \verb{\link{GdkAtom}}s}
\item{\verb{buffer}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
}
\details{  Since  2.10}
\value{[logical] \code{TRUE} if \code{targets} include a suitable target for rich text,
              otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
