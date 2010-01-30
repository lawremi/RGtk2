\alias{atkEditableTextInsertText}
\name{atkEditableTextInsertText}
\title{atkEditableTextInsertText}
\description{Insert text at a given position.}
\usage{atkEditableTextInsertText(object, string, position)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkEditableText}}]  an \verb{\link{AtkEditableText}}}
\item{\verb{string}}{[character]  the text to insert}
\item{\verb{position}}{[integer]  The caller initializes this to 
the position at which to insert the text. After the call it
points at the position after the newly inserted text.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
