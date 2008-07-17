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
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----GtkIconView}}
\section{Interfaces}{GtkIconView implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkCellLayout}}.}
\section{Detailed Description}{\code{\link{GtkIconView}} provides an alternative view on a list model. 
It displays the model as a grid of icons with labels. Like 
\code{\link{GtkTreeView}}, it allows to select one or multiple items 
(depending on the selection mode, see \code{\link{gtkIconViewSetSelectionMode}}).
In addition to selection with the arrow keys, \code{\link{GtkIconView}} supports
rubberband selection, which is controlled by dragging the pointer.}
\section{Structures}{\describe{\item{\code{GtkIconView}}{
The \code{GtkIconView} struct contains only
private fields and should not be directly accessed.

}}}
\section{Convenient Construction}{\code{gtkIconView} is the result of collapsing the constructors of \code{GtkIconView} (\code{\link{gtkIconViewNew}}, \code{\link{gtkIconViewNewWithModel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\code{GtkIconViewDropPosition}}{
An enum for determining where a dropped item goes.

\describe{
\item{\code{no-drop}}{no drop possible}
\item{\code{drop-into}}{dropped item replaces the item}
\item{\code{drop-left}}{droppped item is inserted to the left}
\item{\code{drop-right}}{dropped item is inserted to the right}
\item{\code{drop-above}}{dropped item is inserted above}
\item{\code{drop-below}}{dropped item is inserted below}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkIconViewForeachFunc(icon.view, path, data)}}{
A function used by \code{\link{gtkIconViewSelectedForeach}} to map all
selected rows.  It will be called on every selected row in the view.

\describe{
\item{\code{icon.view}}{[\code{\link{GtkIconView}}] a \code{\link{GtkIconView}}}
\item{\code{path}}{[\code{\link{GtkTreePath}}] The \code{\link{GtkTreePath}} of a selected row}
\item{\code{data}}{[R object] user data}
}


}}}
\section{Signals}{\describe{
\item{\code{activate-cursor-item(iconview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{item-activated(iconview, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{move-cursor(iconview, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMovementStep}}] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{select-all(iconview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{select-cursor-item(iconview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{selection-changed(iconview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{set-scroll-adjustments(iconview, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{toggle-cursor-item(iconview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{unselect-all(iconview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{column-spacing} [integer : Read / Write]}{

The column-spacing property specifies the space which is inserted between
the columns of the icon view.  

  Allowed values: >= 0  Default value: 6  Since  2.6

}
\item{\code{columns} [integer : Read / Write]}{

The columns property contains the number of the columns in which the
items should be displayed. If it is -1, the number of columns will
be chosen automatically to fill the available area.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{item-width} [integer : Read / Write]}{

The item-width property specifies the width to use for each item. 
If it is set to -1, the icon view will automatically determine a 
suitable item size.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{margin} [integer : Read / Write]}{

The margin property specifies the space which is inserted 
at the edges of the icon view.  

  Allowed values: >= 0  Default value: 6  Since  2.6

}
\item{\code{markup-column} [integer : Read / Write]}{

The ::markup-column property contains the number of the model column
containing markup information to be displayed. The markup column must be 
of type \code{G_TYPE_STRING}. If this property and the :text-column property 
are both set to column numbers, it overrides the text column.
If both are set to -1, no texts are displayed.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{model} [\code{\link{GtkTreeModel}} : Read / Write]}{

The model for the icon view.

}
\item{\code{orientation} [\code{\link{GtkOrientation}} : Read / Write]}{

The orientation property specifies how the cells (i.e. the icon and 
the text) of the item are positioned relative to each other.  

  Default value: GTK\_ORIENTATION\_VERTICAL  Since  2.6

}
\item{\code{pixbuf-column} [integer : Read / Write]}{

The ::pixbuf-column property contains the number of the model column
containing the pixbufs which are displayed. The pixbuf column must be 
of type \code{GDK_TYPE_PIXBUF}. Setting this property to -1 turns off the
display of pixbufs.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{reorderable} [logical : Read / Write]}{

The reorderable property specifies if the items can be reordered
by DND.  

  Default value: FALSE  Since  2.8

}
\item{\code{row-spacing} [integer : Read / Write]}{

The row-spacing property specifies the space which is inserted between
the rows of the icon view.  

  Allowed values: >= 0  Default value: 6  Since  2.6

}
\item{\code{selection-mode} [\code{\link{GtkSelectionMode}} : Read / Write]}{

The ::selection-mode property specifies the selection mode of
icon view. If the mode is \code{GTK_SELECTION_MULTIPLE}, rubberband selection
is enabled, for the other modes, only keyboard selection is possible.  

  Default value: GTK\_SELECTION\_SINGLE  Since  2.6

}
\item{\code{spacing} [integer : Read / Write]}{

The spacing property specifies the space which is inserted between
the cells (i.e. the icon and the text) of an item.  

  Allowed values: >= 0  Default value: 0  Since  2.6

}
\item{\code{text-column} [integer : Read / Write]}{

The ::text-column property contains the number of the model column
containing the texts which are displayed. The text column must be 
of type \code{G_TYPE_STRING}. If this property and the :markup-column 
property are both set to -1, no texts are displayed.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{tooltip-column} [integer : Read / Write]}{

The column in the model containing the tooltip texts for the items.  Allowed values: >= -1  Default value: -1

}
}}
\section{Style Properties}{\describe{
\item{\code{selection-box-alpha} [raw : Read]}{

Opacity of the selection box.  Default value: 64

}
\item{\code{selection-box-color} [\code{\link{GdkColor}} : Read]}{

Color of the selection box.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkIconView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
