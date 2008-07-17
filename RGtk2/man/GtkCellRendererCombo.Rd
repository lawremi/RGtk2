\alias{GtkCellRendererCombo}
\alias{gtkCellRendererCombo}
\name{GtkCellRendererCombo}
\title{GtkCellRendererCombo}
\description{Renders a combobox in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererComboNew}()}\cr
\code{gtkCellRendererCombo()}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkCellRenderer}
                     +----\link{GtkCellRendererText}
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
\section{Structures}{\describe{\item{\code{GtkCellRendererCombo}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererCombo} is the equivalent of \code{\link{gtkCellRendererComboNew}}.}
\section{Properties}{\describe{
\item{\code{has-entry} [logical : Read / Write]}{

If \code{TRUE}, the cell renderer will include an entry and allow to enter 
values other than the ones in the popup list.  

  Default value: TRUE  Since  2.6

}
\item{\code{model} [\code{\link{GtkTreeModel}} : Read / Write]}{

Holds a tree model containing the possible values for the combo box. 
Use the text\_column property to specify the column holding the values.  

  Since  2.6

}
\item{\code{text-column} [integer : Read / Write]}{

Specifies the model column which holds the possible values for the 
combo box. 
  
Note that this refers to the model specified in the model property, 
\emph{not} the model backing the tree view to which 
this cell renderer is attached.
  \code{\link{GtkCellRendererCombo}} automatically adds a text cell renderer for 
this column to its combo box.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellRendererCombo.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
