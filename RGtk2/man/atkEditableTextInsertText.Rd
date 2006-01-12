\alias{atkEditableTextInsertText}
\name{atkEditableTextInsertText}
\title{atkEditableTextInsertText}
\description{Insert text at a given position.}
\usage{atkEditableTextInsertText(object, string, position)}
\arguments{
\item{\code{object}}{[\code{\link{AtkEditableText}}]  an \code{\link{AtkEditableText}}}
\item{\code{string}}{[character]  the text to insert}
\item{\code{position}}{[integer]  The caller initializes this to 
the position at which to insert the text. After the call it
points at the position after the newly inserted text.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
