\alias{GtkCList}
\alias{GtkCListRow}
\alias{gtkCList}
\alias{GtkCListCompareFunc}
\alias{GtkCellType}
\alias{GtkButtonAction}
\alias{GtkCListDragPos}
\name{GtkCList}
\title{GtkCList}
\description{A multi-columned scrolling list widget}
\usage{gtkCList(columns = 1, titles, show = TRUE)}
\section{Methods and Functions}{
\link{gtkCListNew}(columns = 1, show = TRUE)
\link{gtkCListNewWithTitles}(columns = 1, titles, show = TRUE)
\link{gtkCListSetShadowType}(object, type)
\link{gtkCListSetSelectionMode}(object, mode)
\link{gtkCListFreeze}(object)
\link{gtkCListThaw}(object)
\link{gtkCListColumnTitlesShow}(object)
\link{gtkCListColumnTitlesHide}(object)
\link{gtkCListColumnTitleActive}(object, column)
\link{gtkCListColumnTitlePassive}(object, column)
\link{gtkCListColumnTitlesActive}(object)
\link{gtkCListColumnTitlesPassive}(object)
\link{gtkCListSetColumnTitle}(object, column, title)
\link{gtkCListSetColumnWidget}(object, column, widget)
\link{gtkCListSetColumnJustification}(object, column, justification)
\link{gtkCListSetColumnVisibility}(object, column, visible)
\link{gtkCListSetColumnResizeable}(object, column, resizeable)
\link{gtkCListSetColumnAutoResize}(object, column, auto.resize)
\link{gtkCListOptimalColumnWidth}(object, column)
\link{gtkCListSetColumnWidth}(object, column, width)
\link{gtkCListSetColumnMinWidth}(object, column, min.width)
\link{gtkCListSetColumnMaxWidth}(object, column, max.width)
\link{gtkCListSetRowHeight}(object, height)
\link{gtkCListMoveto}(object, row, column, row.align, col.align)
\link{gtkCListRowIsVisible}(object, row)
\link{gtkCListGetCellType}(object, row, column)
\link{gtkCListSetText}(w, row, cols, values, zeroBased = TRUE)
\link{gtkCListGetText}(w, row, cols, zeroBased = TRUE)
\link{gtkCListSetPixmap}(object, row, column, pixmap, mask = NULL)
\link{gtkCListGetPixmap}(object, row, column)
\link{gtkCListSetPixtext}(object, row, column, text, spacing, pixmap, mask)
\link{gtkCListGetPixtext}(object, row, column)
\link{gtkCListSetForeground}(object, row, color)
\link{gtkCListSetBackground}(object, row, color)
\link{gtkCListSetCellStyle}(object, row, column, style)
\link{gtkCListGetCellStyle}(object, row, column)
\link{gtkCListSetRowStyle}(object, row, style)
\link{gtkCListGetRowStyle}(object, row)
\link{gtkCListSetShift}(object, row, column, vertical, horizontal)
\link{gtkCListSetSelectable}(object, row, selectable)
\link{gtkCListGetSelectable}(object, row)
\link{gtkCListPrepend}(object, text)
\link{gtkCListAppend}(object, text)
\link{gtkCListInsert}(object, row, text)
\link{gtkCListRemove}(object, row)
\link{gtkCListSetRowData}(object, row, data = NULL)
\link{gtkCListSetRowDataFull}(object, row, data = NULL)
\link{gtkCListGetRowData}(object, row)
\link{gtkCListFindRowFromData}(object, data)
\link{gtkCListSelectRow}(object, row, column)
\link{gtkCListUnselectRow}(object, row, column)
\link{gtkCListUndoSelection}(object)
\link{gtkCListClear}(object)
\link{gtkCListGetSelectionInfo}(object, x, y)
\link{gtkCListSelectAll}(object)
\link{gtkCListUnselectAll}(object)
\link{gtkCListSwapRows}(object, row1, row2)
\link{gtkCListSetCompareFunc}(object, cmp.func)
\link{gtkCListSetSortColumn}(object, column)
\link{gtkCListSetSortType}(object, sort.type)
\link{gtkCListSort}(object)
\link{gtkCListSetAutoSort}(object, auto.sort)
\link{gtkCListColumnsAutosize}(object)
\link{gtkCListGetColumnTitle}(object, column)
\link{gtkCListGetColumnWidget}(object, column)
\link{gtkCListGetHadjustment}(object)
\link{gtkCListGetVadjustment}(object)
\link{gtkCListRowMove}(object, source.row, dest.row)
\link{gtkCListSetButtonActions}(object, button, button.actions)
\link{gtkCListSetHadjustment}(object, adjustment)
\link{gtkCListSetReorderable}(object, reorderable)
\link{gtkCListSetUseDragIcons}(object, use.icons)
\link{gtkCListSetVadjustment}(object, adjustment)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----GtkCList
                           +----\link{GtkCTree}}}
