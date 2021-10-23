\alias{GtkCTree}
\alias{GtkCTreeRow}
\alias{GtkCTreeNode}
\alias{gtkCTree}
\alias{GtkCTreeFunc}
\alias{GtkCTreeGNodeFunc}
\alias{GtkCTreeCompareDragFunc}
\alias{GtkCTreePos}
\alias{GtkCTreeLineStyle}
\alias{GtkCTreeExpanderStyle}
\alias{GtkCTreeExpansionType}
\name{GtkCTree}
\title{GtkCTree}
\description{A widget displaying a hierarchical tree}
\section{Methods and Functions}{
\code{\link{gtkCTreeNewWithTitles}(columns = 1, tree.column = 0, titles, show = TRUE)}\cr
\code{\link{gtkCTreeNew}(columns = 1, tree.column = 0, show = TRUE)}\cr
\code{\link{gtkCTreeInsertNode}(object, parent, sibling, text, spacing = 5, pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, mask.opened = NULL, is.leaf = 1, expanded = 0)}\cr
\code{\link{gtkCTreeRemoveNode}(object, node)}\cr
\code{\link{gtkCTreeInsertGnode}(object, parent, sibling, gnode, func, data = NULL)}\cr
\code{\link{gtkCTreeExportToGnode}(object, parent, sibling, node, func, data = NULL)}\cr
\code{\link{gtkCTreePostRecursive}(object, node, func, data = NULL)}\cr
\code{\link{gtkCTreePostRecursiveToDepth}(object, node, depth, func, data = NULL)}\cr
\code{\link{gtkCTreePreRecursive}(object, node, func, data = NULL)}\cr
\code{\link{gtkCTreePreRecursiveToDepth}(object, node, depth, func, data = NULL)}\cr
\code{\link{gtkCTreeIsViewable}(object, node)}\cr
\code{\link{gtkCTreeLast}(object, node)}\cr
\code{\link{gtkCTreeFindNodePtr}(object, ctree.row)}\cr
\code{\link{gtkCTreeFind}(object, node, child)}\cr
\code{\link{gtkCTreeIsAncestor}(object, node, child)}\cr
\code{\link{gtkCTreeFindByRowData}(object, node, data = NULL)}\cr
\code{\link{gtkCTreeFindAllByRowData}(object, node, data = NULL)}\cr
\code{\link{gtkCTreeFindByRowDataCustom}(object, node, data = NULL, func)}\cr
\code{\link{gtkCTreeFindAllByRowDataCustom}(object, node, data = NULL, func)}\cr
\code{\link{gtkCTreeIsHotSpot}(object, x, y)}\cr
\code{\link{gtkCTreeMove}(object, node, new.parent = NULL, new.sibling = NULL)}\cr
\code{\link{gtkCTreeExpand}(object, node)}\cr
\code{\link{gtkCTreeExpandRecursive}(object, node)}\cr
\code{\link{gtkCTreeExpandToDepth}(object, node, depth)}\cr
\code{\link{gtkCTreeCollapse}(object, node)}\cr
\code{\link{gtkCTreeCollapseRecursive}(object, node)}\cr
\code{\link{gtkCTreeCollapseToDepth}(object, node, depth)}\cr
\code{\link{gtkCTreeToggleExpansion}(object, node)}\cr
\code{\link{gtkCTreeToggleExpansionRecursive}(object, node)}\cr
\code{\link{gtkCTreeSelect}(object, node)}\cr
\code{\link{gtkCTreeSelectRecursive}(object, node)}\cr
\code{\link{gtkCTreeUnselect}(object, node)}\cr
\code{\link{gtkCTreeUnselectRecursive}(object, node)}\cr
\code{\link{gtkCTreeRealSelectRecursive}(object, node, state)}\cr
\code{\link{gtkCTreeNodeSetText}(object, node, column, text)}\cr
\code{\link{gtkCTreeNodeSetPixmap}(object, node, column, pixmap, mask = NULL)}\cr
\code{\link{gtkCTreeNodeSetPixtext}(object, node, column, text, spacing, pixmap, mask = NULL)}\cr
\code{\link{gtkCTreeSetNodeInfo}(object, node, text, spacing, pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, mask.opened = NULL, is.leaf, expanded)}\cr
\code{\link{gtkCTreeNodeSetShift}(object, node, column, vertical, horizontal)}\cr
\code{\link{gtkCTreeNodeSetSelectable}(object, node, selectable)}\cr
\code{\link{gtkCTreeNodeGetSelectable}(object, node)}\cr
\code{\link{gtkCTreeNodeGetCellType}(object, node, column)}\cr
\code{\link{gtkCTreeNodeGetText}(object, node, column)}\cr
\code{\link{gtkCTreeNodeGetPixmap}(object, node, column)}\cr
\code{\link{gtkCTreeNodeGetPixtext}(object, node, column)}\cr
\code{\link{gtkCTreeGetNodeInfo}(object, node)}\cr
\code{\link{gtkCTreeNodeSetRowStyle}(object, node, style)}\cr
\code{\link{gtkCTreeNodeGetRowStyle}(object, node)}\cr
\code{\link{gtkCTreeNodeSetCellStyle}(object, node, column, style)}\cr
\code{\link{gtkCTreeNodeGetCellStyle}(object, node, column)}\cr
\code{\link{gtkCTreeNodeSetForeground}(object, node, color)}\cr
\code{\link{gtkCTreeNodeSetBackground}(object, node, color)}\cr
\code{\link{gtkCTreeNodeSetRowData}(object, node, data)}\cr
\code{\link{gtkCTreeNodeSetRowDataFull}(object, node, data)}\cr
\code{\link{gtkCTreeNodeGetRowData}(object, node)}\cr
\code{\link{gtkCTreeNodeMoveto}(object, node, column, row.align, col.align)}\cr
\code{\link{gtkCTreeNodeIsVisible}(object, node)}\cr
\code{\link{gtkCTreeSetIndent}(object, indent)}\cr
\code{\link{gtkCTreeSetSpacing}(object, spacing)}\cr
\code{\link{gtkCTreeSetLineStyle}(object, line.style)}\cr
\code{\link{gtkCTreeSetExpanderStyle}(object, expander.style)}\cr
\code{\link{gtkCTreeSetDragCompareFunc}(object, cmp.func)}\cr
\code{\link{gtkCTreeSortNode}(object, node)}\cr
\code{\link{gtkCTreeSortRecursive}(object, node)}\cr
\code{\link{gtkCTreeNodeNth}(object, row)}\cr
\code{\link{gtkCTreeSetShowStub}(object, show.stub)}\cr
\code{gtkCTree(columns = 1, tree.column = 0, titles, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkCList
                                 +----GtkCTree}}
\section{Interfaces}{GtkCTree implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkCTree}} widget is used for showing a hierarchical tree
to the user, for example a directory tree.
  
