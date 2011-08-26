\alias{gtkTextBufferGetCopyTargetList}
\name{gtkTextBufferGetCopyTargetList}
\title{gtkTextBufferGetCopyTargetList}
\description{This function returns the list of targets this text buffer can
provide for copying and as DND source. The targets in the list are
added with \code{info} values from the \code{\link{GtkTextBufferTargetInfo}} enum,
using \code{\link{gtkTargetListAddRichTextTargets}} and
\code{\link{gtkTargetListAddTextTargets}}.}
\usage{gtkTextBufferGetCopyTargetList(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\details{Since 2.10}
\value{[\code{\link{GtkTargetList}}] the \code{\link{GtkTargetList}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
