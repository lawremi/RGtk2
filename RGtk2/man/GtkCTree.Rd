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
\usage{gtkCTree(columns = 1, tree.column = 0, titles, show = TRUE)}
\section{Methods and Functions}{
\link{gtkCTreeNewWithTitles}(columns = 1, tree.column = 0, titles, show = TRUE)
\link{gtkCTreeNew}(columns = 1, tree.column = 0, show = TRUE)
\link{gtkCTreeInsertNode}(object, parent, sibling, text, spacing = 5, pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, mask.opened = NULL, is.leaf = 1, expanded = 0)
\link{gtkCTreeRemoveNode}(object, node)
\link{gtkCTreeInsertGnode}(object, parent, sibling, gnode, func, data = NULL)
\link{gtkCTreeExportToGnode}(object, parent, sibling, node, func, data = NULL)
\link{gtkCTreePostRecursive}(object, node, func, data = NULL)
\link{gtkCTreePostRecursiveToDepth}(object, node, depth, func, data = NULL)
\link{gtkCTreePreRecursive}(object, node, func, data = NULL)
\link{gtkCTreePreRecursiveToDepth}(object, node, depth, func, data = NULL)
\link{gtkCTreeIsViewable}(object, node)
\link{gtkCTreeLast}(object, node)
\link{gtkCTreeFindNodePtr}(object, ctree.row)
\link{gtkCTreeFind}(object, node, child)
\link{gtkCTreeIsAncestor}(object, node, child)
\link{gtkCTreeFindByRowData}(object, node, data = NULL)
\link{gtkCTreeFindAllByRowData}(object, node, data = NULL)
\link{gtkCTreeFindByRowDataCustom}(object, node, data = NULL, func)
\link{gtkCTreeFindAllByRowDataCustom}(object, node, data = NULL, func)
\link{gtkCTreeIsHotSpot}(object, x, y)
\link{gtkCTreeMove}(object, node, new.parent = NULL, new.sibling = NULL)
\link{gtkCTreeExpand}(object, node)
\link{gtkCTreeExpandRecursive}(object, node)
\link{gtkCTreeExpandToDepth}(object, node, depth)
\link{gtkCTreeCollapse}(object, node)
\link{gtkCTreeCollapseRecursive}(object, node)
\link{gtkCTreeCollapseToDepth}(object, node, depth)
\link{gtkCTreeToggleExpansion}(object, node)
\link{gtkCTreeToggleExpansionRecursive}(object, node)
\link{gtkCTreeSelect}(object, node)
\link{gtkCTreeSelectRecursive}(object, node)
\link{gtkCTreeUnselect}(object, node)
\link{gtkCTreeUnselectRecursive}(object, node)
\link{gtkCTreeRealSelectRecursive}(object, node, state)
\link{gtkCTreeNodeSetText}(object, node, column, text)
\link{gtkCTreeNodeSetPixmap}(object, node, column, pixmap, mask = NULL)
\link{gtkCTreeNodeSetPixtext}(object, node, column, text, spacing, pixmap, mask = NULL)
\link{gtkCTreeSetNodeInfo}(object, node, text, spacing, pixmap.closed = NULL, mask.closed = NULL, pixmap.opened = NULL, mask.opened = NULL, is.leaf, expanded)
\link{gtkCTreeNodeSetShift}(object, node, column, vertical, horizontal)
\link{gtkCTreeNodeSetSelectable}(object, node, selectable)
\link{gtkCTreeNodeGetSelectable}(object, node)
\link{gtkCTreeNodeGetCellType}(object, node, column)
\link{gtkCTreeNodeGetText}(object, node, column)
\link{gtkCTreeNodeGetPixmap}(object, node, column)
\link{gtkCTreeNodeGetPixtext}(object, node, column)
\link{gtkCTreeGetNodeInfo}(object, node)
\link{gtkCTreeNodeSetRowStyle}(object, node, style)
\link{gtkCTreeNodeGetRowStyle}(object, node)
\link{gtkCTreeNodeSetCellStyle}(object, node, column, style)
\link{gtkCTreeNodeGetCellStyle}(object, node, column)
\link{gtkCTreeNodeSetForeground}(object, node, color)
\link{gtkCTreeNodeSetBackground}(object, node, color)
\link{gtkCTreeNodeSetRowData}(object, node, data)
\link{gtkCTreeNodeSetRowDataFull}(object, node, data)
\link{gtkCTreeNodeGetRowData}(object, node)
\link{gtkCTreeNodeMoveto}(object, node, column, row.align, col.align)
\link{gtkCTreeNodeIsVisible}(object, node)
\link{gtkCTreeSetIndent}(object, indent)
\link{gtkCTreeSetSpacing}(object, spacing)
\link{gtkCTreeSetLineStyle}(object, line.style)
\link{gtkCTreeSetExpanderStyle}(object, expander.style)
\link{gtkCTreeSetDragCompareFunc}(object, cmp.func)
\link{gtkCTreeSortNode}(object, node)
\link{gtkCTreeSortRecursive}(object, node)
\link{gtkCTreeNodeNth}(object, row)
\link{gtkCTreeSetShowStub}(object, show.stub)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkCList}
                           +----GtkCTree}}
