\alias{gtkFileChooserAddFilter}
\name{gtkFileChooserAddFilter}
\title{gtkFileChooserAddFilter}
\description{Adds \code{filter} to the list of filters that the user can select between.
When a filter is selected, only files that are passed by that
filter are displayed. }
\usage{gtkFileChooserAddFilter(object, filter)}
\arguments{
\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}
\item{\code{filter}}{[\code{\link{GtkFileFilter}}]  a \code{\link{GtkFileFilter}}}
}
\details{Note that the \code{chooser} takes ownership of the filter, so you have to 
ref and sink it if you want to keep a reference.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
