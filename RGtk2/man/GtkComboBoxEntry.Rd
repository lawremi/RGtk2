\alias{GtkComboBoxEntry}
\alias{gtkComboBoxEntry}
\name{GtkComboBoxEntry}
\title{GtkComboBoxEntry}
\description{A text entry field with a dropdown list}
\section{Methods and Functions}{
\code{\link{gtkComboBoxEntryNew}(show = TRUE)}\cr
\code{\link{gtkComboBoxEntryNewWithModel}(model, text.column, show = TRUE)}\cr
\code{\link{gtkComboBoxEntryNewText}()}\cr
\code{\link{gtkComboBoxEntrySetTextColumn}(object, text.column)}\cr
\code{\link{gtkComboBoxEntryGetTextColumn}(object)}\cr
\code{gtkComboBoxEntry(model, text.column, show = TRUE)}
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
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkCellLayout}} and  \code{\link{GtkCellEditable}}.}
\section{Detailed Description}{A \code{\link{GtkComboBoxEntry}} is a widget that allows the user to choose from a
list of valid choices or enter a different value. It is very similar
to a \code{\link{GtkComboBox}}, but it displays the selected value in an entry to
allow modifying it.
  
In contrast to a \code{\link{GtkComboBox}}, the underlying model of a \code{\link{GtkComboBoxEntry}}
must always have a text column (see \code{\link{gtkComboBoxEntrySetTextColumn}}),
and the entry will show the content of the text column in the selected row.
To get the text from the entry, use \code{\link{gtkComboBoxGetActiveText}}.
  
The changed signal will be emitted while typing into a GtkComboBoxEntry,
as well as when selecting an item from the GtkComboBoxEntry's list. Use
\code{\link{gtkComboBoxGetActive}} or \code{\link{gtkComboBoxGetActiveIter}} to discover
whether an item was actually selected from the list.
  
Connect to the activate signal of the GtkEntry (use \code{\link{gtkBinGetChild}})
to detect when the user actually finishes entering text.
  
The convenience API to construct simple text-only \code{\link{GtkComboBox}}es
can also be used with \code{\link{GtkComboBoxEntry}}s which have been constructed
with \code{\link{gtkComboBoxEntryNewText}}.
  
If you have special needs that go beyond a simple entry (e.g. input validation),
it is possible to replace the child entry by a different widget using
\code{\link{gtkContainerRemove}} and \code{\link{gtkContainerAdd}}.}
\section{GtkComboBoxEntry as GtkBuildable}{Beyond the <attributes> support that is shared by all
GtkCellLayout implementation,
GtkComboBoxEntry makes the entry available in UI definitions as an internal
child with name "entry".}
\section{Structures}{\describe{\item{\verb{GtkComboBoxEntry}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkComboBoxEntry} is the result of collapsing the constructors of \code{GtkComboBoxEntry} (\code{\link{gtkComboBoxEntryNew}}, \code{\link{gtkComboBoxEntryNewWithModel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{\item{\verb{text-column} [integer : Read / Write]}{

A column in the data source model to get the strings from.  Allowed values: >= -1  Default value: -1

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkComboBoxEntry.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkComboBox}}}
\keyword{internal}
