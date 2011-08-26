\alias{gtkInfoBarAddButtons}
\name{gtkInfoBarAddButtons}
\title{gtkInfoBarAddButtons}
\description{Adds more buttons, same as calling \code{\link{gtkInfoBarAddButton}}
repeatedly. The variable argument list should be \code{NULL}-terminated
as with \code{\link{gtkInfoBarNewWithButtons}}. Each button must have both
text and response ID.}
\usage{gtkInfoBarAddButtons(object, first.button.text, ...)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkInfoBar}}}
\item{\verb{first.button.text}}{button text or stock ID}
\item{\verb{...}}{response ID for first button, then more text-response_id pairs,
ending with \code{NULL}}
}
\details{Since 2.18}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
