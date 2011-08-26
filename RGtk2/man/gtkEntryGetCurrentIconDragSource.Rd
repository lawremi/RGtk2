\alias{gtkEntryGetCurrentIconDragSource}
\name{gtkEntryGetCurrentIconDragSource}
\title{gtkEntryGetCurrentIconDragSource}
\description{Returns the index of the icon which is the source of the current
DND operation, or -1.}
\usage{gtkEntryGetCurrentIconDragSource(object)}
\arguments{\item{\verb{object}}{a \verb{GtkIconEntry}}}
\details{This function is meant to be used in a \verb{"drag-data-get"}
callback.
  Since 2.16}
\value{[integer] index of the icon which is the source of the current
DND operation, or -1.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
