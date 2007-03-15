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
\section{Methods and Functions}{
\code{\link{gtkCListNew}(columns = 1, show = TRUE)}\cr
\code{\link{gtkCListNewWithTitles}(columns = 1, titles, show = TRUE)}\cr
\code{\link{gtkCListSetShadowType}(object, type)}\cr
\code{\link{gtkCListSetSelectionMode}(object, mode)}\cr
\code{\link{gtkCListFreeze}(object)}\cr
\code{\link{gtkCListThaw}(object)}\cr
\code{\link{gtkCListColumnTitlesShow}(object)}\cr
\code{\link{gtkCListColumnTitlesHide}(object)}\cr
\code{\link{gtkCListColumnTitleActive}(object, column)}\cr
\code{\link{gtkCListColumnTitlePassive}(object, column)}\cr
\code{\link{gtkCListColumnTitlesActive}(object)}\cr
\code{\link{gtkCListColumnTitlesPassive}(object)}\cr
\code{\link{gtkCListSetColumnTitle}(object, column, title)}\cr
\code{\link{gtkCListSetColumnWidget}(object, column, widget)}\cr
\code{\link{gtkCListSetColumnJustification}(object, column, justification)}\cr
\code{\link{gtkCListSetColumnVisibility}(object, column, visible)}\cr
\code{\link{gtkCListSetColumnResizeable}(object, column, resizeable)}\cr
\code{\link{gtkCListSetColumnAutoResize}(object, column, auto.resize)}\cr
\code{\link{gtkCListOptimalColumnWidth}(object, column)}\cr
\code{\link{gtkCListSetColumnWidth}(object, column, width)}\cr
\code{\link{gtkCListSetColumnMinWidth}(object, column, min.width)}\cr
\code{\link{gtkCListSetColumnMaxWidth}(object, column, max.width)}\cr
\code{\link{gtkCListSetRowHeight}(object, height)}\cr
\code{\link{gtkCListMoveto}(object, row, column, row.align, col.align)}\cr
\code{\link{gtkCListRowIsVisible}(object, row)}\cr
\code{\link{gtkCListGetCellType}(object, row, column)}\cr
\code{\link{gtkCListSetText}(w, row, cols, values, zeroBased = TRUE)}\cr
\code{\link{gtkCListGetText}(w, row, cols, zeroBased = TRUE)}\cr
\code{\link{gtkCListSetPixmap}(object, row, column, pixmap, mask = NULL)}\cr
\code{\link{gtkCListGetPixmap}(object, row, column)}\cr
\code{\link{gtkCListSetPixtext}(object, row, column, text, spacing, pixmap, mask)}\cr
\code{\link{gtkCListGetPixtext}(object, row, column)}\cr
\code{\link{gtkCListSetForeground}(object, row, color)}\cr
\code{\link{gtkCListSetBackground}(object, row, color)}\cr
\code{\link{gtkCListSetCellStyle}(object, row, column, style)}\cr
\code{\link{gtkCListGetCellStyle}(object, row, column)}\cr
\code{\link{gtkCListSetRowStyle}(object, row, style)}\cr
\code{\link{gtkCListGetRowStyle}(object, row)}\cr
\code{\link{gtkCListSetShift}(object, row, column, vertical, horizontal)}\cr
\code{\link{gtkCListSetSelectable}(object, row, selectable)}\cr
\code{\link{gtkCListGetSelectable}(object, row)}\cr
\code{\link{gtkCListPrepend}(object, text)}\cr
\code{\link{gtkCListAppend}(object, text)}\cr
\code{\link{gtkCListInsert}(object, row, text)}\cr
\code{\link{gtkCListRemove}(object, row)}\cr
\code{\link{gtkCListSetRowData}(object, row, data = NULL)}\cr
\code{\link{gtkCListSetRowDataFull}(object, row, data = NULL)}\cr
\code{\link{gtkCListGetRowData}(object, row)}\cr
\code{\link{gtkCListFindRowFromData}(object, data)}\cr
\code{\link{gtkCListSelectRow}(object, row, column)}\cr
\code{\link{gtkCListUnselectRow}(object, row, column)}\cr
\code{\link{gtkCListUndoSelection}(object)}\cr
\code{\link{gtkCListClear}(object)}\cr
\code{\link{gtkCListGetSelectionInfo}(object, x, y)}\cr
\code{\link{gtkCListSelectAll}(object)}\cr
\code{\link{gtkCListUnselectAll}(object)}\cr
\code{\link{gtkCListSwapRows}(object, row1, row2)}\cr
\code{\link{gtkCListSetCompareFunc}(object, cmp.func)}\cr
\code{\link{gtkCListSetSortColumn}(object, column)}\cr
\code{\link{gtkCListSetSortType}(object, sort.type)}\cr
\code{\link{gtkCListSort}(object)}\cr
\code{\link{gtkCListSetAutoSort}(object, auto.sort)}\cr
\code{\link{gtkCListColumnsAutosize}(object)}\cr
\code{\link{gtkCListGetColumnTitle}(object, column)}\cr
\code{\link{gtkCListGetColumnWidget}(object, column)}\cr
\code{\link{gtkCListGetHadjustment}(object)}\cr
\code{\link{gtkCListGetVadjustment}(object)}\cr
\code{\link{gtkCListRowMove}(object, source.row, dest.row)}\cr
\code{\link{gtkCListSetButtonActions}(object, button, button.actions)}\cr
\code{\link{gtkCListSetHadjustment}(object, adjustment)}\cr
\code{\link{gtkCListSetReorderable}(object, reorderable)}\cr
\code{\link{gtkCListSetUseDragIcons}(object, use.icons)}\cr
\code{\link{gtkCListSetVadjustment}(object, adjustment)}\cr
\code{gtkCList(columns = 1, titles, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
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
\strong{WARNING: \code{GtkCList} is deprecated and should not be used in newly-written code.}
This is the embodiment of the \code{\link{GtkCList}} widget.  This structure contains
only private data, and should be accessed only via the CList API.

}
\item{\code{GtkCListRow}}{
\strong{WARNING: \code{GtkCListRow} is deprecated and should not be used in newly-written code.}
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
\item{\code{GtkCellType}}{
\strong{WARNING: \code{GtkCellType} is deprecated and should not be used in newly-written code.}
Identifies the type of element in the current cell of the CList.  Cells can
contain text, pixmaps, or both. Unfortunately support for \code{GTK_CELL_WIDGET}
was never completed.

\describe{
\item{\code{empty}}{\emph{undocumented
}}
\item{\code{text}}{\emph{undocumented
}}
\item{\code{pixmap}}{\emph{undocumented
}}
\item{\code{pixtext}}{\emph{undocumented
}}
\item{\code{widget}}{\emph{undocumented
}}
}

}
\item{\code{GtkButtonAction}}{
\strong{WARNING: \code{GtkButtonAction} is deprecated and should not be used in newly-written code.}
Values for specifying what mouse button events a CList will
react to.

\describe{
\item{\code{ignored}}{\emph{undocumented
}}
\item{\code{selects}}{\emph{undocumented
}}
\item{\code{drags}}{\emph{undocumented
}}
\item{\code{expands}}{\emph{undocumented
}}
}

}
\item{\code{GtkCListDragPos}}{
\strong{WARNING: \code{GtkCListDragPos} is deprecated and should not be used in newly-written code.}
An enumeration for drag operations.

\describe{
\item{\code{none}}{\emph{undocumented
}}
\item{\code{before}}{\emph{undocumented
}}
\item{\code{into}}{\emph{undocumented
}}
\item{\code{after}}{\emph{undocumented
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

\emph{Returns:} [integer] 0 if the nodes are equal, less than 0 if the first node should
come before the second, and greater than 1 if the second come before the
first.

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
\emph{undocumented
}

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
\emph{undocumented
}

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
  Default value: GTK\_SELECTION\_NONE

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Sets the shadowing for the CList.
  Default value: GTK\_SHADOW\_NONE

}
\item{\code{sort-type} [\code{\link{GtkSortType}} : Read / Write]}{

  Default value: GTK\_SORT\_ASCENDING

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
