\alias{gtkTextBufferGetPasteTargetList}
\name{gtkTextBufferGetPasteTargetList}
\title{gtkTextBufferGetPasteTargetList}
\description{This function returns the list of targets this text buffer supports
for pasting and as DND destination. The targets in the list are
added with \code{info} values from the \code{\link{GtkTextBufferTargetInfo}} enum,
using \code{\link{gtkTargetListAddRichTextTargets}} and
\code{\link{gtkTargetListAddTextTargets}}.}
\usage{gtkTextBufferGetPasteTargetList(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\details{Since 2.10}
\value{[\code{\link{GtkTargetList}}] the \code{\link{GtkTargetList}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
