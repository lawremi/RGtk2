\alias{GtkTable}
\alias{GtkTableChild}
\alias{GtkTableRowCol}
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
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkTable}} functions allow the programmer to arrange widgets in rows and
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
\section{Structures}{\describe{
\item{\verb{GtkTable}}{
The \code{GtkTable} structure holds the data for the actual table itself. 

\code{children} is a \verb{list} of all the widgets the table contains. \code{rows} and \code{columns} are pointers to \verb{\link{GtkTableRowCol}} structures, which contain the default spacing and expansion details for the \verb{\link{GtkTable}}'s rows and columns, respectively.
  \code{nrows} and \code{ncols} are 16bit integers storing the number of rows and columns the table has. 

\describe{
\item{\verb{children}}{[list] }
\item{\verb{rows}}{[\verb{\link{GtkTableRowCol}}] }
\item{\verb{cols}}{[\verb{\link{GtkTableRowCol}}] }
\item{\verb{nrows}}{[integer] }
\item{\verb{ncols}}{[integer] }
}

}
\item{\verb{GtkTableChild}}{
The \code{widget} field is a pointer to the widget that 
this \verb{\link{GtkTableChild}} structure is keeping track of.
The \code{left_attach},
\code{right_attach},
\code{top_attach}, and
\code{bottom_attach} fields specify the row and column
numbers which make up the invisible rectangle that the child widget is packed into.
  \code{xpadding} and \code{ypadding}
specify the space between this widget and the surrounding table cells.

\describe{
\item{\verb{widget}}{[\verb{\link{GtkWidget}}] }
\item{\verb{leftAttach}}{[integer] }
\item{\verb{rightAttach}}{[integer] }
\item{\verb{topAttach}}{[integer] }
\item{\verb{bottomAttach}}{[integer] }
\item{\verb{xpadding}}{[integer] }
\item{\verb{ypadding}}{[integer] }
\item{\verb{xexpand}}{[numeric] }
\item{\verb{yexpand}}{[numeric] }
\item{\verb{xshrink}}{[numeric] }
\item{\verb{yshrink}}{[numeric] }
\item{\verb{xfill}}{[numeric] }
\item{\verb{yfill}}{[numeric] }
}

}
\item{\verb{GtkTableRowCol}}{
These fields should be considered read-only and not be modified directly.

\describe{
\item{\verb{requisition}}{[integer] }
\item{\verb{allocation}}{[integer] }
\item{\verb{spacing}}{[integer] }
\item{\verb{needExpand}}{[numeric] }
\item{\verb{needShrink}}{[numeric] }
\item{\verb{expand}}{[numeric] }
\item{\verb{shrink}}{[numeric] }
\item{\verb{empty}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{gtkTable} is the equivalent of \code{\link{gtkTableNew}}.}
\section{Properties}{\describe{
\item{\verb{column-spacing} [numeric : Read / Write]}{

The amount of space between two consecutive columns.  Default value: 0

}
\item{\verb{homogeneous} [logical : Read / Write]}{

If TRUE, the table cells are all the same width/height.  Default value: FALSE

}
\item{\verb{n-columns} [numeric : Read / Write]}{

The number of columns in the table.  Default value: 0

}
\item{\verb{n-rows} [numeric : Read / Write]}{

The number of rows in the table.  Default value: 0

}
\item{\verb{row-spacing} [numeric : Read / Write]}{

The amount of space between two consecutive rows.  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
