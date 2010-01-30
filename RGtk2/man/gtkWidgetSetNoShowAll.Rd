\alias{gtkWidgetSetNoShowAll}
\name{gtkWidgetSetNoShowAll}
\title{gtkWidgetSetNoShowAll}
\description{Sets the \verb{"no-show-all"} property, which determines whether 
calls to \code{\link{gtkWidgetShowAll}} and \code{\link{gtkWidgetHideAll}} will affect 
this widget. }
\usage{gtkWidgetSetNoShowAll(object, no.show.all)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{no.show.all}}{[logical]  the new value for the "no-show-all" property}
}
\details{This is mostly for use in constructing widget hierarchies with externally
controlled visibility, see \verb{\link{GtkUIManager}}.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
