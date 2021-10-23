\alias{GtkIconView}
\alias{gtkIconView}
\alias{GtkIconViewForeachFunc}
\alias{GtkIconViewDropPosition}
\name{GtkIconView}
\title{GtkIconView}
\description{A widget which displays a list of icons in a grid}
\section{Methods and Functions}{
\code{\link{gtkIconViewNew}(show = TRUE)}\cr
\code{\link{gtkIconViewNewWithModel}(model = NULL, show = TRUE)}\cr
\code{\link{gtkIconViewSetModel}(object, model = NULL)}\cr
\code{\link{gtkIconViewGetModel}(object)}\cr
\code{\link{gtkIconViewSetTextColumn}(object, column)}\cr
\code{\link{gtkIconViewGetTextColumn}(object)}\cr
\code{\link{gtkIconViewSetMarkupColumn}(object, column)}\cr
\code{\link{gtkIconViewGetMarkupColumn}(object)}\cr
\code{\link{gtkIconViewSetPixbufColumn}(object, column)}\cr
\code{\link{gtkIconViewGetPixbufColumn}(object)}\cr
\code{\link{gtkIconViewGetPathAtPos}(object, x, y)}\cr
\code{\link{gtkIconViewGetItemAtPos}(object, x, y)}\cr
\code{\link{gtkIconViewConvertWidgetToBinWindowCoords}(object, wx, wy)}\cr
\code{\link{gtkIconViewSetCursor}(object, path, cell, start.editing)}\cr
\code{\link{gtkIconViewGetCursor}(object)}\cr
\code{\link{gtkIconViewSelectedForeach}(object, func, data = NULL)}\cr
\code{\link{gtkIconViewSetSelectionMode}(object, mode)}\cr
\code{\link{gtkIconViewGetSelectionMode}(object)}\cr
\code{\link{gtkIconViewSetOrientation}(object, orientation)}\cr
\code{\link{gtkIconViewGetOrientation}(object)}\cr
\code{\link{gtkIconViewSetColumns}(object, columns)}\cr
\code{\link{gtkIconViewGetColumns}(object)}\cr
\code{\link{gtkIconViewSetItemWidth}(object, item.width)}\cr
\code{\link{gtkIconViewGetItemWidth}(object)}\cr
\code{\link{gtkIconViewSetSpacing}(object, spacing)}\cr
\code{\link{gtkIconViewGetSpacing}(object)}\cr
\code{\link{gtkIconViewSetRowSpacing}(object, row.spacing)}\cr
\code{\link{gtkIconViewGetRowSpacing}(object)}\cr
\code{\link{gtkIconViewSetColumnSpacing}(object, column.spacing)}\cr
\code{\link{gtkIconViewGetColumnSpacing}(object)}\cr
\code{\link{gtkIconViewSetMargin}(object, margin)}\cr
\code{\link{gtkIconViewGetMargin}(object)}\cr
\code{\link{gtkIconViewSetItemPadding}(object, item.padding)}\cr
\code{\link{gtkIconViewGetItemPadding}(object)}\cr
\code{\link{gtkIconViewSelectPath}(object, path)}\cr
\code{\link{gtkIconViewUnselectPath}(object, path)}\cr
\code{\link{gtkIconViewPathIsSelected}(object, path)}\cr
\code{\link{gtkIconViewGetSelectedItems}(object)}\cr
\code{\link{gtkIconViewSelectAll}(object)}\cr
\code{\link{gtkIconViewUnselectAll}(object)}\cr
\code{\link{gtkIconViewItemActivated}(object, path)}\cr
\code{\link{gtkIconViewScrollToPath}(object, path, use.align, row.align, col.align)}\cr
\code{\link{gtkIconViewGetVisibleRange}(object)}\cr
\code{\link{gtkIconViewSetTooltipItem}(object, tooltip, path)}\cr
\code{\link{gtkIconViewSetTooltipCell}(object, tooltip, path, cell)}\cr
\code{\link{gtkIconViewGetTooltipContext}(object, x, y, keyboard.tip)}\cr
\code{\link{gtkIconViewSetTooltipColumn}(object, column)}\cr
\code{\link{gtkIconViewGetTooltipColumn}(object)}\cr
\code{\link{gtkIconViewEnableModelDragSource}(object, start.button.mask, targets, actions)}\cr
\code{\link{gtkIconViewEnableModelDragDest}(object, targets, actions)}\cr
\code{\link{gtkIconViewUnsetModelDragSource}(object)}\cr
\code{\link{gtkIconViewUnsetModelDragDest}(object)}\cr
\code{\link{gtkIconViewSetReorderable}(object, reorderable)}\cr
\code{\link{gtkIconViewGetReorderable}(object)}\cr
\code{\link{gtkIconViewSetDragDestItem}(object, path, pos)}\cr
\code{\link{gtkIconViewGetDragDestItem}(object)}\cr
\code{\link{gtkIconViewGetDestItemAtPos}(object, drag.x, drag.y)}\cr
\code{\link{gtkIconViewCreateDragIcon}(object, path)}\cr
\code{gtkIconView(model = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkIconView}}
\section{Interfaces}{GtkIconView implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkCellLayout}}.}
\section{Detailed Description}{\code{\link{GtkIconView}} provides an alternative view on a list model.
It displays the model as a grid of icons with labels. Like
\code{\link{GtkTreeView}}, it allows to select one or multiple items
(depending on the selection mode, see \code{\link{gtkIconViewSetSelectionMode}}).
In addition to selection with the arrow keys, \code{\link{GtkIconView}} supports
rubberband selection, which is controlled by dragging the pointer.}
\section{Structures}{\describe{\item{\verb{GtkIconView}}{
The \code{GtkIconView} struct contains only
private fields and should not be directly accessed.

}}}
\section{Convenient Construction}{\code{gtkIconView} is the result of collapsing the constructors of \code{GtkIconView} (\code{\link{gtkIconViewNew}}, \code{\link{gtkIconViewNewWithModel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\verb{GtkIconViewDropPosition}}{
An enum for determining where a dropped item goes.

\describe{
\item{\verb{no-drop}}{no drop possible}
\item{\verb{drop-into}}{dropped item replaces the item}
\item{\verb{drop-left}}{droppped item is inserted to the left}
\item{\verb{drop-right}}{dropped item is inserted to the right}
\item{\verb{drop-above}}{dropped item is inserted above}
\item{\verb{drop-below}}{dropped item is inserted below}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkIconViewForeachFunc(icon.view, path, data)}}{
A function used by \code{\link{gtkIconViewSelectedForeach}} to map all
selected rows.  It will be called on every selected row in the view.

\describe{
\item{\code{icon.view}}{a \code{\link{GtkIconView}}}
\item{\code{path}}{The \code{\link{GtkTreePath}} of a selected row}
\item{\code{data}}{user data}
}


}}}
\section{Signals}{\describe{
\item{\code{activate-cursor-item(iconview, user.data)}}{
A keybinding signal
which gets emitted when the user activates the currently
focused item.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control activation
programmatically.
  
The default bindings for this signal are Space, Return and Enter.

\describe{
\item{\code{iconview}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{item-activated(iconview, path, user.data)}}{
The ::item-activated signal is emitted when the method
\code{\link{gtkIconViewItemActivated}} is called or the user double
clicks an item. It is also emitted when a non-editable item
is selected and one of the keys: Space, Return or Enter is
pressed.

\describe{
\item{\code{iconview}}{the object on which the signal is emitted}
\item{\code{path}}{the \code{\link{GtkTreePath}} for the activated item}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-cursor(iconview, step, count, user.data)}}{
The ::move-cursor signal is a
keybinding signal
which gets emitted when the user initiates a cursor movement.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control the cursor
programmatically.
  
The default bindings for this signal include
\itemize{
\item 
\item 
\item 
}
  
All of these will extend the selection when combined with
the Shift modifier.

\describe{
\item{\code{iconview}}{the object which received the signal}
\item{\code{step}}{the granularity of the move, as a \code{\link{GtkMovementStep}}}
\item{\code{count}}{the number of \code{step} units to move}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{select-all(iconview, user.data)}}{
A keybinding signal
which gets emitted when the user selects all items.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control selection
programmatically.
  
The default binding for this signal is Ctrl-a.

\describe{
\item{\code{iconview}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{select-cursor-item(iconview, user.data)}}{
A keybinding signal
which gets emitted when the user selects the item that is currently
focused.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control selection
programmatically.
  
There is no default binding for this signal.

\describe{
\item{\code{iconview}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{selection-changed(iconview, user.data)}}{
The ::selection-changed signal is emitted when the selection
(i.e. the set of selected items) changes.

\describe{
\item{\code{iconview}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{set-scroll-adjustments(horizontal, vertical, user.data)}}{
Set the scroll adjustments for the icon view. Usually scrolled containers
like \code{\link{GtkScrolledWindow}} will emit this signal to connect two instances
of \code{\link{GtkScrollbar}} to the scroll directions of the \code{\link{GtkIconView}}.

\describe{
\item{\code{horizontal}}{the horizontal \code{\link{GtkAdjustment}}}
\item{\code{vertical}}{the vertical \code{\link{GtkAdjustment}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-cursor-item(iconview, user.data)}}{
A keybinding signal
which gets emitted when the user toggles whether the currently
focused item is selected or not. The exact effect of this
depend on the selection mode.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control selection
programmatically.
  
There is no default binding for this signal is Ctrl-Space.

\describe{
\item{\code{iconview}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unselect-all(iconview, user.data)}}{
A keybinding signal
which gets emitted when the user unselects all items.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control selection
programmatically.
  
The default binding for this signal is Ctrl-Shift-a.

\describe{
\item{\code{iconview}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{column-spacing} [integer : Read / Write]}{

The column-spacing property specifies the space which is inserted between
the columns of the icon view.
  Allowed values: >= 0  Default value: 6  Since 2.6

}
\item{\verb{columns} [integer : Read / Write]}{

The columns property contains the number of the columns in which the
items should be displayed. If it is -1, the number of columns will
be chosen automatically to fill the available area.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{item-padding} [integer : Read / Write]}{

The item-padding property specifies the padding around each
of the icon view's item.
  Allowed values: >= 0  Default value: 6  Since 2.18

}
\item{\verb{item-width} [integer : Read / Write]}{

The item-width property specifies the width to use for each item.
If it is set to -1, the icon view will automatically determine a
suitable item size.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{margin} [integer : Read / Write]}{

The margin property specifies the space which is inserted
at the edges of the icon view.
  Allowed values: >= 0  Default value: 6  Since 2.6

}
\item{\verb{markup-column} [integer : Read / Write]}{

The ::markup-column property contains the number of the model column
containing markup information to be displayed. The markup column must be
of type \verb{G_TYPE_STRING}. If this property and the :text-column property
are both set to column numbers, it overrides the text column.
If both are set to -1, no texts are displayed.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{model} [\code{\link{GtkTreeModel}} : *         : Read / Write]}{

The model for the icon view.

}
\item{\verb{orientation} [\code{\link{GtkOrientation}} : Read / Write]}{

The orientation property specifies how the cells (i.e. the icon and
the text) of the item are positioned relative to each other.
  Default value: GTK_ORIENTATION_VERTICAL  Since 2.6

}
\item{\verb{pixbuf-column} [integer : Read / Write]}{

The ::pixbuf-column property contains the number of the model column
containing the pixbufs which are displayed. The pixbuf column must be
of type \verb{GDK_TYPE_PIXBUF}. Setting this property to -1 turns off the
display of pixbufs.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{reorderable} [logical : Read / Write]}{

The reorderable property specifies if the items can be reordered
by DND.
  Default value: FALSE  Since 2.8

}
\item{\verb{row-spacing} [integer : Read / Write]}{

The row-spacing property specifies the space which is inserted between
the rows of the icon view.
  Allowed values: >= 0  Default value: 6  Since 2.6

}
\item{\verb{selection-mode} [\code{\link{GtkSelectionMode}} : Read / Write]}{

The ::selection-mode property specifies the selection mode of
icon view. If the mode is \verb{GTK_SELECTION_MULTIPLE}, rubberband selection
is enabled, for the other modes, only keyboard selection is possible.
  Default value: GTK_SELECTION_SINGLE  Since 2.6

}
\item{\verb{spacing} [integer : Read / Write]}{

The spacing property specifies the space which is inserted between
the cells (i.e. the icon and the text) of an item.
  Allowed values: >= 0  Default value: 0  Since 2.6

}
\item{\verb{text-column} [integer : Read / Write]}{

The ::text-column property contains the number of the model column
containing the texts which are displayed. The text column must be
of type \verb{G_TYPE_STRING}. If this property and the :markup-column
property are both set to -1, no texts are displayed.
  Allowed values: >= -1  Default value: -1  Since 2.6

}
\item{\verb{tooltip-column} [integer : Read / Write]}{

The column in the model containing the tooltip texts for the items.  Allowed values: >= -1  Default value: -1

}
}}
\section{Style Properties}{\describe{
\item{\verb{selection-box-alpha} [raw : Read]}{

Opacity of the selection box.  Default value: 64

}
\item{\verb{selection-box-color} [\code{\link{GdkColor}} : *             : Read]}{

Color of the selection box.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkIconView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