The tree is internally represented as a set of \code{\link{GtkCTreeNode}} structures.
  
The interface has much in common with the \code{\link{GtkCList}} widget: rows (nodes)
can be selected by the user etc.
  
Positions in the tree are often indicated by two arguments, a
parent and a sibling, both \code{\link{GtkCTreeNode}} pointers. If the parent
is \code{NULL}, the position is at the root of the tree and if the sibling
is \code{NULL}, it will be the last child of parent, otherwise it will be
inserted just before the sibling.
  
GtkCTree has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkTreeView}} instead.}
\section{Structures}{\describe{
\item{\verb{GtkCTree}}{
\strong{WARNING: \code{GtkCTree} is deprecated and should not be used in newly-written code.}
The \code{\link{GtkCTree}} contains the following user-accessible fields.
These fields should be considered read-only; to set the values,
use the methods below.
\tabular{ll}{
\verb{integer}  \code{tree_indent}  ; \tab The number of pixels each successive level of the tree is
indented in the display. \cr
\verb{integer}  \code{tree_spacing}  ; \tab The space in pixels between the graphical tree and the text in the
node. \cr
\verb{integer}  \code{tree_column}  ; \tab The index of the column for which the tree graphics is drawn.  \cr
\code{\link{GtkCTreeLineStyle}}  \code{line_style}  ; \tab The style in which the lines in the tree graphics are drawn. \cr
\code{\link{GtkCTreeExpanderStyle}}  \code{expander_style}  ; \tab The style in which the expander buttons are drawn. \cr
\code{\link{GtkCTreeExpanderStyle}}  \code{expander_style}  ; \tab FIXME. \cr
}

}
\item{\verb{GtkCTreeRow}}{
\strong{WARNING: \code{GtkCTreeRow} is deprecated and should not be used in newly-written code.}
A structure representing a single row in the tree graph.
The values inside the structure should be considered read-only.
This structure is derived from the \code{\link{GtkCListRow}} structure.
\tabular{ll}{
\code{\link{GtkCTreeNode}}   *  \code{parent}  ; \tab The parent node of the node corresponding to this row. \cr
\code{\link{GtkCTreeNode}}   *  \code{sibling}  ; \tab The next sibling node of the node corresponding to this row. \cr
\code{\link{GtkCTreeNode}}   *  \code{children}  ; \tab The first child node corresponding to this row; to access
the other children, just use the siblings of that node. \cr
\code{\link{GdkPixmap}}   *  \code{pixmap_closed}  ; \tab  The pixmap to be shown when the node is collapsed. \cr
\code{\link{GdkBitmap}}   *  \code{mask_closed}  ; \tab  The mask for the above pixmap. \cr
\code{\link{GdkPixmap}}   *  \code{pixmap_opened}  ; \tab  The pixmap to be shown when the node is expanded. \cr
\code{\link{GdkBitmap}}   *  \code{mask_opened}  ; \tab  The mask for the above pixmap. \cr
\verb{integer}  \code{level}  ; \tab The level of this node in the tree. \cr
\verb{numeric}  \code{is_leaf}   : 1; \tab Whether this row is a leaf. \cr
\verb{numeric}  \code{expanded}   : 1; \tab Whether the children of this row are visible. \cr
}

}
\item{\verb{GtkCTreeNode}}{
\strong{WARNING: \code{GtkCTreeNode} is deprecated and should not be used in newly-written code.}
This structure is opaque - you should use the
functions \verb{GTK_CTREE_ROW}, \verb{GTK_CTREE_NODE_NEXT} etc. as well
as the functions below to access it.

}
}}
\section{Convenient Construction}{\code{gtkCTree} is the result of collapsing the constructors of \code{GtkCTree} (\code{\link{gtkCTreeNewWithTitles}}, \code{\link{gtkCTreeNew}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkCTreePos}}{
\strong{WARNING: \code{GtkCTreePos} is deprecated and should not be used in newly-written code.}
A value specifying the position of a new node relative to an old one.
\tabular{ll}{
GTK_CTREE_POS_BEFORE \tab As a sibling, before the specified node. \cr
GTK_CTREE_POS_AS_CHILD \tab As a child of the specified node. \cr
GTK_CTREE_POS_AFTER \tab As a sibling, after the specified node. \cr
}

\describe{
\item{\verb{before}}{\emph{undocumented
}}
\item{\verb{as-child}}{\emph{undocumented
}}
\item{\verb{after}}{\emph{undocumented
}}
}

}
\item{\verb{GtkCTreeLineStyle}}{
\strong{WARNING: \code{GtkCTreeLineStyle} is deprecated and should not be used in newly-written code.}
The appearance of the lines in the tree graphics.
\tabular{ll}{
GTK_CTREE_LINES_NONE \tab No lines. \cr
GTK_CTREE_LINES_SOLID \tab Solid lines. \cr
GTK_CTREE_LINES_DOTTED \tab Dotted lines. \cr
GTK_CTREE_LINES_TABBED \tab FIXME. \cr
}

\describe{
\item{\verb{none}}{\emph{undocumented
}}
\item{\verb{solid}}{\emph{undocumented
}}
\item{\verb{dotted}}{\emph{undocumented
}}
\item{\verb{tabbed}}{\emph{undocumented
}}
}

}
\item{\verb{GtkCTreeExpanderStyle}}{
\strong{WARNING: \code{GtkCTreeExpanderStyle} is deprecated and should not be used in newly-written code.}
The appearance of the expander buttons, i.e. the small buttons
which expand or contract parts of the tree when pressed.
\tabular{ll}{
GTK_CTREE_EXPANDER_NONE \tab No expanders. \cr
GTK_CTREE_EXPANDER_SQUARE \tab Square expanders. \cr
GTK_CTREE_EXPANDER_TRIANGLE \tab Triangular expanders. \cr
GTK_CTREE_EXPANDER_CIRCULAR \tab Round expanders. \cr
}

\describe{
\item{\verb{none}}{\emph{undocumented
}}
\item{\verb{square}}{\emph{undocumented
}}
\item{\verb{triangle}}{\emph{undocumented
}}
\item{\verb{circular}}{\emph{undocumented
}}
}

}
\item{\verb{GtkCTreeExpansionType}}{
\strong{WARNING: \code{GtkCTreeExpansionType} is deprecated and should not be used in newly-written code.}
How to expand or collapse a part of a tree.
\tabular{ll}{
GTK_CTREE_EXPANSION_EXPAND \tab Expand this node. \cr
GTK_CTREE_EXPANSION_EXPAND_RECURSIVE \tab Expand this node and everything below it in the hierarchy. \cr
GTK_CTREE_EXPANSION_COLLAPSE \tab Collapse this node. \cr
GTK_CTREE_EXPANSION_COLLAPSE_RECURSIVE \tab Collapse this node and everything below it in the hierarchy. \cr
GTK_CTREE_EXPANSION_TOGGLE \tab Toggle this node (i.e. expand if collapsed and vice versa). \cr
GTK_CTREE_EXPANSION_TOGGLE_RECURSIVE \tab Toggle this node and everything below it in the hierarchy. \cr
}

\describe{
\item{\verb{expand}}{\emph{undocumented
}}
\item{\verb{expand-recursive}}{\emph{undocumented
}}
\item{\verb{collapse}}{\emph{undocumented
}}
\item{\verb{collapse-recursive}}{\emph{undocumented
}}
\item{\verb{toggle}}{\emph{undocumented
}}
\item{\verb{toggle-recursive}}{\emph{undocumented
}}
}

}
}}
\section{User Functions}{\describe{
\item{\code{GtkCTreeFunc(ctree, node, data)}}{
A generic callback type to do something with a particular node.

\describe{
\item{\code{ctree}}{The \code{\link{GtkCTree}} object.}
\item{\code{node}}{The \code{\link{GtkCTreeNode}} in the tree.}
\item{\code{data}}{The user data associated with the node.}
}


}
\item{\code{GtkCTreeGNodeFunc()}}{
FIXME




}
\item{\code{GtkCTreeCompareDragFunc()}}{
FIXME




}
}}
\section{Signals}{\describe{
\item{\code{change-focus-row-expansion(ctree, expansion, user.data)}}{
The row which has the focus is either collapsed or expanded
or toggled.

\describe{
\item{\code{ctree}}{the object which received the signal.}
\item{\code{expansion}}{What is being done.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{tree-collapse(ctree, user.data)}}{
Emitted when a node is collapsed.

\describe{
\item{\code{ctree}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{tree-expand(ctree, user.data)}}{
Emitted when a node is expanded.

\describe{
\item{\code{ctree}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{tree-move(ctree, node, new.parent, new.sibling, user.data)}}{
Emitted when a node is moved.

\describe{
\item{\code{ctree}}{the object which received the signal.}
\item{\code{node}}{The node that is moved.}
\item{\code{new.parent}}{The new parent of the node.}
\item{\code{new.sibling}}{The new sibling of the node.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{tree-select-row(ctree, node, column, user.data)}}{
Emitted when a row is selected.

\describe{
\item{\code{ctree}}{the object which received the signal.}
\item{\code{node}}{The node corresponding to the selected row.}
\item{\code{column}}{The column which was selected.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{tree-unselect-row(ctree, node, user.data)}}{
Emitted when a node is unselected.

\describe{
\item{\code{ctree}}{the object which received the signal.}
\item{\code{node}}{The node  corresponding to the selected row.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{expander-style} [\code{\link{GtkCTreeExpanderStyle}} : Read / Write]}{

The style of the expander buttons.
  Default value: GTK_CTREE_EXPANDER_NONE

}
\item{\verb{indent} [numeric : Read / Write]}{

The number of pixels to indent the tree levels.
  Default value: 0

}
\item{\verb{line-style} [\code{\link{GtkCTreeLineStyle}} : Read / Write]}{

The style of the lines in the tree graphic.
  Default value: GTK_CTREE_LINES_NONE

}
\item{\verb{n-columns} [numeric : Read / Write / Construct Only]}{

The number of columns in the tree.
  Default value: 0

}
\item{\verb{show-stub} [logical : Read / Write]}{

  Default value: FALSE

}
\item{\verb{spacing} [numeric : Read / Write]}{

The number of pixels between the tree and the columns.
  Default value: 0

}
\item{\verb{tree-column} [numeric : Read / Write / Construct Only]}{

The column in which the actual tree graphic appears.
  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCTree.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
