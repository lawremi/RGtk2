\alias{gtkDragGetSourceWidget}
\name{gtkDragGetSourceWidget}
\title{gtkDragGetSourceWidget}
\description{Determines the source widget for a drag.}
\usage{gtkDragGetSourceWidget(context)}
\arguments{\item{\verb{context}}{[\verb{\link{GdkDragContext}}] a (destination side) drag context.}}
\value{[\verb{\link{GtkWidget}}] if the drag is occurring within a single application,
          a pointer to the source widget. Otherwise, \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
