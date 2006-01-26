\alias{GtkNotebook}
\alias{gtkNotebook}
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
\code{\link{gtkNotebookGetMenuLabelText}(object, child)}\cr
\code{\link{gtkNotebookGetScrollable}(object)}\cr
\code{\link{gtkNotebookGetShowBorder}(object)}\cr
\code{\link{gtkNotebookGetShowTabs}(object)}\cr
\code{\link{gtkNotebookGetTabLabelText}(object, child)}\cr
\code{\link{gtkNotebookGetTabPos}(object)}\cr
\code{\link{gtkNotebookSetCurrentPage}(object, page.num)}\cr
\code{gtkNotebook(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
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
arrows added (see gtk_notebook_set_scrollable), and whether there
will be a popup menu allowing the users to switch pages.
(see \code{gtkNotebookEnablePopup()}, \code{gtkNoteobookDisablePopup()})}
\section{Structures}{\describe{\item{\code{GtkNotebook}}{


\describe{\item{\code{tabPos}}{[\code{\link{GtkPositionType}}] }}

}}}
\section{Convenient Construction}{\code{gtkNotebook} is the equivalent of \code{\link{gtkNotebookNew}}.}
\section{Signals}{\describe{
\item{\code{change-current-page(notebook, arg1, user.data)}}{


\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{focus-tab(notebook, arg1, user.data)}}{


\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[GtkNotebookTab] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-focus-out(notebook, arg1, user.data)}}{


\describe{
\item{\code{notebook}}{[\code{\link{GtkNotebook}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-page(notebook, arg1, user.data)}}{


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

Which side of the notebook holds the tabs.  Default value: GTK_POS_TOP

}
\item{\code{tab-vborder} [numeric : Read / Write]}{

Width of the vertical border of tab labels.  Default value: 2

}
}}
\section{Style Properties}{\describe{
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
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkNotebook.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
