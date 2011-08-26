\alias{gtkTextIterEndsTag}
\name{gtkTextIterEndsTag}
\title{gtkTextIterEndsTag}
\description{Returns \code{TRUE} if \code{tag} is toggled off at exactly this point. If \code{tag}
is \code{NULL}, returns \code{TRUE} if any tag is toggled off at this point. Note
that the \code{\link{gtkTextIterEndsTag}} returns \code{TRUE} if \code{iter} is the
\emph{end} of the tagged range;
\code{\link{gtkTextIterHasTag}} tells you whether an iterator is
\emph{within} a tagged range.}
\usage{gtkTextIterEndsTag(object, tag = NULL)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[logical] whether \code{iter} is the end of a range tagged with \code{tag}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
