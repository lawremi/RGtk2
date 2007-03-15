\alias{gtkTableAttach}
\name{gtkTableAttach}
\title{gtkTableAttach}
\description{Adds a widget to a table. The number of 'cells' that a widget will occupy is
specified by \code{left.attach}, \code{right.attach}, \code{top.attach} and \code{bottom.attach}.
These each represent the leftmost, rightmost, uppermost and lowest column
and row numbers of the table. (Columns and rows are indexed from zero).}
\usage{gtkTableAttach(object, child, left.attach, right.attach, top.attach, bottom.attach, xoptions = 5, yoptions = 5, xpadding = 0, ypadding = 0)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTable}}] The \code{\link{GtkTable}} to add a new widget to.}
\item{\code{child}}{[\code{\link{GtkWidget}}] The widget to add.}
\item{\code{left.attach}}{[numeric] the column number to attach the left side of a child widget to.}
\item{\code{right.attach}}{[numeric] the column number to attach the right side of a child widget to.}
\item{\code{top.attach}}{[numeric] the row number to attach the top of a child widget to.}
\item{\code{bottom.attach}}{[numeric] the row number to attach the bottom of a child widget to.}
\item{\code{xoptions}}{[\code{\link{GtkAttachOptions}}] Used to specify the properties of the child widget when the table is resized.}
\item{\code{yoptions}}{[\code{\link{GtkAttachOptions}}] The same as xoptions, except this field determines behaviour of vertical resizing.}
\item{\code{xpadding}}{[numeric] An integer value specifying the padding on the left and right of the widget being added to the table.}
\item{\code{ypadding}}{[numeric] The amount of padding above and below the child widget.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
