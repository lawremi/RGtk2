\alias{AtkTable}
\name{AtkTable}
\title{AtkTable}
\description{The ATK interface implemented for UI components which contain tabular or
row/column information.}
\section{Methods and Functions}{
\link{atkTableRefAt}(object, row, column)
\link{atkTableGetIndexAt}(object, row, column)
\link{atkTableGetColumnAtIndex}(object, index)
\link{atkTableGetRowAtIndex}(object, index)
\link{atkTableGetNColumns}(object)
\link{atkTableGetNRows}(object)
\link{atkTableGetColumnExtentAt}(object, row, column)
\link{atkTableGetRowExtentAt}(object, row, column)
\link{atkTableGetCaption}(object)
\link{atkTableGetColumnDescription}(object, column)
\link{atkTableGetRowDescription}(object, row)
\link{atkTableGetColumnHeader}(object, column)
\link{atkTableGetRowHeader}(object, row)
\link{atkTableGetSummary}(object)
\link{atkTableSetCaption}(object, caption)
\link{atkTableSetRowDescription}(object, row, description)
\link{atkTableSetColumnDescription}(object, column, description)
\link{atkTableSetRowHeader}(object, row, header)
\link{atkTableSetColumnHeader}(object, column, header)
\link{atkTableSetSummary}(object, accessible)
\link{atkTableGetSelectedColumns}(object)
\link{atkTableGetSelectedRows}(object)
\link{atkTableIsColumnSelected}(object, column)
\link{atkTableIsRowSelected}(object, row)
\link{atkTableIsSelected}(object, row, column)
\link{atkTableAddColumnSelection}(object, column)
\link{atkTableAddRowSelection}(object, row)
\link{atkTableRemoveColumnSelection}(object, column)
\link{atkTableRemoveRowSelection}(object, row)
}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkTable}}
\section{Implementations}{AtkTable is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkTable}} should be implemented by components which present elements
ordered via rows and columns.  It may also be used to present
tree-structured information if the nodes of the trees can be said to
contain multiple "columns".  Individual elements of an \code{\link{AtkTable}} are
typically referred to as "cells", and these cells are exposed by
\code{\link{AtkTable}} as child \code{AtkObjects} of the \code{\link{AtkTable}}.  Both row/column and
child-index-based access to these children is provided.
  
Children of \code{\link{AtkTable}} are frequently "lightweight" objects, that is,
they may not have backing widgets in the host UI toolkit.  They are
therefore often transient.
  
Since tables are often very complex, \code{\link{AtkTable}} includes provision for
offering simplified summary information, as well as row and column
headers and captions.  Headers and captions are \code{AtkObjects} which may
implement other interfaces (\code{\link{AtkText}}, \code{\link{AtkImage}}, etc.) as appropriate.
\code{\link{AtkTable}} summaries may themselves be (simplified) \code{AtkTables}, etc.}
\section{Structures}{\describe{\item{\code{AtkTable}}{
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
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkTable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{AtkObject}}}
\keyword{internal}
