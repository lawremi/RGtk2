\alias{gtkDragGetData}
\name{gtkDragGetData}
\title{gtkDragGetData}
\description{Gets the data associated with a drag. When the data
is received or the retrieval fails, GTK+ will emit a
"drag_data_received" signal. Failure of the retrieval
is indicated by the length field of the \code{selection.data}
signal parameter being negative. However, when \code{\link{gtkDragGetData}}
is called implicitely because the \code{GTK_DEST_DEFAULT_DROP} was set,
then the widget will not receive notification of failed
drops.}
\usage{gtkDragGetData(object, context, target, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{the widget that will receive the "drag_data_received"
signal.}
\item{\verb{context}}{the drag context}
\item{\verb{target}}{the target (form of the data) to retrieve.}
\item{\verb{time}}{a timestamp for retrieving the data. This will
generally be the time received in a "drag_data_motion"
or "drag_data_drop" signal.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
