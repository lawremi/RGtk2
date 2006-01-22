\alias{GtkComboBox}
\alias{gtkComboBox}
\name{GtkComboBox}
\title{GtkComboBox}
\description{A widget used to choose from a list of items}
\usage{gtkComboBox(model, show = TRUE)}
\section{Methods and Functions}{
\link{gtkComboBoxNew}(show = TRUE)
\link{gtkComboBoxNewWithModel}(model, show = TRUE)
\link{gtkComboBoxGetWrapWidth}(object)
\link{gtkComboBoxSetWrapWidth}(object, width)
\link{gtkComboBoxGetRowSpanColumn}(object)
\link{gtkComboBoxSetRowSpanColumn}(object, row.span)
\link{gtkComboBoxGetColumnSpanColumn}(object)
\link{gtkComboBoxSetColumnSpanColumn}(object, column.span)
\link{gtkComboBoxGetActive}(object)
\link{gtkComboBoxSetActive}(object, index)
\link{gtkComboBoxGetActiveIter}(object)
\link{gtkComboBoxSetActiveIter}(object, iter)
\link{gtkComboBoxGetModel}(object)
\link{gtkComboBoxSetModel}(object, model = NULL)
\link{gtkComboBoxNewText}()
\link{gtkComboBoxAppendText}(object, text)
\link{gtkComboBoxInsertText}(object, position, text)
\link{gtkComboBoxPrependText}(object, text)
\link{gtkComboBoxRemoveText}(object, position)
\link{gtkComboBoxGetActiveText}(object)
\link{gtkComboBoxPopup}(object)
\link{gtkComboBoxPopdown}(object)
\link{gtkComboBoxGetPopupAccessible}(object)
\link{gtkComboBoxGetRowSeparatorFunc}(object)
\link{gtkComboBoxSetRowSeparatorFunc}(object, func, data = NULL)
\link{gtkComboBoxSetAddTearoffs}(object, add.tearoffs)
\link{gtkComboBoxGetAddTearoffs}(object)
\link{gtkComboBoxSetFocusOnClick}(object, focus.on.click)
\link{gtkComboBoxGetFocusOnClick}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----GtkComboBox
                                 +----\link{GtkComboBoxEntry}}}
\section{Interfaces}{GtkComboBox implements
 AtkImplementorIface,  \code{\link{GtkCellEditable}} and  \code{\link{GtkCellLayout}}.}
\section{Detailed Description}{A \code{\link{GtkComboBox}} is a widget that allows the user to choose from a
list of valid choices.  The \code{\link{GtkComboBox}} displays the selected 
choice.  When activated, the \code{\link{GtkComboBox}} displays a popup 
which allows the user to make a new choice. The style in which 
the selected value is displayed, and the style of the popup is
determined by the current theme. It may be similar to a \code{\link{GtkOptionMenu}},
or similar to a Windows-style combo box.
  
Unlike its predecessors \code{\link{GtkCombo}} and \code{\link{GtkOptionMenu}}, the \code{\link{GtkComboBox}}
uses the model-view pattern; the list of valid choices is specified in the
form of a tree model, and the display of the choices can be adapted to
the data in the model by using cell renderers, as you would in a tree view.
This is possible since \code{\link{GtkComboBox}} implements the \code{\link{GtkCellLayout}} interface.
The tree model holding the valid choices is not restricted to a flat list,
it can be a real tree, and the popup will reflect the tree structure.
  
In addition to the model-view API, \code{\link{GtkComboBox}} offers a simple API which 
is suitable for text-only combo boxes, and hides the complexity of managing
the data in a model. It consists of the functions \code{\link{gtkComboBoxNewText}}, 
\code{\link{gtkComboBoxAppendText}}, \code{\link{gtkComboBoxInsertText}}, 
\code{\link{gtkComboBoxPrependText}}, \code{\link{gtkComboBoxRemoveText}} and 
\code{\link{gtkComboBoxGetActiveText}}.}
\section{Structures}{\describe{\item{\code{GtkComboBox}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkComboBox} is the result of collapsing the constructors of \code{GtkComboBox} (\code{\link{gtkComboBoxNew}}, \code{\link{gtkComboBoxNewWithModel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{changed(widget, user.data)}}{
The changed signal gets emitted when the active
item is changed. The can be due to the user selecting
a different item from the list, or due to a 
call to \code{\link{gtkComboBoxSetActiveIter}}.  

  Since  2.4

\describe{
\item{\code{widget}}{[\code{\link{GtkComboBox}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{active} [integer : Read / Write]}{

The item which is currently active. If the model is a non-flat treemodel,
and the active item is not an immediate child of the root of the tree,
this property has the value \code{gtk_tree_path_get_indices (path)[0]},
where \code{path} is the \code{\link{GtkTreePath}} of the active item.  

  Allowed values: >= -1  Default value: -1  Since  2.4

}
\item{\code{add-tearoffs} [logical : Read / Write]}{

The add-tearoffs property controls whether generated menus 
have tearoff menu items. 
  
Note that this only affects menu style combo boxes.  

  Default value: FALSE  Since  2.6

}
\item{\code{column-span-column} [integer : Read / Write]}{

If this is set to a non-negative value, it must be the index of a column 
of type \code{G_TYPE_INT} in the model. 
  
The values of that column are used to determine how many columns a value 
in the list will span.  

  Allowed values: >= -1  Default value: -1  Since  2.4

}
\item{\code{focus-on-click} [logical : Read / Write]}{

Whether the combo box grabs focus when it is clicked with the mouse.  Default value: TRUE

}
\item{\code{has-frame} [logical : Read / Write]}{

The has-frame property controls whether a frame
is drawn around the entry.  

  Default value: TRUE  Since  2.6

}
\item{\code{model} [\code{\link{GtkTreeModel}} : Read / Write]}{

The model from which the combo box takes the values shown
in the list.  

  Since  2.4

}
\item{\code{row-span-column} [integer : Read / Write]}{

If this is set to a non-negative value, it must be the index of a column 
of type \code{G_TYPE_INT} in the model. 
  
The values of that column are used to determine how many rows a value 
in the list will span. Therefore, the values in the model column pointed 
to by this property must be greater than zero and not larger than wrap-width.  

  Allowed values: >= -1  Default value: -1  Since  2.4

}
\item{\code{wrap-width} [integer : Read / Write]}{

If wrap-width is set to a positive value, the list will be
displayed in multiple columns, the number of columns is
determined by wrap-width.  

  Allowed values: >= 0  Default value: 0  Since  2.4

}
}}
\section{Style Properties}{\describe{\item{\code{appears-as-list} [logical : Read]}{

Whether dropdowns should look like lists rather than menus.  Default value: FALSE

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkComboBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkComboBoxEntry}}
\code{\link{GtkTreeModel}}
\code{\link{GtkCellRenderer}}
}
\keyword{internal}
