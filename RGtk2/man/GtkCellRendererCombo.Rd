\alias{GtkCellRendererCombo}
\alias{gtkCellRendererCombo}
\name{GtkCellRendererCombo}
\title{GtkCellRendererCombo}
\description{Renders a combobox in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererComboNew}()}\cr
\code{gtkCellRendererCombo()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererText
                           +----GtkCellRendererCombo}}
\section{Detailed Description}{\code{\link{GtkCellRendererCombo}} renders text in a cell like \code{\link{GtkCellRendererText}} from
which it is derived. But while \code{\link{GtkCellRendererText}} offers a simple entry to
edit the text, \code{\link{GtkCellRendererCombo}} offers a \code{\link{GtkComboBox}} or \code{\link{GtkComboBoxEntry}}
widget to edit the text. The values to display in the combo box are taken from
the tree model specified in the
model property.
  
The combo cell renderer takes care of adding a text cell renderer to the combo
box and sets it to display the column specified by its
text-column
property. Further properties of the comnbo box can be set in a handler for the
editing-started signal.
  
The \code{\link{GtkCellRendererCombo}} cell renderer was added in GTK+ 2.6.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererCombo}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererCombo} is the equivalent of \code{\link{gtkCellRendererComboNew}}.}
\section{Signals}{\describe{\item{\code{changed(combo, path.string, new.iter, user.data)}}{
This signal is emitted each time after the user selected an item in
the combo box, either by using the mouse or the arrow keys.  Contrary
to GtkComboBox, GtkCellRendererCombo::changed is not emitted for
changes made to a selected item in the entry.  The argument \code{new.iter}
corresponds to the newly selected item in the combo box and it is relative
to the GtkTreeModel set via the model property on GtkCellRendererCombo.
  
Note that as soon as you change the model displayed in the tree view,
the tree view will immediately cease the editing operating.  This
means that you most probably want to refrain from changing the model
until the combo cell renderer emits the edited or editing_canceled signal.
  Since 2.14

\describe{
\item{\code{combo}}{the object on which the signal is emitted}
\item{\code{path.string}}{a string of the path identifying the edited cell
(relative to the tree view model)}
\item{\code{new.iter}}{the new iter selected in the combo box
(relative to the combo box model)}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{has-entry} [logical : Read / Write]}{

If \code{TRUE}, the cell renderer will include an entry and allow to enter
values other than the ones in the popup list.
  Default value: TRUE  Since 2.6

}
\item{\verb{model} [\code{\link{GtkTreeModel}} : *         : Read / Write]}{

Holds a tree model containing the possible values for the combo box.
Use the text_column property to specify the column holding the values.
  Since 2.6

}
\item{\verb{text-column} [integer : Read / Write]}{

Specifies the model column which holds the possible values for the
combo box.
  
Note that this refers to the model specified in the model property,
\emph{not} the model backing the tree view to which
this cell renderer is attached.
  \code{\link{GtkCellRendererCombo}} automatically adds a text cell renderer for
this column to its combo box.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellRendererCombo.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
