\alias{gtkCellEditableStartEditing}
\name{gtkCellEditableStartEditing}
\title{gtkCellEditableStartEditing}
\description{Begins editing on a \code{cell.editable}. \code{event} is the \code{\link{GdkEvent}} that began 
the editing process. It may be \code{NULL}, in the instance that editing was 
initiated through programatic means.}
\usage{gtkCellEditableStartEditing(object, event = NULL)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkCellEditable}}}
\item{\verb{event}}{A \code{\link{GdkEvent}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
