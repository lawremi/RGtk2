\alias{gtkTextTagSetPriority}
\name{gtkTextTagSetPriority}
\title{gtkTextTagSetPriority}
\description{Sets the priority of a \code{\link{GtkTextTag}}. Valid priorities are
start at 0 and go to one less than \code{\link{gtkTextTagTableGetSize}}.
Each tag in a table has a unique priority; setting the priority
of one tag shifts the priorities of all the other tags in the
table to maintain a unique priority for each tag. Higher priority
tags "win" if two tags both set the same text attribute. When adding
a tag to a tag table, it will be assigned the highest priority in
the table by default; so normally the precedence of a set of tags
is the order in which they were added to the table, or created with
\code{\link{gtkTextBufferCreateTag}}, which adds the tag to the buffer's table
automatically.}
\usage{gtkTextTagSetPriority(object, priority)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextTag}}}
\item{\verb{priority}}{the new priority}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
