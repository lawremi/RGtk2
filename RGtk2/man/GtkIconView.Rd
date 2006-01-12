\alias{GtkIconView}
\alias{gtkIconView}
\alias{GtkIconViewForeachFunc}
\alias{GtkIconViewDropPosition}
\name{GtkIconView}
\title{GtkIconView}
\description{A widget which displays a list of icons in a grid}
\usage{
\link{gtkIconViewNew}(show = TRUE)
\link{gtkIconViewNewWithModel}(model = NULL, show = TRUE)
\link{gtkIconViewSetModel}(object, model = NULL)
\link{gtkIconViewGetModel}(object)
\link{gtkIconViewSetTextColumn}(object, column)
\link{gtkIconViewGetTextColumn}(object)
\link{gtkIconViewSetMarkupColumn}(object, column)
\link{gtkIconViewGetMarkupColumn}(object)
\link{gtkIconViewSetPixbufColumn}(object, column)
\link{gtkIconViewGetPixbufColumn}(object)
\link{gtkIconViewGetPathAtPos}(object, x, y)
\link{gtkIconViewGetItemAtPos}(object, x, y)
\link{gtkIconViewSetCursor}(object, path, cell, start.editing)
\link{gtkIconViewGetCursor}(object)
\link{gtkIconViewSelectedForeach}(object, func, data = NULL)
\link{gtkIconViewSetSelectionMode}(object, mode)
\link{gtkIconViewGetSelectionMode}(object)
\link{gtkIconViewSetOrientation}(object, orientation)
\link{gtkIconViewGetOrientation}(object)
\link{gtkIconViewSetColumns}(object, columns)
\link{gtkIconViewGetColumns}(object)
\link{gtkIconViewSetItemWidth}(object, item.width)
\link{gtkIconViewGetItemWidth}(object)
\link{gtkIconViewSetSpacing}(object, spacing)
\link{gtkIconViewGetSpacing}(object)
\link{gtkIconViewSetRowSpacing}(object, row.spacing)
\link{gtkIconViewGetRowSpacing}(object)
\link{gtkIconViewSetColumnSpacing}(object, column.spacing)
\link{gtkIconViewGetColumnSpacing}(object)
\link{gtkIconViewSetMargin}(object, margin)
\link{gtkIconViewGetMargin}(object)
\link{gtkIconViewSelectPath}(object, path)
\link{gtkIconViewUnselectPath}(object, path)
\link{gtkIconViewPathIsSelected}(object, path)
\link{gtkIconViewGetSelectedItems}(object)
\link{gtkIconViewSelectAll}(object)
\link{gtkIconViewUnselectAll}(object)
\link{gtkIconViewItemActivated}(object, path)
\link{gtkIconViewScrollToPath}(object, path, use.align, row.align, col.align)
\link{gtkIconViewGetVisibleRange}(object)
\link{gtkIconViewEnableModelDragSource}(object, start.button.mask, targets, actions)
\link{gtkIconViewEnableModelDragDest}(object, targets, actions)
\link{gtkIconViewUnsetModelDragSource}(object)
\link{gtkIconViewUnsetModelDragDest}(object)
\link{gtkIconViewSetReorderable}(object, reorderable)
\link{gtkIconViewGetReorderable}(object)
\link{gtkIconViewSetDragDestItem}(object, path, pos)
\link{gtkIconViewGetDragDestItem}(object)
\link{gtkIconViewGetDestItemAtPos}(object, drag.x, drag.y)
\link{gtkIconViewCreateDragIcon}(object, path)
gtkIconView(model = NULL, show = TRUE)
}
\details{\code{\link{GtkIconView}} provides an alternative view on a list model. 
It displays the model as a grid of icons with labels. Like 
\code{\link{GtkTreeView}}, it allows to select one or multiple items 
(depending on the selection mode, see \code{\link{gtkIconViewSetSelectionMode}}).
In addition to selection with the arrow keys, \code{\link{GtkIconView}} supports
rubberband selection, which is controlled by dragging the pointer.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----GtkIconView}}
\section{Structures}{\describe{\item{\code{GtkIconView}}{
The \code{GtkIconView} struct contains only
private fields and should not be directly accessed.

}}}
\section{Convenient Construction}{\code{gtkIconView} is the result of collapsing the constructors of \code{GtkIconView} (\code{\link{gtkIconViewNew}}, \code{\link{gtkIconViewNewWithModel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{\item{\code{enum GtkIconViewDropPosition}}{


\describe{
\item{\code{GTK_ICON_VIEW_NO_DROP (no-drop)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_VIEW_DROP_INTO (drop-into)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_VIEW_DROP_LEFT (drop-left)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_VIEW_DROP_RIGHT (drop-right)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_VIEW_DROP_ABOVE (drop-above)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_VIEW_DROP_BELOW (drop-below)}}{\emph{undocumented
}}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkIconViewForeachFunc(icon.view, path, data)}}{
A function used by \code{\link{gtkIconViewSelectedForeach}} to map all
selected rows.  It will be called on every selected row in the view.

\describe{
\item{\code{icon.view}}{[\code{\link{GtkIconView}}] }
\item{\code{path}}{[\code{\link{GtkTreePath}}] The \code{\link{GtkTreePath}} of a selected row}
\item{\code{data}}{[R object] user data}
}

}}}
\section{Interfaces}{GtkIconView implements
 AtkImplementorIface and  \code{\link{GtkCellLayout}}.}
\section{Signals}{\describe{
\item{\code{activate-cursor-item(iconview, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{item-activated(iconview, arg1, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTreePath}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-cursor(iconview, arg1, arg2, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMovementStep}}] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-all(iconview, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-cursor-item(iconview, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{selection-changed(iconview, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{set-scroll-adjustments(iconview, arg1, arg2, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-cursor-item(iconview, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unselect-all(iconview, user.data)}}{


\describe{
\item{\code{iconview}}{[\code{\link{GtkIconView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{column-spacing} [integer : Read / Write]}{

Space which is inserted between grid column.  Allowed values: >= 0  Default value: 6

}
\item{\code{columns} [integer : Read / Write]}{

The columns property contains the number of the columns in which the
items should be displayed. If it is -1, the number of columns will
be chosen automatically to fill the available area.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
\item{\code{item-width} [integer : Read / Write]}{

The width used for each item.  Allowed values: >= -1  Default value: -1

}
\item{\code{margin} [integer : Read / Write]}{

Space which is inserted at the edges of the icon view.  Allowed values: >= 0  Default value: 6

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

How the text and icon of each item are positioned relative to each other.  Default value: GTK_ORIENTATION_VERTICAL

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
by drag-and-drop.  

  Default value: FALSE  Since  2.8

}
\item{\code{row-spacing} [integer : Read / Write]}{

Space which is inserted between grid rows.  Allowed values: >= 0  Default value: 6

}
\item{\code{selection-mode} [\code{\link{GtkSelectionMode}} : Read / Write]}{

The ::selection-mode property specifies the selection mode of
icon view. If the mode is \code{GTK_SELECTION_MULTIPLE}, rubberband selection
is enabled, for the other modes, only keyboard selection is possible.  

  Default value: GTK_SELECTION_SINGLE  Since  2.6

}
\item{\code{spacing} [integer : Read / Write]}{

Space which is inserted between cells of an item.  Allowed values: >= 0  Default value: 0

}
\item{\code{text-column} [integer : Read / Write]}{

The ::text-column property contains the number of the model column
containing the texts which are displayed. The text column must be 
of type \code{G_TYPE_STRING}. If this property and the :markup-column 
property are both set to -1, no texts are displayed.  

  Allowed values: >= -1  Default value: -1  Since  2.6

}
}}
\section{Style Properties}{\describe{
\item{\code{selection-box-alpha} [integer : Read]}{

Opacity of the selection box.  Default value: 64

}
\item{\code{selection-box-color} [\code{\link{GdkColor}} : Read]}{

Color of the selection box.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkIconView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
