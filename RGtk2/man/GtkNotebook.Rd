\alias{GtkNotebook}
\alias{gtkNotebook}
\alias{GtkNotebookWindowCreationFunc}
\name{GtkNotebook}
\title{GtkNotebook}
\description{A tabbed notebook container}
\section{Methods and Functions}{
\code{\link{gtkNotebookNew}(show = TRUE)}\cr
\code{\link{gtkNotebookAppendPage}(object, child, tab.label = NULL)}\cr
\code{\link{gtkNotebookAppendPageMenu}(object, child, tab.label = NULL, menu.label = NULL)}\cr
\code{\link{gtkNotebookPrependPage}(object, child, tab.label = NULL)}\cr
\code{\link{gtkNotebookPrependPageMenu}(object, child, tab.label = NULL, menu.label = NULL)}\cr
\code{\link{gtkNotebookInsertPage}(object, child, tab.label = NULL, position = -1)}\cr
\code{\link{gtkNotebookInsertPageMenu}(object, child, tab.label = NULL, menu.label = NULL, position = -1)}\cr
\code{\link{gtkNotebookRemovePage}(object, page.num)}\cr
\code{\link{gtkNotebookPageNum}(object, child)}\cr
\code{\link{gtkNotebookNextPage}(object)}\cr
\code{\link{gtkNotebookPrevPage}(object)}\cr
\code{\link{gtkNotebookReorderChild}(object, child, position)}\cr
\code{\link{gtkNotebookSetTabPos}(object, pos)}\cr
\code{\link{gtkNotebookSetShowTabs}(object, show.tabs)}\cr
\code{\link{gtkNotebookSetShowBorder}(object, show.border)}\cr
\code{\link{gtkNotebookSetScrollable}(object, scrollable)}\cr
\code{\link{gtkNotebookSetTabBorder}(object, border.width)}\cr
\code{\link{gtkNotebookPopupEnable}(object)}\cr
\code{\link{gtkNotebookPopupDisable}(object)}\cr
\code{\link{gtkNotebookGetCurrentPage}(object)}\cr
\code{\link{gtkNotebookGetMenuLabel}(object, child)}\cr
\code{\link{gtkNotebookGetNthPage}(object, page.num)}\cr
\code{\link{gtkNotebookGetNPages}(object)}\cr
\code{\link{gtkNotebookGetTabLabel}(object, child)}\cr
\code{\link{gtkNotebookQueryTabLabelPacking}(object, child)}\cr
\code{\link{gtkNotebookSetHomogeneousTabs}(object, homogeneous)}\cr
\code{\link{gtkNotebookSetMenuLabel}(object, child, menu.label = NULL)}\cr
\code{\link{gtkNotebookSetMenuLabelText}(object, child, menu.text)}\cr
\code{\link{gtkNotebookSetTabHborder}(object, tab.hborder)}\cr
\code{\link{gtkNotebookSetTabLabel}(object, child, tab.label = NULL)}\cr
\code{\link{gtkNotebookSetTabLabelPacking}(object, child, expand, fill, pack.type)}\cr
\code{\link{gtkNotebookSetTabLabelText}(object, child, tab.text)}\cr
\code{\link{gtkNotebookSetTabVborder}(object, tab.vborder)}\cr
\code{\link{gtkNotebookSetTabReorderable}(object, child, reorderable)}\cr
\code{\link{gtkNotebookSetTabDetachable}(object, child, detachable)}\cr
\code{\link{gtkNotebookGetMenuLabelText}(object, child)}\cr
\code{\link{gtkNotebookGetScrollable}(object)}\cr
\code{\link{gtkNotebookGetShowBorder}(object)}\cr
\code{\link{gtkNotebookGetShowTabs}(object)}\cr
\code{\link{gtkNotebookGetTabLabelText}(object, child)}\cr
\code{\link{gtkNotebookGetTabPos}(object)}\cr
\code{\link{gtkNotebookGetTabReorderable}(object, child)}\cr
\code{\link{gtkNotebookGetTabDetachable}(object, child)}\cr
\code{\link{gtkNotebookSetCurrentPage}(object, page.num)}\cr
\code{\link{gtkNotebookSetGroupId}(object, group.id)}\cr
\code{\link{gtkNotebookGetGroupId}(object)}\cr
\code{\link{gtkNotebookSetWindowCreationHook}(func, data)}\cr
\code{gtkNotebook(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----GtkNotebook}}
\section{Interfaces}{GtkNotebook implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkNotebook}} widget is a \code{\link{GtkContainer}} whose children are pages that
can be switched between using tab labels along one edge.
  
