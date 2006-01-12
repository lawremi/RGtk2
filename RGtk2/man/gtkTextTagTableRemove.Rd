\alias{gtkTextTagTableRemove}
\name{gtkTextTagTableRemove}
\title{gtkTextTagTableRemove}
\description{Remove a tag from the table. This will remove the table's
reference to the tag, so be careful - the tag will end
up destroyed if you don't have a reference to it.}
\usage{gtkTextTagTableRemove(object, tag)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextTagTable}}]  a \code{\link{GtkTextTagTable}}}
\item{\code{tag}}{[\code{\link{GtkTextTag}}]  a \code{\link{GtkTextTag}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
