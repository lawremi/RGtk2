\alias{GtkComboBoxEntry}
\alias{gtkComboBoxEntry}
\name{GtkComboBoxEntry}
\title{GtkComboBoxEntry}
\description{A text entry field with a dropdown list}
\usage{gtkComboBoxEntry(show = TRUE)}
\section{Methods and Functions}{
\link{gtkComboBoxEntryNew}(show = TRUE)
\link{gtkComboBoxEntryNewWithModel}(model, text.column)
\link{gtkComboBoxEntryNewText}()
\link{gtkComboBoxEntrySetTextColumn}(object, text.column)
\link{gtkComboBoxEntryGetTextColumn}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkComboBox}
                                 +----GtkComboBoxEntry}}
\section{Interfaces}{GtkComboBoxEntry implements
 AtkImplementorIface,  \code{\link{GtkCellEditable}} and  \code{\link{GtkCellLayout}}.}
\section{Detailed Description}{A \code{\link{GtkComboBoxEntry}} is a widget that allows the user to choose from a
list of valid choices or enter a different value. It is very similar
to a \code{\link{GtkComboBox}}, but it displays the selected value in an entry to
allow modifying it.
  
In contrast to a \code{\link{GtkComboBox}}, the underlying model of a \code{\link{GtkComboBoxEntry}} 
must always have a text column (see \code{\link{gtkComboBoxEntrySetTextColumn}}),
and the entry will show the content of the text column in the selected row.  To
get the text from the entry, use \code{\link{gtkComboBoxGetActiveText}}.
  
The convenience API to construct simple text-only \code{\link{GtkComboBox}}es can
also be used with \code{\link{GtkComboBoxEntry}}s which have been constructed
with \code{\link{gtkComboBoxEntryNewText}}.}
\section{Structures}{\describe{\item{\code{GtkComboBoxEntry}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkComboBoxEntry} is the equivalent of \code{\link{gtkComboBoxEntryNew}}.}
\section{Properties}{\describe{\item{\code{text-column} [integer : Read / Write]}{

A column in the data source model to get the strings from.  Allowed values: >= -1  Default value: -1

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkComboBoxEntry.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkComboBox}}}
\keyword{internal}
