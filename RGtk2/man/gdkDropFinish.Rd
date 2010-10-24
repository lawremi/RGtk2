\alias{gdkDropFinish}
\name{gdkDropFinish}
\title{gdkDropFinish}
\description{Ends the drag operation after a drop.}
\usage{gdkDropFinish(object, success, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{a \verb{GtkDragContext}.}
\item{\verb{success}}{\code{TRUE} if the data was successfully received.}
\item{\verb{time}}{the timestamp for this operation.}
}
\details{This function is called by the drag destination.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