\section{Interfaces}{GtkCList implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkCList}} widget is a very useful multi-columned scrolling list.  
It can display data in nicely aligned vertical columns, with titles 
at the top of the list.
  
GtkCList has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkTreeView}} instead.}
\section{Structures}{\describe{
\item{\code{GtkCList}}{
\strong{WARNING: \code{GtkCList} is deprecated and should not be used in newly-written code.  
This is the embodiment of the \code{\link{GtkCList}} widget.  This structure contains
only private data, and should be accessed only via the CList API.}
This is the embodiment of the \code{\link{GtkCList}} widget.  This structure contains
only private data, and should be accessed only via the CList API.

}
\item{\code{GtkCListRow}}{
\strong{WARNING: \code{GtkCListRow} is deprecated and should not be used in newly-written code.  
A structure that the \code{\link{GtkCList}} widget uses to keep track of information
about its rows.}
A structure that the \code{\link{GtkCList}} widget uses to keep track of information
about its rows.

\describe{
\item{\code{cell}}{[GtkCell] }
\item{\code{state}}{[\code{\link{GtkStateType}}] }
\item{\code{foreground}}{[\code{\link{GdkColor}}] }
\item{\code{background}}{[\code{\link{GdkColor}}] }
\item{\code{style}}{[\code{\link{GtkStyle}}] }
\item{\code{data}}{[Robject] }
\item{\code{destroy}}{[GtkDestroyNotify] }
\item{\code{fgSet}}{[numeric] }
\item{\code{bgSet}}{[numeric] }
\item{\code{selectable}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{gtkCList} is the result of collapsing the constructors of \code{GtkCList} (\code{\link{gtkCListNew}}, \code{\link{gtkCListNewWithTitles}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkCellType}}{
\strong{WARNING: \code{GtkCellType} is deprecated and should not be used in newly-written code.  
Identifies the type of element in the current cell of the CList.  Cells can
contain text, pixmaps, or both. Unfortunately support for \code{GTK_CELL_WIDGET}
was never completed.}
Identifies the type of element in the current cell of the CList.  Cells can
contain text, pixmaps, or both. Unfortunately support for \code{GTK_CELL_WIDGET}
was never completed.

\describe{
\item{\code{GTK_CELL_EMPTY (empty)}}{\emph{undocumented
}}
\item{\code{GTK_CELL_TEXT (text)}}{\emph{undocumented
}}
\item{\code{GTK_CELL_PIXMAP (pixmap)}}{\emph{undocumented
}}
\item{\code{GTK_CELL_PIXTEXT (pixtext)}}{\emph{undocumented
}}
\item{\code{GTK_CELL_WIDGET (widget)}}{\emph{undocumented
}}
}

}
\item{\code{enum GtkButtonAction}}{
\strong{WARNING: \code{GtkButtonAction} is deprecated and should not be used in newly-written code.  
Values for specifying what mouse button events a CList will
react to.}
Values for specifying what mouse button events a CList will
react to.

\describe{
\item{\code{GTK_BUTTON_IGNORED (ignored)}}{\emph{undocumented
}}
\item{\code{GTK_BUTTON_SELECTS (selects)}}{\emph{undocumented
}}
\item{\code{GTK_BUTTON_DRAGS (drags)}}{\emph{undocumented
}}
\item{\code{GTK_BUTTON_EXPANDS (expands)}}{\emph{undocumented
}}
}

}
\item{\code{enum GtkCListDragPos}}{
\strong{WARNING: \code{GtkCListDragPos} is deprecated and should not be used in newly-written code.  
An enumeration for drag operations.}
An enumeration for drag operations.

\describe{
\item{\code{GTK_CLIST_DRAG_NONE (none)}}{\emph{undocumented
}}
\item{\code{GTK_CLIST_DRAG_BEFORE (before)}}{\emph{undocumented
}}
\item{\code{GTK_CLIST_DRAG_INTO (into)}}{\emph{undocumented
}}
\item{\code{GTK_CLIST_DRAG_AFTER (after)}}{\emph{undocumented
}}
}

}
}}
\section{User Functions}{\describe{\item{\code{GtkCListCompareFunc(clist, ptr1, ptr2)}}{
Function prototype for the compare function callback.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} that is affected.}
\item{\code{ptr1}}{[R object] A \code{R object} to the first node to compare.}
\item{\code{ptr2}}{[R object] A \code{R object} to the second node to compare.}
}

}}}
\section{Signals}{\describe{
\item{\code{abort-column-resize(clist, user.data)}}{
This signal is emitted when a column resize is aborted.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{click-column(clist, column, user.data)}}{
This signal is emitted when a column title is clicked.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] The object which received the signal.}
\item{\code{column}}{[integer] The number of the column.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{end-selection(clist, user.data)}}{
This signal is emitted when a selection ends in a 
multiple selection CList.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{extend-selection(clist, scroll.type, position, auto.start.selection, user.data)}}{
This signal is emitted when the selection is extended.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{scroll.type}}{[\code{\link{GtkScrollType}}] A \code{\link{GtkScrollType}} value of any scrolling operation the
occured during the selection.}
\item{\code{position}}{[numeric] A value between 0.0 and 1.0.}
\item{\code{auto.start.selection}}{[logical] \code{TRUE} or \code{FALSE}.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{resize-column(clist, column, width, user.data)}}{
This signal is emitted when a column is resized.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] The object which received the signal.}
\item{\code{column}}{[integer] The number of the column}
\item{\code{width}}{[integer] The new width of the column.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{row-move(clist, arg1, arg2, user.data)}}{
This signal is emitted when a row is moved.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] The object which received the signal.}
\item{\code{arg1}}{[integer] The source position of the row.}
\item{\code{arg2}}{[integer] The destination position of the row.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{scroll-horizontal(clist, scroll.type, position, user.data)}}{
This signal is emitted when the CList is scrolled horizontally.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{scroll.type}}{[\code{\link{GtkScrollType}}] A \code{\link{GtkScrollType}} value of how the scroll operation occured.}
\item{\code{position}}{[numeric] a value between 0.0 and 1.0.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{scroll-vertical(clist, scroll.type, position, user.data)}}{
This signal is emitted when the CList is scrolled vertically.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{scroll.type}}{[\code{\link{GtkScrollType}}] A \code{\link{GtkScrollType}} value of how the scroll operation occured.}
\item{\code{position}}{[numeric] A value between 0.0 and 1.0.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-all(clist, user.data)}}{
This signal is emitted when all the rows are selected in a CList.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-row(clist, row, column, event, user.data)}}{
This signal is emitted when the user selects a row in the list.  
It is emitted for every row that is selected in a multi-selection or
by calling \code{\link{gtkCListSelectAll}}.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] The object which received the signal.}
\item{\code{row}}{[integer] The row selected.}
\item{\code{column}}{[integer] The column where the selection occured.}
\item{\code{event}}{[\code{\link{GdkEventButton}}] A \code{\link{GdkEvent}} structure for the selection.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{set-scroll-adjustments(clist, arg1, arg2, user.data)}}{


\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{start-selection(clist, user.data)}}{
This signal is emitted when a drag-selection is started in 
a multiple-selection CList.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-add-mode(clist, user.data)}}{
This signal is emitted when "add mode" is toggled.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-focus-row(clist, user.data)}}{


\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] The object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{undo-selection(clist, user.data)}}{
This signal is emitted when an undo selection occurs in the CList,
probably via calling \code{\link{gtkCListUndoSelection}}.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unselect-all(clist, user.data)}}{
This signal is emitted when all rows are unselected in a CList.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unselect-row(clist, row, column, event, user.data)}}{
This signal is emitted when the user unselects a row in the list.  
It is emitted for every row that is unselected in a multi-selection or
by calling \code{\link{gtkCListUnselectAll}}.  It is also emitted for the
previously selected row in a "single" or "browse" mode CList.

\describe{
\item{\code{clist}}{[\code{\link{GtkCList}}] The object which received the signal.}
\item{\code{row}}{[integer] The selected row}
\item{\code{column}}{[integer] The column where the selection occured.}
\item{\code{event}}{[\code{\link{GdkEventButton}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{n-columns} [numeric : Read / Write / Construct Only]}{

An integer value for a column.
  Default value: 0

}
\item{\code{reorderable} [logical : Read / Write]}{

A boolean value for determining if the user can re-order the CList's
columns.
  Default value: FALSE

}
\item{\code{row-height} [numeric : Read / Write]}{

An integer value representing the height of a row in pixels.
  Default value: 0

}
\item{\code{selection-mode} [\code{\link{GtkSelectionMode}} : Read / Write]}{

Sets the type of selection mode for the CList.
  Default value: GTK_SELECTION_NONE

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Sets the shadowing for the CList.
  Default value: GTK_SHADOW_NONE

}
\item{\code{sort-type} [\code{\link{GtkSortType}} : Read / Write]}{

  Default value: GTK_SORT_ASCENDING

}
\item{\code{titles-active} [logical : Read / Write]}{

A boolean value for setting whether the column titles can be
clicked.
  Default value: FALSE

}
\item{\code{use-drag-icons} [logical : Read / Write]}{

A boolean value for setting whether to use icons during drag
operations.
  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCList.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