\section{Interfaces}{GtkCTree implements
 AtkImplementorIface.}
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
\item{\code{GtkCTree}}{
\strong{WARNING: \code{GtkCTree} is deprecated and should not be used in newly-written code.  
The \code{\link{GtkCTree}} contains the following user-accessible fields.
These fields should be considered read-only; to set the values,
use the methods below.

\tabular{ll}{
\code{integer}     \code{tree_indent}  ; \tab The number of pixels each successive level of the tree is
indented in the display. \cr
\code{integer}     \code{tree_spacing}  ; \tab The space in pixels between the graphical tree and the text in the
node. \cr
\code{integer}     \code{tree_column}  ; \tab The index of the column for which the tree graphics is drawn.  \cr
\code{\link{GtkCTreeLineStyle}}     \code{line_style}  ; \tab The style in which the lines in the tree graphics are drawn. \cr
\code{\link{GtkCTreeExpanderStyle}}     \code{expander_style}  ; \tab The style in which the expander buttons are drawn. \cr
\code{\link{GtkCTreeExpanderStyle}}     \code{expander_style}  ; \tab FIXME. \cr
}}
The \code{\link{GtkCTree}} contains the following user-accessible fields.
These fields should be considered read-only; to set the values,
use the methods below.

\tabular{ll}{
\code{integer}     \code{tree_indent}  ; \tab The number of pixels each successive level of the tree is
indented in the display. \cr
\code{integer}     \code{tree_spacing}  ; \tab The space in pixels between the graphical tree and the text in the
node. \cr
\code{integer}     \code{tree_column}  ; \tab The index of the column for which the tree graphics is drawn.  \cr
\code{\link{GtkCTreeLineStyle}}     \code{line_style}  ; \tab The style in which the lines in the tree graphics are drawn. \cr
\code{\link{GtkCTreeExpanderStyle}}     \code{expander_style}  ; \tab The style in which the expander buttons are drawn. \cr
\code{\link{GtkCTreeExpanderStyle}}     \code{expander_style}  ; \tab FIXME. \cr
}

}
\item{\code{GtkCTreeRow}}{
\strong{WARNING: \code{GtkCTreeRow} is deprecated and should not be used in newly-written code.  
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
\code{integer}     \code{level}  ; \tab The level of this node in the tree. \cr
\code{numeric}     \code{is_leaf}   : 1; \tab Whether this row is a leaf. \cr
\code{numeric}     \code{expanded}   : 1; \tab Whether the children of this row are visible. \cr
}}
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
\code{integer}     \code{level}  ; \tab The level of this node in the tree. \cr
\code{numeric}     \code{is_leaf}   : 1; \tab Whether this row is a leaf. \cr
\code{numeric}     \code{expanded}   : 1; \tab Whether the children of this row are visible. \cr
}

}
\item{\code{GtkCTreeNode}}{
\strong{WARNING: \code{GtkCTreeNode} is deprecated and should not be used in newly-written code.  
This structure is opaque - you should use the
functions \code{GTK_CTREE_ROW}, \code{GTK_CTREE_NODE_NEXT} etc. as well
as the functions below to access it.}
This structure is opaque - you should use the
functions \code{GTK_CTREE_ROW}, \code{GTK_CTREE_NODE_NEXT} etc. as well
as the functions below to access it.

}
}}
\section{Convenient Construction}{\code{gtkCTree} is the result of collapsing the constructors of \code{GtkCTree} (\code{\link{gtkCTreeNewWithTitles}}, \code{\link{gtkCTreeNew}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkCTreePos}}{
\strong{WARNING: \code{GtkCTreePos} is deprecated and should not be used in newly-written code.  
A value specifying the position of a new node relative to an old one.

\tabular{ll}{
GTK_CTREE_POS_BEFORE \tab As a sibling, before the specified node. \cr
GTK_CTREE_POS_AS_CHILD \tab As a child of the specified node. \cr
GTK_CTREE_POS_AFTER \tab As a sibling, after the specified node. \cr
}}
A value specifying the position of a new node relative to an old one.

\tabular{ll}{
GTK_CTREE_POS_BEFORE \tab As a sibling, before the specified node. \cr
GTK_CTREE_POS_AS_CHILD \tab As a child of the specified node. \cr
GTK_CTREE_POS_AFTER \tab As a sibling, after the specified node. \cr
}

}
\item{\code{enum GtkCTreeLineStyle}}{
\strong{WARNING: \code{GtkCTreeLineStyle} is deprecated and should not be used in newly-written code.  
The appearance of the lines in the tree graphics.

\tabular{ll}{
GTK_CTREE_LINES_NONE \tab No lines. \cr
GTK_CTREE_LINES_SOLID \tab Solid lines. \cr
GTK_CTREE_LINES_DOTTED \tab Dotted lines. \cr
GTK_CTREE_LINES_TABBED \tab FIXME. \cr
}}
The appearance of the lines in the tree graphics.

\tabular{ll}{
GTK_CTREE_LINES_NONE \tab No lines. \cr
GTK_CTREE_LINES_SOLID \tab Solid lines. \cr
GTK_CTREE_LINES_DOTTED \tab Dotted lines. \cr
GTK_CTREE_LINES_TABBED \tab FIXME. \cr
}

}
\item{\code{enum GtkCTreeExpanderStyle}}{
\strong{WARNING: \code{GtkCTreeExpanderStyle} is deprecated and should not be used in newly-written code.  
The appearance of the expander buttons, i.e. the small buttons
which expand or contract parts of the tree when pressed.


\tabular{ll}{
GTK_CTREE_EXPANDER_NONE \tab No expanders. \cr
GTK_CTREE_EXPANDER_SQUARE \tab Square expanders. \cr
GTK_CTREE_EXPANDER_TRIANGLE \tab Triangular expanders. \cr
GTK_CTREE_EXPANDER_CIRCULAR \tab Round expanders. \cr
}}
The appearance of the expander buttons, i.e. the small buttons
which expand or contract parts of the tree when pressed.


\tabular{ll}{
GTK_CTREE_EXPANDER_NONE \tab No expanders. \cr
GTK_CTREE_EXPANDER_SQUARE \tab Square expanders. \cr
GTK_CTREE_EXPANDER_TRIANGLE \tab Triangular expanders. \cr
GTK_CTREE_EXPANDER_CIRCULAR \tab Round expanders. \cr
}

}
\item{\code{enum GtkCTreeExpansionType}}{
\strong{WARNING: \code{GtkCTreeExpansionType} is deprecated and should not be used in newly-written code.  
How to expand or collapse a part of a tree.

\tabular{ll}{
GTK_CTREE_EXPANSION_EXPAND \tab Expand this node. \cr
GTK_CTREE_EXPANSION_EXPAND_RECURSIVE \tab Expand this node and everything below it in the hierarchy. \cr
GTK_CTREE_EXPANSION_COLLAPSE \tab Collapse this node. \cr
GTK_CTREE_EXPANSION_COLLAPSE_RECURSIVE \tab Collapse this node and everything below it in the hierarchy. \cr
GTK_CTREE_EXPANSION_TOGGLE \tab Toggle this node (i.e. expand if collapsed and vice versa). \cr
GTK_CTREE_EXPANSION_TOGGLE_RECURSIVE \tab Toggle this node and everything below it in the hierarchy. \cr
}}
How to expand or collapse a part of a tree.

\tabular{ll}{
GTK_CTREE_EXPANSION_EXPAND \tab Expand this node. \cr
GTK_CTREE_EXPANSION_EXPAND_RECURSIVE \tab Expand this node and everything below it in the hierarchy. \cr
GTK_CTREE_EXPANSION_COLLAPSE \tab Collapse this node. \cr
GTK_CTREE_EXPANSION_COLLAPSE_RECURSIVE \tab Collapse this node and everything below it in the hierarchy. \cr
GTK_CTREE_EXPANSION_TOGGLE \tab Toggle this node (i.e. expand if collapsed and vice versa). \cr
GTK_CTREE_EXPANSION_TOGGLE_RECURSIVE \tab Toggle this node and everything below it in the hierarchy. \cr
}

}
}}
\section{User Functions}{\describe{
\item{\code{GtkCTreeFunc(ctree, node, data)}}{
A generic callback type to do something with a particular node.

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] The \code{\link{GtkCTree}} object.}
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] The \code{\link{GtkCTreeNode}} in the tree.}
\item{\code{data}}{[R object] The user data associated with the node.}
}

}
\item{\code{GtkCTreeGNodeFunc(ctree, depth, gnode, cnode, data)}}{
FIXME

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] }
\item{\code{depth}}{[numeric] }
\item{\code{gnode}}{[GNode] }
\item{\code{cnode}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{data}}{[R object] }
}

}
\item{\code{GtkCTreeCompareDragFunc(ctree, source.node, new.parent, new.sibling)}}{
FIXME

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] }
\item{\code{source.node}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{new.parent}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{new.sibling}}{[\code{\link{GtkCTreeNode}}] }
}

}
}}
\section{Signals}{\describe{
\item{\code{change-focus-row-expansion(ctree, expansion, user.data)}}{
The row which has the focus is either collapsed or expanded
or toggled.

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] the object which received the signal.}
\item{\code{expansion}}{[\code{\link{GtkCTreeExpansionType}}] What is being done.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{tree-collapse(ctree, node, user.data)}}{
Emitted when a node is collapsed.

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] the object which received the signal.}
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{tree-expand(ctree, node, user.data)}}{
Emitted when a node is expanded.

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] the object which received the signal.}
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{tree-move(ctree, node, new.parent, new.sibling, user.data)}}{
Emitted when a node is moved.

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] the object which received the signal.}
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] The node that is moved.}
\item{\code{new.parent}}{[\code{\link{GtkCTreeNode}}] The new parent of the node.}
\item{\code{new.sibling}}{[\code{\link{GtkCTreeNode}}] The new sibling of the node.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{tree-select-row(ctree, node, column, user.data)}}{
Emitted when a row is selected.

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] the object which received the signal.}
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] The node corresponding to the selected row.}
\item{\code{column}}{[integer] The column which was selected.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{tree-unselect-row(ctree, node, column, user.data)}}{
Emitted when a node is unselected.

\describe{
\item{\code{ctree}}{[\code{\link{GtkCTree}}] the object which received the signal.}
\item{\code{node}}{[\code{\link{GtkCTreeNode}}] The node  corresponding to the selected row.}
\item{\code{column}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{expander-style} [\code{\link{GtkCTreeExpanderStyle}} : Read / Write]}{

The style of the expander buttons.
  Default value: GTK_CTREE_EXPANDER_NONE

}
\item{\code{indent} [numeric : Read / Write]}{

The number of pixels to indent the tree levels.
  Default value: 0

}
\item{\code{line-style} [\code{\link{GtkCTreeLineStyle}} : Read / Write]}{

The style of the lines in the tree graphic.
  Default value: GTK_CTREE_LINES_NONE

}
\item{\code{n-columns} [numeric : Read / Write / Construct Only]}{

The number of columns in the tree.
  Default value: 0

}
\item{\code{show-stub} [logical : Read / Write]}{

  Default value: FALSE

}
\item{\code{spacing} [numeric : Read / Write]}{

The number of pixels between the tree and the columns.
  Default value: 0

}
\item{\code{tree-column} [numeric : Read / Write / Construct Only]}{

The column in which the actual tree graphic appears.
  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCTree.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
