\alias{gtkTextBufferGetPasteTargetList}
\name{gtkTextBufferGetPasteTargetList}
\title{gtkTextBufferGetPasteTargetList}
\description{This function returns the list of targets this text buffer supports
for pasting and as DND destination. The targets in the list are
added with \code{info} values from the \code{\link{GtkTextBufferTargetInfo}} enum,
using \code{\link{gtkTargetListAddRichTextTargets}} and
\code{\link{gtkTargetListAddTextTargets}}.}
\usage{gtkTextBufferGetPasteTargetList(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}}
\details{  Since  2.10}
\value{[\verb{\link{GtkTargetList}}]  the \verb{\link{GtkTargetList}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
