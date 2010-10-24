\alias{gtkPreviewSetExpand}
\name{gtkPreviewSetExpand}
\title{gtkPreviewSetExpand}
\description{
Determines the way that the the preview widget behaves
when the size it is allocated is larger than the requested
size. If \code{expand} is \code{FALSE}, then the preview's window
and buffer will be no larger than the size set with
\code{\link{gtkPreviewSize}}, and the data set will be centered
in the allocation if it is larger. If \code{expand} is \code{TRUE}
then the window and buffer will expand with the allocation;
the application is responsible for catching
the "size_allocate" signal and providing the data
appropriate for this size.
\strong{WARNING: \code{gtk_preview_set_expand} is deprecated and should not be used in newly-written code.}
}
\usage{gtkPreviewSetExpand(object, expand)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPreview}}.}
\item{\verb{expand}}{whether the preview's window should expand or not.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
