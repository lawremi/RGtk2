\alias{gtkTextIterForwardToTagToggle}
\name{gtkTextIterForwardToTagToggle}
\title{gtkTextIterForwardToTagToggle}
\description{Moves forward to the next toggle (on or off) of the
\code{\link{GtkTextTag}} \code{tag}, or to the next toggle of any tag if
\code{tag} is \code{NULL}. If no matching tag toggles are found,
returns \code{FALSE}, otherwise \code{TRUE}. Does not return toggles
located at \code{iter}, only toggles after \code{iter}. Sets \code{iter} to
the location of the toggle, or to the end of the buffer
if no toggle is found.}
\usage{gtkTextIterForwardToTagToggle(object, tag = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[logical] whether we found a tag toggle after \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
