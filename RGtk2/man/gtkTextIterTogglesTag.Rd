\alias{gtkTextIterTogglesTag}
\name{gtkTextIterTogglesTag}
\title{gtkTextIterTogglesTag}
\description{This is equivalent to (\code{\link{gtkTextIterBeginsTag}} ||
\code{\link{gtkTextIterEndsTag}}), i.e. it tells you whether a range with
\code{tag} applied to it begins \emph{or} ends at \code{iter}.}
\usage{gtkTextIterTogglesTag(object, tag = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextIter}}]  an iterator}
\item{\verb{tag}}{[\verb{\link{GtkTextTag}}]  a \verb{\link{GtkTextTag}}, or \code{NULL}}
}
\value{[logical]  whether \code{tag} is toggled on or off at \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
