\alias{GtkTable}
\alias{gtkTable}
\name{GtkTable}
\title{GtkTable}
\description{Pack widgets in regular patterns}
\section{Methods and Functions}{
\code{\link{gtkTableNew}(rows = NULL, columns = NULL, homogeneous = NULL, show = TRUE)}\cr
\code{\link{gtkTableResize}(object, rows, columns)}\cr
\code{\link{gtkTableAttach}(object, child, left.attach, right.attach, top.attach, bottom.attach, xoptions = 5, yoptions = 5, xpadding = 0, ypadding = 0)}\cr
\code{\link{gtkTableAttachDefaults}(object, widget, left.attach, right.attach, top.attach, bottom.attach)}\cr
\code{\link{gtkTableSetRowSpacing}(object, row, spacing)}\cr
\code{\link{gtkTableSetColSpacing}(object, column, spacing)}\cr
\code{\link{gtkTableSetRowSpacings}(object, spacing)}\cr
\code{\link{gtkTableSetColSpacings}(object, spacing)}\cr
\code{\link{gtkTableSetHomogeneous}(object, homogeneous)}\cr
\code{\link{gtkTableGetDefaultRowSpacing}(object)}\cr
\code{\link{gtkTableGetHomogeneous}(object)}\cr
\code{\link{gtkTableGetRowSpacing}(object, row)}\cr
\code{\link{gtkTableGetColSpacing}(object, column)}\cr
\code{\link{gtkTableGetDefaultColSpacing}(object)}\cr
\code{gtkTable(rows = NULL, columns = NULL, homogeneous = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkTable}}
\section{Interfaces}{GtkTable implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkTable}} functions allow the programmer to arrange widgets in rows and
columns, making it easy to align many widgets next to each other,
horizontally and vertically.
  
Tables are created with a call to \code{\link{gtkTableNew}}, the size of which can
later be changed with \code{\link{gtkTableResize}}.
  
Widgets can be added to a table using \code{\link{gtkTableAttach}} or the more
convenient (but slightly less flexible) \code{\link{gtkTableAttachDefaults}}.
  
To alter the space next to a specific row, use \code{\link{gtkTableSetRowSpacing}},
and for a column, \code{\link{gtkTableSetColSpacing}}.  
The gaps between \emph{all} rows or columns can be changed by calling
\code{\link{gtkTableSetRowSpacings}} or \code{\link{gtkTableSetColSpacings}} respectively.
  \code{\link{gtkTableSetHomogeneous}}, can be used to set whether all cells in the
table will resize themselves to the size of the largest widget in the table.}
\section{Structures}{\describe{\item{\verb{GtkTable}}{
The \code{GtkTable} structure holds the data for the actual table itself.
\code{children} is a \verb{list} of all the widgets the table contains. \code{rows} and \code{columns} are pointers to \code{\link{GtkTableRowCol}} structures, which contain the default spacing and expansion details for the \code{\link{GtkTable}}'s rows and columns, respectively.
  \code{nrows} and \code{ncols} are 16bit integers storing the number of rows and columns the table has.

\describe{
\item{\verb{children}}{[list] }
\item{\verb{rows}}{[\code{\link{GtkTableRowCol}}] }
\item{\verb{cols}}{[\code{\link{GtkTableRowCol}}] }
\item{\verb{nrows}}{[integer] }
\item{\verb{ncols}}{[integer] }
}

}}}
\section{Convenient Construction}{\code{gtkTable} is the equivalent of \code{\link{gtkTableNew}}.}
\section{Properties}{\describe{
\item{\verb{column-spacing} [numeric : Read / Write]}{

The amount of space between two consecutive columns.  Allowed values: <= 65535  Default value: 0

}
\item{\verb{homogeneous} [logical : Read / Write]}{

If TRUE, the table cells are all the same width/height.  Default value: FALSE

}
\item{\verb{n-columns} [numeric : Read / Write]}{

The number of columns in the table.  Allowed values: [1,65535]  Default value: 1

}
\item{\verb{n-rows} [numeric : Read / Write]}{

The number of rows in the table.  Allowed values: [1,65535]  Default value: 1

}
\item{\verb{row-spacing} [numeric : Read / Write]}{

The amount of space between two consecutive rows.  Allowed values: <= 65535  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
