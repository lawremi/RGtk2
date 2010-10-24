\alias{gtkFileChooserSetFilter}
\name{gtkFileChooserSetFilter}
\title{gtkFileChooserSetFilter}
\description{Sets the current filter; only the files that pass the
filter will be displayed. If the user-selectable list of filters
is non-empty, then the filter should be one of the filters
in that list. Setting the current filter when the list of
filters is empty is useful if you want to restrict the displayed
set of files without letting the user change it.}
\usage{gtkFileChooserSetFilter(object, filter)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{filter}}{a \code{\link{GtkFileFilter}}}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
