\alias{gtkTextIterEditable}
\name{gtkTextIterEditable}
\title{gtkTextIterEditable}
\description{Returns whether the character at \code{iter} is within an editable region
of text.  Non-editable text is "locked" and can't be changed by the
user via \code{\link{GtkTextView}}. This function is simply a convenience
wrapper around \code{\link{gtkTextIterGetAttributes}}. If no tags applied
to this text affect editability, \code{default.setting} will be returned.}
\usage{gtkTextIterEditable(object, default.setting)}
\arguments{
\item{\verb{object}}{an iterator}
\item{\verb{default.setting}}{\code{TRUE} if text is editable by default}
}
\details{You don't want to use this function to decide whether text can be
inserted at \code{iter}, because for insertion you don't want to know
whether the char at \code{iter} is inside an editable range, you want to
know whether a new character inserted at \code{iter} would be inside an
editable range. Use \code{\link{gtkTextIterCanInsert}} to handle this
case.}
\value{[logical] whether \code{iter} is inside an editable range}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
