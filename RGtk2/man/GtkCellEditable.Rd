\alias{GtkCellEditable}
\name{GtkCellEditable}
\title{GtkCellEditable}
\description{Interface for widgets which can are used for editing cells}
\section{Methods and Functions}{
\code{\link{gtkCellEditableStartEditing}(object, event = NULL)}\cr
\code{\link{gtkCellEditableEditingDone}(object)}\cr
\code{\link{gtkCellEditableRemoveWidget}(object)}\cr
}
\section{Hierarchy}{\preformatted{  GInterface
   +----GtkCellEditable}}
\section{Implementations}{GtkCellEditable is implemented by
 \code{\link{GtkEntry}},  \code{\link{GtkComboBox}},  \code{\link{GtkSpinButton}} and  \code{\link{GtkComboBoxEntry}}.}
\section{Detailed Description}{The \code{\link{GtkCellEditable}} interface must be implemented for widgets
to be usable when editing the contents of a \code{\link{GtkTreeView}} cell.}
\section{Structures}{\describe{\item{\code{GtkCellEditable}}{
\emph{undocumented
}

}}}
\section{Signals}{\describe{
\item{\code{editing-done(celleditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{celleditable}}{[\code{\link{GtkCellEditable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{remove-widget(celleditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{celleditable}}{[\code{\link{GtkCellEditable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellEditable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
