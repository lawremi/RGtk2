\alias{gtkLabelGetCurrentUri}
\name{gtkLabelGetCurrentUri}
\title{gtkLabelGetCurrentUri}
\description{Returns the URI for the currently active link in the label.
The active link is the one under the mouse pointer or, in a
selectable label, the link in which the text cursor is currently
positioned.}
\usage{gtkLabelGetCurrentUri(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLabel}}}}
\details{This function is intended for use in a \verb{"activate-link"} handler
or for use in a \verb{"query-tooltip"} handler.
  Since 2.18}
\value{[character] the currently active URI.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
