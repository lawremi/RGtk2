\alias{gtkNotebookSetActionWidget}
\name{gtkNotebookSetActionWidget}
\title{gtkNotebookSetActionWidget}
\description{Sets \code{widget} as one of the action widgets. Depending on the pack type
the widget will be placed before or after the tabs. You can use
a \code{\link{GtkBox}} if you need to pack more than one widget on the same side.}
\usage{gtkNotebookSetActionWidget(object, widget, pack.type)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{widget}}{a \code{\link{GtkWidget}}}
\item{\verb{pack.type}}{pack type of the action widget}
}
\details{Note that action widgets are "internal" children of the notebook and thus
not included in the list returned from \code{\link{gtkContainerForeach}}.
  Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
