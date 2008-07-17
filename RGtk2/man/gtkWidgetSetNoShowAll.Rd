\alias{gtkWidgetSetNoShowAll}
\name{gtkWidgetSetNoShowAll}
\title{gtkWidgetSetNoShowAll}
\description{Sets the \code{"no-show-all"} property, which determines whether 
calls to \code{\link{gtkWidgetShowAll}} and \code{\link{gtkWidgetHideAll}} will affect 
this widget. }
\usage{gtkWidgetSetNoShowAll(object, no.show.all)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{no.show.all}}{[logical]  the new value for the "no-show-all" property}
}
\details{This is mostly for use in constructing widget hierarchies with externally
controlled visibility, see \code{\link{GtkUIManager}}.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
