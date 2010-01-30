\alias{GtkComboBoxEntry}
\alias{gtkComboBoxEntry}
\name{GtkComboBoxEntry}
\title{GtkComboBoxEntry}
\description{A text entry field with a dropdown list}
\section{Methods and Functions}{
\code{\link{gtkComboBoxEntryNew}(show = TRUE)}\cr
\code{\link{gtkComboBoxEntryNewWithModel}(model, text.column)}\cr
\code{\link{gtkComboBoxEntryNewText}()}\cr
\code{\link{gtkComboBoxEntrySetTextColumn}(object, text.column)}\cr
\code{\link{gtkComboBoxEntryGetTextColumn}(object)}\cr
\code{gtkComboBoxEntry(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkComboBox
                                       +----GtkComboBoxEntry}}
\section{Interfaces}{GtkComboBoxEntry implements
 AtkImplementorIface,  \verb{\link{GtkBuildable}},  \verb{\link{GtkCellEditable}} and  \verb{\link{GtkCellLayout}}.}
\section{Detailed Description}{A \verb{\link{GtkComboBoxEntry}} is a widget that allows the user to choose from a
list of valid choices or enter a different value. It is very similar
to a \verb{\link{GtkComboBox}}, but it displays the selected value in an entry to
allow modifying it.
  
In contrast to a \verb{\link{GtkComboBox}}, the underlying model of a \verb{\link{GtkComboBoxEntry}} 
must always have a text column (see \code{\link{gtkComboBoxEntrySetTextColumn}}),
and the entry will show the content of the text column in the selected row.  
To get the text from the entry, use \code{\link{gtkComboBoxGetActiveText}}.
  
The changed signal will be emitted while typing into a GtkComboBoxEntry, 
as well as when selecting an item from the GtkComboBoxEntry's list. Use 
\code{\link{gtkComboBoxGetActive}} or \code{\link{gtkComboBoxGetActiveIter}} to discover 
whether an item was actually selected from the list.
  
Connect to the activate signal of the GtkEntry (use \code{\link{gtkBinGetChild}}) 
to detect when the user actually finishes entering text.
  
The convenience API to construct simple text-only \verb{\link{GtkComboBox}}es 
can also be used with \verb{\link{GtkComboBoxEntry}}s which have been constructed
with \code{\link{gtkComboBoxEntryNewText}}.
  
If you have special needs that go beyond a simple entry (e.g. input validation),
it is possible to replace the child entry by a different widget using
\code{\link{gtkContainerRemove}} and \code{\link{gtkContainerAdd}}.}
\section{GtkComboBoxEntry as GtkBuildable}{Beyond the <attributes> support that is shared by all
GtkCellLayout implementation,
GtkComboBoxEntry makes the entry available in UI definitions as an internal 
child with name "entry". }
\section{Structures}{\describe{\item{\verb{GtkComboBoxEntry}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkComboBoxEntry} is the equivalent of \code{\link{gtkComboBoxEntryNew}}.}
\section{Properties}{\describe{\item{\verb{text-column} [integer : Read / Write]}{

A column in the data source model to get the strings from.  Allowed values: >= -1  Default value: -1

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkComboBoxEntry.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\verb{\link{GtkComboBox}}}
\keyword{internal}
