\alias{gtkTextBufferAddSelectionClipboard}
\name{gtkTextBufferAddSelectionClipboard}
\title{gtkTextBufferAddSelectionClipboard}
\description{Adds \code{clipboard} to the list of clipboards in which the selection 
contents of \code{buffer} are available. In most cases, \code{clipboard} will be 
the \code{\link{GtkClipboard}} of type \code{GDK_SELECTION_PRIMARY} for a view of \code{buffer}.}
\usage{gtkTextBufferAddSelectionClipboard(object, clipboard)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}
\item{\verb{clipboard}}{a \code{\link{GtkClipboard}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
