\alias{gtkTextIterBackwardToTagToggle}
\name{gtkTextIterBackwardToTagToggle}
\title{gtkTextIterBackwardToTagToggle}
\description{Moves backward to the next toggle (on or off) of the
\code{\link{GtkTextTag}} \code{tag}, or to the next toggle of any tag if
\code{tag} is \code{NULL}. If no matching tag toggles are found,
returns \code{FALSE}, otherwise \code{TRUE}. Does not return toggles
located at \code{iter}, only toggles before \code{iter}. Sets \code{iter}
to the location of the toggle, or the start of the buffer
if no toggle is found.}
\usage{gtkTextIterBackwardToTagToggle(object, tag = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextIter}}}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[logical] whether we found a tag toggle before \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
