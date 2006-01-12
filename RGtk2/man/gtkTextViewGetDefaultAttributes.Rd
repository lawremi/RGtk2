\alias{gtkTextViewGetDefaultAttributes}
\name{gtkTextViewGetDefaultAttributes}
\title{gtkTextViewGetDefaultAttributes}
\description{Obtains a copy of the default text attributes. These are the
attributes used for text unless a tag overrides them.
You'd typically pass the default attributes in to
\code{\link{gtkTextIterGetAttributes}} in order to get the
attributes in effect at a given text position.}
\usage{gtkTextViewGetDefaultAttributes(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTextView}}]  a \code{\link{GtkTextView}}}}
\details{  .}
\value{[\code{\link{GtkTextAttributes}}]  a new \code{\link{GtkTextAttributes}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
