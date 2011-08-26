\alias{gtkSelectionConvert}
\name{gtkSelectionConvert}
\title{gtkSelectionConvert}
\description{Requests the contents of a selection. When received, 
a "selection-received" signal will be generated.}
\usage{gtkSelectionConvert(object, selection, target, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\verb{object}}{The widget which acts as requestor}
\item{\verb{selection}}{Which selection to get}
\item{\verb{target}}{Form of information desired (e.g., STRING)}
\item{\verb{time}}{Time of request (usually of triggering event)
In emergency, you could use \verb{GDK_CURRENT_TIME}}
}
\value{[logical] \code{TRUE} if requested succeeded. \code{FALSE} if we could not process
request. (e.g., there was already a request in process for
this widget).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
