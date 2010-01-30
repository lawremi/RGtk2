\alias{GtkCellEditable}
\name{GtkCellEditable}
\title{GtkCellEditable}
\description{Interface for widgets which can are used for editing cells}
\section{Methods and Functions}{
\code{\link{gtkCellEditableStartEditing}(object, event = NULL)}\cr
\code{\link{gtkCellEditableEditingDone}(object)}\cr
\code{\link{gtkCellEditableRemoveWidget}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkCellEditable}}
\section{Implementations}{GtkCellEditable is implemented by
 \verb{\link{GtkEntry}},  \verb{\link{GtkComboBox}},  \verb{\link{GtkSpinButton}} and  \verb{\link{GtkComboBoxEntry}}.}
\section{Detailed Description}{The \verb{\link{GtkCellEditable}} interface must be implemented for widgets
to be usable when editing the contents of a \verb{\link{GtkTreeView}} cell.}
\section{Structures}{\describe{\item{\verb{GtkCellEditable}}{
\emph{undocumented
}

}}}
\section{Signals}{\describe{
\item{\code{editing-done(cell.editable, user.data)}}{
This signal is a sign for the cell renderer to update its 
value from the \code{cell.editable}. 
  
Implementations of \verb{\link{GtkCellEditable}} are responsible for 
emitting this signal when they are done editing, e.g. 
\verb{\link{GtkEntry}} is emitting it when the user presses Enter.
  \code{\link{gtkCellEditableEditingDone}} is a convenience method
for emitting ::editing-done.  

\describe{
\item{\code{cell.editable}}{[\verb{\link{GtkCellEditable}}]  the object on which the signal was emitted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{remove-widget(cell.editable, user.data)}}{
This signal is meant to indicate that the cell is finished 
editing, and the widget may now be destroyed. 
  
Implementations of \verb{\link{GtkCellEditable}} are responsible for 
emitting this signal when they are done editing. It must
be emitted after the \code{\link{gtkCellEditableEditingDone}} signal, 
to give the cell renderer a chance to update the cell's value 
before the widget is removed. 
  \code{\link{gtkCellEditableRemoveWidget}} is a convenience method
for emitting ::remove-widget.  

\describe{
\item{\code{cell.editable}}{[\verb{\link{GtkCellEditable}}]  the object on which the signal was emitted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellEditable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
