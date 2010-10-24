\alias{atkHypertextGetLinkIndex}
\name{atkHypertextGetLinkIndex}
\title{atkHypertextGetLinkIndex}
\description{Gets the index into the list of hyperlinks that is associated with
the character specified by \code{char.index}.}
\usage{atkHypertextGetLinkIndex(object, char.index)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkHypertext}}]  an \code{\link{AtkHypertext}}}
\item{\verb{char.index}}{[integer]  a character index}
}
\value{[integer]  an index into the list of hyperlinks in \code{hypertext},
or -1 if there is no hyperlink associated with this character.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
