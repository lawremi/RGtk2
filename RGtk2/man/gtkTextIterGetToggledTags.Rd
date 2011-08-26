\alias{gtkTextIterGetToggledTags}
\name{gtkTextIterGetToggledTags}
\title{gtkTextIterGetToggledTags}
\description{Returns a list of \code{\link{GtkTextTag}} that are toggled on or off at this
point.  (If \code{toggled.on} is \code{TRUE}, the list contains tags that are
toggled on.) If a tag is toggled on at \code{iter}, then some non-empty
range of characters following \code{iter} has that tag applied to it.  If
a tag is toggled off, then some non-empty range following \code{iter}
does \emph{not} have the tag applied to it.}
\usage{gtkTextIterGetToggledTags(object, toggled.on)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{toggled.on}}{\code{TRUE} to get toggled-on tags}
}
\value{[list] tags toggled at this point. \emph{[  \acronym{element-type}   GtkTextTag][  \acronym{transfer container}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
