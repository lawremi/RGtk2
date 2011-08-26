\alias{gtkTextIterBeginsTag}
\name{gtkTextIterBeginsTag}
\title{gtkTextIterBeginsTag}
\description{Returns \code{TRUE} if \code{tag} is toggled on at exactly this point. If \code{tag}
is \code{NULL}, returns \code{TRUE} if any tag is toggled on at this point. Note
that the \code{\link{gtkTextIterBeginsTag}} returns \code{TRUE} if \code{iter} is the
\emph{start} of the tagged range;
\code{\link{gtkTextIterHasTag}} tells you whether an iterator is
\emph{within} a tagged range.}
\usage{gtkTextIterBeginsTag(object, tag = NULL)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[logical] whether \code{iter} is the start of a range tagged with \code{tag}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
