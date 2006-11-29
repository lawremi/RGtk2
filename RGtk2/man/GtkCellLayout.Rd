\alias{GtkCellLayout}
\alias{GtkCellLayoutDataFunc}
\name{GtkCellLayout}
\title{GtkCellLayout}
\description{An interface for packing cells}
\section{Methods and Functions}{
\code{\link{gtkCellLayoutPackStart}(object, cell, expand = TRUE)}\cr
\code{\link{gtkCellLayoutPackEnd}(object, cell, expand = TRUE)}\cr
\code{\link{gtkCellLayoutReorder}(object, cell, position)}\cr
\code{\link{gtkCellLayoutClear}(object)}\cr
\code{\link{gtkCellLayoutSetAttributes}(object, cell, ...)}\cr
\code{\link{gtkCellLayoutAddAttribute}(object, cell, attribute, column)}\cr
\code{\link{gtkCellLayoutSetCellDataFunc}(object, cell, func, func.data = NULL)}\cr
\code{\link{gtkCellLayoutClearAttributes}(object, cell)}\cr
}
\section{Hierarchy}{\preformatted{  GInterface
   +----GtkCellLayout}}
\section{Implementations}{GtkCellLayout is implemented by
 \code{\link{GtkCellView}},  \code{\link{GtkEntryCompletion}},  \code{\link{GtkTreeViewColumn}},  \code{\link{GtkComboBox}},  \code{\link{GtkIconView}} and  \code{\link{GtkComboBoxEntry}}.}
\section{Detailed Description}{\code{\link{GtkCellLayout}} is an interface to be implemented by all objects which
want to provide a \code{GtkTreeViewColumn-like} API for packing cells, setting
attributes and data funcs. 
  
One of the notable features provided by implementations of GtkCellLayout
are \emph{attributes}. Attributes let you set the properties
in flexible ways. They can just be set to constant values like regular
properties. But they can also be mapped to a column of the underlying 
tree model with \code{\link{gtkCellLayoutSetAttributes}}, which means that the value 
of the attribute can change from cell to cell as they are rendered by the 
cell renderer. Finally, it is possible to specify a function with 
\code{\link{gtkCellLayoutSetCellDataFunc}} that is called to determine the value 
of the attribute for each cell that is rendered.}
\section{Structures}{\describe{\item{\code{GtkCellLayout}}{
\emph{undocumented
}

}}}
\section{User Functions}{\describe{\item{\code{GtkCellLayoutDataFunc(cell.layout, cell, tree.model, iter, data)}}{
A function which should set the value of \code{cell.layout}'s cell renderer(s)
as appropriate. 

\describe{
\item{\code{cell.layout}}{[\code{\link{GtkCellLayout}}] a \code{\link{GtkCellLayout}}}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}] the cell renderer whose value is to be set}
\item{\code{tree.model}}{[\code{\link{GtkTreeModel}}] the model}
\item{\code{iter}}{[\code{\link{GtkTreeIter}}] a \code{\link{GtkTreeIter}} indicating the row to set the value for}
\item{\code{data}}{[R object] user data passed to \code{\link{gtkCellLayoutSetCellDataFunc}}}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellLayout.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
