\alias{gtkCListNewWithTitles}
\name{gtkCListNewWithTitles}
\title{gtkCListNewWithTitles}
\description{
Creates a new \verb{\link{GtkCList}} widget with column titles for use.
\strong{WARNING: \code{gtk_clist_new_with_titles} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListNewWithTitles(columns = 1, titles, show = TRUE)}
\arguments{
\item{\verb{columns}}{[integer] The number of columns the \verb{\link{GtkCList}} should have.}
\item{\verb{titles}}{[character] A string list of titles for the widget.  There should be
enough strings in the list for the specified number of columns.}
}
\value{[\verb{\link{GtkWidget}}] A pointer to a new GtkCList object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
