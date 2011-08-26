\alias{gtkDragFinish}
\name{gtkDragFinish}
\title{gtkDragFinish}
\description{Informs the drag source that the drop is finished, and
that the data of the drag will no longer be required.}
\usage{gtkDragFinish(object, success, del, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{the drag context.}
\item{\verb{success}}{a flag indicating whether the drop was successful}
\item{\verb{del}}{a flag indicating whether the source should delete the
original data. (This should be \code{TRUE} for a move)}
\item{\verb{time}}{the timestamp from the "drag_data_drop" signal.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
