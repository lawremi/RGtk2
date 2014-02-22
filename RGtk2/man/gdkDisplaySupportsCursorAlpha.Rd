\alias{gdkDisplaySupportsCursorAlpha}
\name{gdkDisplaySupportsCursorAlpha}
\title{gdkDisplaySupportsCursorAlpha}
\description{Returns \code{TRUE} if cursors can use an 8bit alpha channel
on \code{display}. Otherwise, cursors are restricted to bilevel
alpha (i.e. a mask).}
\usage{gdkDisplaySupportsCursorAlpha(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkDisplay}}}}
\details{Since 2.4}
\value{[logical] whether cursors can have alpha channels.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
