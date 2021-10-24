\alias{AtkTable}
\name{AtkTable}
\title{AtkTable}
\description{The ATK interface implemented for UI components which contain tabular or
row/column information.}
\section{Methods and Functions}{
\code{\link{atkTableRefAt}(object, row, column)}\cr
\code{\link{atkTableGetIndexAt}(object, row, column)}\cr
\code{\link{atkTableGetColumnAtIndex}(object, index)}\cr
\code{\link{atkTableGetRowAtIndex}(object, index)}\cr
\code{\link{atkTableGetNColumns}(object)}\cr
\code{\link{atkTableGetNRows}(object)}\cr
\code{\link{atkTableGetColumnExtentAt}(object, row, column)}\cr
\code{\link{atkTableGetRowExtentAt}(object, row, column)}\cr
\code{\link{atkTableGetCaption}(object)}\cr
\code{\link{atkTableGetColumnDescription}(object, column)}\cr
\code{\link{atkTableGetRowDescription}(object, row)}\cr
\code{\link{atkTableGetColumnHeader}(object, column)}\cr
\code{\link{atkTableGetRowHeader}(object, row)}\cr
\code{\link{atkTableGetSummary}(object)}\cr
\code{\link{atkTableSetCaption}(object, caption)}\cr
\code{\link{atkTableSetRowDescription}(object, row, description)}\cr
\code{\link{atkTableSetColumnDescription}(object, column, description)}\cr
\code{\link{atkTableSetRowHeader}(object, row, header)}\cr
\code{\link{atkTableSetColumnHeader}(object, column, header)}\cr
\code{\link{atkTableSetSummary}(object, accessible)}\cr
\code{\link{atkTableGetSelectedColumns}(object)}\cr
\code{\link{atkTableGetSelectedRows}(object)}\cr
\code{\link{atkTableIsColumnSelected}(object, column)}\cr
\code{\link{atkTableIsRowSelected}(object, row)}\cr
\code{\link{atkTableIsSelected}(object, row, column)}\cr
\code{\link{atkTableAddColumnSelection}(object, column)}\cr
\code{\link{atkTableAddRowSelection}(object, row)}\cr
\code{\link{atkTableRemoveColumnSelection}(object, column)}\cr
\code{\link{atkTableRemoveRowSelection}(object, row)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkTable}}
\section{Implementations}{AtkTable is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkTable}} should be implemented by components which present elements
ordered via rows and columns.  It may also be used to present
tree-structured information if the nodes of the trees can be said to
contain multiple "columns".  Individual elements of an \code{\link{AtkTable}} are
typically referred to as "cells", and these cells are exposed by
\code{\link{AtkTable}} as child \verb{AtkObjects} of the \code{\link{AtkTable}}.  Both row/column and
child-index-based access to these children is provided.
  
Children of \code{\link{AtkTable}} are frequently "lightweight" objects, that is,
they may not have backing widgets in the host UI toolkit.  They are
therefore often transient.
  
Since tables are often very complex, \code{\link{AtkTable}} includes provision for
offering simplified summary information, as well as row and column
headers and captions.  Headers and captions are \verb{AtkObjects} which may
implement other interfaces (\code{\link{AtkText}}, \code{\link{AtkImage}}, etc.) as appropriate.
\code{\link{AtkTable}} summaries may themselves be (simplified) \verb{AtkTables}, etc.}
\section{Structures}{\describe{\item{\verb{AtkTable}}{
The AtkTable structure does not contain any fields.

}}}
\section{Signals}{\describe{
\item{\code{column-deleted(atktable, arg1, arg2, user.data)}}{
The "column-deleted" signal is emitted by an object which implements the
AtkTable interface when a column is deleted.

\describe{
\item{\code{atktable}}{[\code{\link{AtkTable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] The index of the first column deleted.}
\item{\code{arg2}}{[integer] The number of columns deleted.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{column-inserted(atktable, arg1, arg2, user.data)}}{
The "column-inserted" signal is emitted by an object which implements the
AtkTable interface when a column is inserted.

\describe{
\item{\code{atktable}}{[\code{\link{AtkTable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] The index of the column inserted.}
\item{\code{arg2}}{[integer] The number of colums inserted.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{column-reordered(atktable, user.data)}}{
The "column-reordered" signal is emitted by an object which implements the
AtkTable interface when the columns are reordered.

\describe{
\item{\code{atktable}}{[\code{\link{AtkTable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{model-changed(atktable, user.data)}}{
The "model-changed" signal is emitted by an object which implements the
AtkTable interface when the model displayed by the table changes.

\describe{
\item{\code{atktable}}{[\code{\link{AtkTable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{row-deleted(atktable, arg1, arg2, user.data)}}{
The "row-deleted" signal is emitted by an object which implements the
AtkTable interface when a column is inserted.

\describe{
\item{\code{atktable}}{[\code{\link{AtkTable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] The index of the first row deleted.}
\item{\code{arg2}}{[integer] The number of rows deleted.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{row-inserted(atktable, arg1, arg2, user.data)}}{
The "row-inserted" signal is emitted by an object which implements the
AtkTable interface when a column is inserted.

\describe{
\item{\code{atktable}}{[\code{\link{AtkTable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] The index of the first row deleted.}
\item{\code{arg2}}{[integer] The number of rows deleted.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{row-reordered(atktable, user.data)}}{
The "row-reordered" signal is emitted by an object which implements the
AtkTable interface when the columns are reordered.

\describe{
\item{\code{atktable}}{[\code{\link{AtkTable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkTable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{AtkObject}}}
\keyword{internal}
