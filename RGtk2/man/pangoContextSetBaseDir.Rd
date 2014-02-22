\alias{pangoContextSetBaseDir}
\name{pangoContextSetBaseDir}
\title{pangoContextSetBaseDir}
\description{Sets the base direction for the context.}
\usage{pangoContextSetBaseDir(object, direction)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoContext}}]  a \code{\link{PangoContext}}}
\item{\verb{direction}}{[\code{\link{PangoDirection}}]  the new base direction}
}
\details{The base direction is used in applying the Unicode bidirectional
algorithm; if the \code{direction} is \code{PANGO_DIRECTION_LTR} or
\code{PANGO_DIRECTION_RTL}, then the value will be used as the paragraph
direction in the Unicode bidirectional algorithm.  A value of
\code{PANGO_DIRECTION_WEAK_LTR} or \code{PANGO_DIRECTION_WEAK_RTL} is used only
for paragraphs that do not contain any strong characters themselves.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
