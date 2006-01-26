\alias{gtkSelectionConvert}
\name{gtkSelectionConvert}
\title{gtkSelectionConvert}
\description{Requests the contents of a selection. When received, 
a "selection_received" signal will be generated.}
\usage{gtkSelectionConvert(object, selection, target, time = "GDK_CURRENT_TIME")}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  The widget which acts as requestor}
\item{\code{selection}}{[\code{\link{GdkAtom}}]  Which selection to get}
\item{\code{target}}{[\code{\link{GdkAtom}}]  Form of information desired (e.g., STRING)}
\item{\code{time}}{[numeric]  Time of request (usually of triggering event)
       In emergency, you could use \code{GDK_CURRENT_TIME}}
}
\value{[logical]  \code{TRUE} if requested succeeded. \code{FALSE} if we could not process
         request. (e.g., there was already a request in process for
         this widget).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
