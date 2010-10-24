\alias{gtkCListSetColumnWidget}
\name{gtkCListSetColumnWidget}
\title{gtkCListSetColumnWidget}
\description{
Sets a widget to be used as the specified column's title.  This
can be used to place a pixmap or something else as the column
title, instead of the standard text.
\strong{WARNING: \code{gtk_clist_set_column_widget} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetColumnWidget(object, column, widget)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{column}}{The column whose title should be a widget.}
\item{\verb{widget}}{A pointer to a previously create widget.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
