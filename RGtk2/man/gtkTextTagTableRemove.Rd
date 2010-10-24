\alias{gtkTextTagTableRemove}
\name{gtkTextTagTableRemove}
\title{gtkTextTagTableRemove}
\description{Remove a tag from the table. This will remove the table's
reference to the tag, so be careful - the tag will end
up destroyed if you don't have a reference to it.}
\usage{gtkTextTagTableRemove(object, tag)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextTagTable}}}
\item{\verb{tag}}{a \code{\link{GtkTextTag}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