There are many configuration options for \code{\link{GtkNotebook}}. Among other
things, you can choose on which edge the tabs appear
(see \code{\link{gtkNotebookSetTabPos}}), whether, if there are too many
tabs to fit the noteobook should be made bigger or scrolling
arrows added (see gtk\_notebook\_set\_scrollable), and whether there
will be a popup menu allowing the users to switch pages.
(see \code{gtkNotebookEnablePopup()}, \code{gtkNoteobookDisablePopup()})}
\section{Structures}{\describe{\item{\code{GtkNotebook}}{
\emph{undocumented
}

\describe{\item{\code{tabPos}}{[\code{\link{GtkPositionType}}] }}

}}}
\section{Convenient Construction}{\code{gtkNotebook} is the equivalent of \code{\link{gtkNotebookNew}}.}
\section{User Functions}{\describe{\item{\code{GtkNotebookWindowCreationFunc(source, page, x, y, data)}}{
A function used by GtkNotebook when a detachable tab is dropped
in the root window, it's used to create a window containing a notebook
where the tab will be attached. This function will also be responsible
of moving/resizing the window and adding the necessary properties to
the notebook (i.e.: group-id).

If the function returns \code{NULL}, the drag will be cancelled.

\describe{
\item{\code{source}}{[\code{\link{GtkNotebook}}] The source \code{\link{GtkNotebook}} of the drag operation}
\item{\code{page}}{[\code{\link{GtkWidget}}] the child \code{\link{GtkWidget}} affected}
\item{\code{x}}{[integer] the X coordinate where the drop happens}
\item{\code{y}}{[integer] the Y coordinate where the drop happens}
\item{\code{data}}{[R object] user data}
}

}}}
\section{Signals}{\describe{
\item{\code{change-current-page(notebook, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{focus-tab(notebook, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkNotebookTab}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-focus-out(notebook, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{page-added(notebook, child, page.num, user.data)}}{
the ::page-added signal is emitted in the notebook
right after a page is added to the notebook.  

  Since  2.10

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}]  the \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the child \code{\link{GtkWidget}} affected}
\item{\code{page.num}}{[numeric]  the new page number for \code{child}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{page-removed(notebook, child, page.num, user.data)}}{
the ::page-removed signal is emitted in the notebook
right after a page is removed from the notebook.  

  Since  2.10

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}]  the \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the child \code{\link{GtkWidget}} affected}
\item{\code{page.num}}{[numeric]  the \code{child} page number}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{page-reordered(notebook, child, page.num, user.data)}}{
the ::page-reordered signal is emitted in the notebook
right after a page has been reordered.  

  Since  2.10

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}]  the \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  the child \code{\link{GtkWidget}} affected}
\item{\code{page.num}}{[numeric]  the new page number for \code{child}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{reorder-tab(notebook, arg1, Param3, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{Param3}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-page(notebook, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{switch-page(notebook, page, page.num, user.data)}}{
Emitted when the user or a function changes the current page.

\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{page}}{[GtkNotebookPage] the new current page}
\item{\code{page.num}}{[numeric] the index of the page}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{enable-popup} [logical : Read / Write]}{

If TRUE, pressing the right mouse button on the notebook pops up a menu that you can use to go to a page.  Default value: FALSE

}
\item{\code{group-id} [integer : Read / Write]}{

Group ID for tabs drag and drop.  Allowed values: >= -1  Default value: -1

}
\item{\code{homogeneous} [logical : Read / Write]}{

Whether tabs should have homogeneous sizes.  Default value: FALSE

}
\item{\code{page} [integer : Read / Write]}{

The index of the current page.  Allowed values: >= 0  Default value: 0

}
\item{\code{scrollable} [logical : Read / Write]}{

If TRUE, scroll arrows are added if there are too many tabs to fit.  Default value: FALSE

}
\item{\code{show-border} [logical : Read / Write]}{

Whether the border should be shown or not.  Default value: TRUE

}
\item{\code{show-tabs} [logical : Read / Write]}{

Whether tabs should be shown or not.  Default value: TRUE

}
\item{\code{tab-border} [numeric : Write]}{

Width of the border around the tab labels.  Default value: 2

}
\item{\code{tab-hborder} [numeric : Read / Write]}{

Width of the horizontal border of tab labels.  Default value: 2

}
\item{\code{tab-pos} [\code{\link{GtkPositionType}} : Read / Write]}{

Which side of the notebook holds the tabs.  Default value: GTK\_POS\_TOP

}
\item{\code{tab-vborder} [numeric : Read / Write]}{

Width of the vertical border of tab labels.  Default value: 2

}
}}
\section{Style Properties}{\describe{
\item{\code{arrow-spacing} [integer : Read]}{

The "arrow-size" property defines the spacing between the scroll
arrows and the tabs.  

  Allowed values: >= 0  Default value: 0  Since  2.10

}
\item{\code{has-backward-stepper} [logical : Read]}{

The "has-backward-stepper" property determines whether 
the standard backward arrow button is displayed.  

  Default value: TRUE  Since  2.4

}
\item{\code{has-forward-stepper} [logical : Read]}{

The "has-forward-stepper" property determines whether 
the standard forward arrow button is displayed.  

  Default value: TRUE  Since  2.4

}
\item{\code{has-secondary-backward-stepper} [logical : Read]}{

The "has-secondary-backward-stepper" property determines whether 
a second backward arrow button is displayed on the opposite end 
of the tab area.  

  Default value: FALSE  Since  2.4

}
\item{\code{has-secondary-forward-stepper} [logical : Read]}{

The "has-secondary-forward-stepper" property determines whether 
a second forward arrow button is displayed on the opposite end 
of the tab area.  

  Default value: FALSE  Since  2.4

}
\item{\code{tab-curvature} [integer : Read]}{

The "tab-curvature" property defines size of tab curvature.  

  Allowed values: >= 0  Default value: 1  Since  2.10

}
\item{\code{tab-overlap} [integer : Read]}{

The "tab-overlap" property defines size of tab overlap
area.  

  Default value: 2  Since  2.10

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkNotebook.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
