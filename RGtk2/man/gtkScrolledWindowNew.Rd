\alias{gtkScrolledWindowNew}
\name{gtkScrolledWindowNew}
\title{gtkScrolledWindowNew}
\description{Creates a new scrolled window.}
\usage{gtkScrolledWindowNew(hadjustment = NULL, vadjustment = NULL, 
    show = TRUE)}
\arguments{
\item{\verb{hadjustment}}{horizontal adjustment. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{vadjustment}}{vertical adjustment. \emph{[  \acronym{allow-none}  ]}}
}
\details{The two arguments are the scrolled window's adjustments; these will be
shared with the scrollbars and the child widget to keep the bars in sync 
with the child. Usually you want to pass \code{NULL} for the adjustments, which 
will cause the scrolled window to create them for you.}
\value{[\code{\link{GtkWidget}}] a new scrolled window}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
