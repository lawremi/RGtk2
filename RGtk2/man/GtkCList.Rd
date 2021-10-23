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
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkCList
                                 +----GtkCTree}}
\section{Interfaces}{GtkCList implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkCList}} widget is a very useful multi-columned scrolling list.
It can display data in nicely aligned vertical columns, with titles
at the top of the list.
  
GtkCList has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkTreeView}} instead.}
\section{Structures}{\describe{
\item{\verb{GtkCList}}{
\strong{WARNING: \code{GtkCList} is deprecated and should not be used in newly-written code.}
This is the embodiment of the \code{\link{GtkCList}} widget.  This structure contains
only private data, and should be accessed only via the CList API.

}
\item{\verb{GtkCListRow}}{
\strong{WARNING: \code{GtkCListRow} is deprecated and should not be used in newly-written code.}
A structure that the \code{\link{GtkCList}} widget uses to keep track of information
about its rows.

\describe{
\item{\verb{cell}}{[GtkCell] }
\item{\verb{state}}{[\code{\link{GtkStateType}}] }
\item{\verb{foreground}}{[\code{\link{GdkColor}}] }
\item{\verb{background}}{[\code{\link{GdkColor}}] }
\item{\verb{style}}{[\code{\link{GtkStyle}}] }
\item{\verb{data}}{[Robject] }
\item{\verb{destroy}}{[GtkDestroyNotify] }
\item{\verb{fgSet}}{[numeric] }
\item{\verb{bgSet}}{[numeric] }
\item{\verb{selectable}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{gtkCList} is the result of collapsing the constructors of \code{GtkCList} (\code{\link{gtkCListNew}}, \code{\link{gtkCListNewWithTitles}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkCellType}}{
\strong{WARNING: \code{GtkCellType} is deprecated and should not be used in newly-written code.}
Identifies the type of element in the current cell of the CList.  Cells can
contain text, pixmaps, or both. Unfortunately support for \code{GTK_CELL_WIDGET}
was never completed.

\describe{
\item{\verb{empty}}{\emph{undocumented
}}
\item{\verb{text}}{\emph{undocumented
}}
\item{\verb{pixmap}}{\emph{undocumented
}}
\item{\verb{pixtext}}{\emph{undocumented
}}
\item{\verb{widget}}{\emph{undocumented
}}
}

}
\item{\verb{GtkButtonAction}}{
\strong{WARNING: \code{GtkButtonAction} is deprecated and should not be used in newly-written code.}
Values for specifying what mouse button events a CList will
react to.

\describe{
\item{\verb{ignored}}{\emph{undocumented
}}
\item{\verb{selects}}{\emph{undocumented
}}
\item{\verb{drags}}{\emph{undocumented
}}
\item{\verb{expands}}{\emph{undocumented
}}
}

}
\item{\verb{GtkCListDragPos}}{
\strong{WARNING: \code{GtkCListDragPos} is deprecated and should not be used in newly-written code.}
An enumeration for drag operations.

\describe{
\item{\verb{none}}{\emph{undocumented
}}
\item{\verb{before}}{\emph{undocumented
}}
\item{\verb{into}}{\emph{undocumented
}}
\item{\verb{after}}{\emph{undocumented
}}
}

}
}}
\section{User Functions}{\describe{\item{\code{GtkCListCompareFunc(clist, ptr1, ptr2)}}{
Function prototype for the compare function callback.

\describe{
\item{\code{clist}}{The \code{\link{GtkCList}} that is affected.}
\item{\code{ptr1}}{A \verb{R object} to the first node to compare.}
\item{\code{ptr2}}{A \verb{R object} to the second node to compare.}
}

\emph{Returns:} [integer] 0 if the nodes are equal, less than 0 if the first node should
come before the second, and greater than 1 if the second come before the
first.

}}}
\section{Signals}{\describe{
\item{\code{abort-column-resize(clist, user.data)}}{
This signal is emitted when a column resize is aborted.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{click-column(clist, column, user.data)}}{
This signal is emitted when a column title is clicked.

\describe{
\item{\code{clist}}{The object which received the signal.}
\item{\code{column}}{The number of the column.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{end-selection(clist, user.data)}}{
This signal is emitted when a selection ends in a
multiple selection CList.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{extend-selection(clist, scroll.type, position, auto.start.selection, user.data)}}{
This signal is emitted when the selection is extended.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{scroll.type}}{A \code{\link{GtkScrollType}} value of any scrolling operation the
occured during the selection.}
\item{\code{position}}{A value between 0.0 and 1.0.}
\item{\code{auto.start.selection}}{\code{TRUE} or \code{FALSE}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{resize-column(clist, column, width, user.data)}}{
This signal is emitted when a column is resized.

\describe{
\item{\code{clist}}{The object which received the signal.}
\item{\code{column}}{The number of the column}
\item{\code{width}}{The new width of the column.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{row-move(clist, arg1, arg2, user.data)}}{
This signal is emitted when a row is moved.

\describe{
\item{\code{clist}}{The object which received the signal.}
\item{\code{arg1}}{The source position of the row.}
\item{\code{arg2}}{The destination position of the row.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{scroll-horizontal(clist, scroll.type, position, user.data)}}{
This signal is emitted when the CList is scrolled horizontally.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{scroll.type}}{A \code{\link{GtkScrollType}} value of how the scroll operation occured.}
\item{\code{position}}{a value between 0.0 and 1.0.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{scroll-vertical(clist, scroll.type, position, user.data)}}{
This signal is emitted when the CList is scrolled vertically.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{scroll.type}}{A \code{\link{GtkScrollType}} value of how the scroll operation occured.}
\item{\code{position}}{A value between 0.0 and 1.0.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{select-all(clist, user.data)}}{
This signal is emitted when all the rows are selected in a CList.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{select-row(clist, row, column, event, user.data)}}{
This signal is emitted when the user selects a row in the list.
It is emitted for every row that is selected in a multi-selection or
by calling \code{\link{gtkCListSelectAll}}.

\describe{
\item{\code{clist}}{The object which received the signal.}
\item{\code{row}}{The row selected.}
\item{\code{column}}{The column where the selection occured.}
\item{\code{event}}{A \code{\link{GdkEvent}} structure for the selection.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{set-scroll-adjustments(clist, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{start-selection(clist, user.data)}}{
This signal is emitted when a drag-selection is started in
a multiple-selection CList.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-add-mode(clist, user.data)}}{
This signal is emitted when "add mode" is toggled.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-focus-row(clist, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{clist}}{The object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{undo-selection(clist, user.data)}}{
This signal is emitted when an undo selection occurs in the CList,
probably via calling \code{\link{gtkCListUndoSelection}}.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unselect-all(clist, user.data)}}{
This signal is emitted when all rows are unselected in a CList.

\describe{
\item{\code{clist}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unselect-row(clist, row, column, user.data)}}{
This signal is emitted when the user unselects a row in the list.
It is emitted for every row that is unselected in a multi-selection or
by calling \code{\link{gtkCListUnselectAll}}.  It is also emitted for the
previously selected row in a "single" or "browse" mode CList.

\describe{
\item{\code{clist}}{The object which received the signal.}
\item{\code{row}}{The selected row}
\item{\code{column}}{The column where the selection occured.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{n-columns} [numeric : Read / Write / Construct Only]}{

An integer value for a column.
  Default value: 0

}
\item{\verb{reorderable} [logical : Read / Write]}{

A boolean value for determining if the user can re-order the CList's
columns.
  Default value: FALSE

}
\item{\verb{row-height} [numeric : Read / Write]}{

An integer value representing the height of a row in pixels.
  Default value: 0

}
\item{\verb{selection-mode} [\code{\link{GtkSelectionMode}} : Read / Write]}{

Sets the type of selection mode for the CList.
  Default value: GTK_SELECTION_NONE

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read / Write]}{

Sets the shadowing for the CList.
  Default value: GTK_SHADOW_NONE

}
\item{\verb{sort-type} [\code{\link{GtkSortType}} : Read / Write]}{

  Default value: GTK_SORT_ASCENDING

}
\item{\verb{titles-active} [logical : Read / Write]}{

A boolean value for setting whether the column titles can be
clicked.
  Default value: FALSE

}
\item{\verb{use-drag-icons} [logical : Read / Write]}{

A boolean value for setting whether to use icons during drag
operations.
  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCList.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
