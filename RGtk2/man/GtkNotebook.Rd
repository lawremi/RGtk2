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
\code{\link{gtkNotebookSetGroupId}(object, group.id)}\cr
\code{\link{gtkNotebookGetGroupId}(object)}\cr
\code{\link{gtkNotebookGetGroupId}(object)}\cr
\code{\link{gtkNotebookSetGroup}(object, group)}\cr
\code{\link{gtkNotebookGetGroup}(object)}\cr
\code{\link{gtkNotebookSetActionWidget}(object, widget, pack.type)}\cr
\code{\link{gtkNotebookGetActionWidget}(object, pack.type)}\cr
\code{\link{gtkNotebookSetWindowCreationHook}(func, data)}\cr
\code{gtkNotebook(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkNotebook}}
\section{Interfaces}{GtkNotebook implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkNotebook}} widget is a \code{\link{GtkContainer}} whose children are pages that
can be switched between using tab labels along one edge.
  
There are many configuration options for \code{\link{GtkNotebook}}. Among other
things, you can choose on which edge the tabs appear
(see \code{\link{gtkNotebookSetTabPos}}), whether, if there are too many
tabs to fit the notebook should be made bigger or scrolling
arrows added (see gtk_notebook_set_scrollable), and whether there
will be a popup menu allowing the users to switch pages.
(see \code{\link{gtkNotebookPopupEnable}}, \code{\link{gtkNotebookPopupDisable}})}
\section{GtkNotebook as GtkBuildable}{The GtkNoteboopk implementation of the GtkBuildable interface
supports placing children into tabs by specifying "tab" as the
"type" attribute of a <child> element. Note that the content
of the tab must be created before the tab can be filled.
A tab child can be specified without specifying a <child>
type attribute.
  
To add a child widget in the notebooks action area, specify
"action-start" or "action-end" as the "type" attribute of the <child>
element.
  
 \emph{A UI definition fragment with GtkNotebook}\preformatted{<object class="GtkNotebook">
  <child>
    <object class="GtkLabel" id="notebook-content">
      <property name="label">Content</property>
    </object>
  </child>
  <child type="tab">
    <object class="GtkLabel" id="notebook-tab">
      <property name="label">Tab</property>
    </object>
  </child>
</object>
}}
\section{Structures}{\describe{\item{\verb{GtkNotebook}}{
\emph{undocumented
}

\describe{\item{\verb{tabPos}}{[\code{\link{GtkPositionType}}] }}

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
\item{\code{source}}{The source \code{\link{GtkNotebook}} of the drag operation}
\item{\code{page}}{the child \code{\link{GtkWidget}} affected}
\item{\code{x}}{the X coordinate where the drop happens}
\item{\code{y}}{the Y coordinate where the drop happens}
\item{\code{data}}{user data}
}

\emph{Returns:} [\code{\link{GtkNotebook}}] The created \code{\link{GtkNotebook}} where the tab will be attached, or NULL to cancel the drag

}}}
\section{Signals}{\describe{
\item{\code{change-current-page(notebook, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{create-window(notebook, page, x, y, user.data)}}{
The ::create-window signal is emitted when a detachable
tab is dropped on the root window.
  
A handler for this signal can create a window containing
a notebook where the tab will be attached. It is also
responsible for moving/resizing the window and adding the
necessary properties to the notebook (e.g. the
\verb{"group-id"} ).
  
The default handler uses the global window creation hook,
if one has been set with \code{\link{gtkNotebookSetWindowCreationHook}}.
  Since 2.12

\describe{
\item{\code{notebook}}{the \code{\link{GtkNotebook}} emitting the signal}
\item{\code{page}}{the tab of \code{notebook} that is being detached}
\item{\code{x}}{the X coordinate where the drop happens}
\item{\code{y}}{the Y coordinate where the drop happens}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [\code{\link{GtkNotebook}}] a \code{\link{GtkNotebook}} that \code{page} should be added to, or \code{NULL}.

}
\item{\code{focus-tab(notebook, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-focus-out(notebook, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{page-added(notebook, child, page.num, user.data)}}{
the ::page-added signal is emitted in the notebook
right after a page is added to the notebook.
  Since 2.10

\describe{
\item{\code{notebook}}{the \code{\link{GtkNotebook}}}
\item{\code{child}}{the child \code{\link{GtkWidget}} affected}
\item{\code{page.num}}{the new page number for \code{child}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{page-removed(notebook, child, page.num, user.data)}}{
the ::page-removed signal is emitted in the notebook
right after a page is removed from the notebook.
  Since 2.10

\describe{
\item{\code{notebook}}{the \code{\link{GtkNotebook}}}
\item{\code{child}}{the child \code{\link{GtkWidget}} affected}
\item{\code{page.num}}{the \code{child} page number}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{page-reordered(notebook, child, page.num, user.data)}}{
the ::page-reordered signal is emitted in the notebook
right after a page has been reordered.
  Since 2.10

\describe{
\item{\code{notebook}}{the \code{\link{GtkNotebook}}}
\item{\code{child}}{the child \code{\link{GtkWidget}} affected}
\item{\code{page.num}}{the new page number for \code{child}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{reorder-tab(notebook, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{select-page(notebook, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{notebook}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{switch-page(notebook, page, page.num, user.data)}}{
Emitted when the user or a function changes the current page.

\describe{
\item{\code{notebook}}{the object which received the signal.}
\item{\code{page}}{the new current page}
\item{\code{page.num}}{the index of the page}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{enable-popup} [logical : Read / Write]}{

If TRUE, pressing the right mouse button on the notebook pops up a menu that you can use to go to a page.  Default value: FALSE

}
\item{\verb{group} [R object : Read / Write]}{

Group for tabs drag and drop.
  Since 2.12

}
\item{\verb{group-id} [integer : Read / Write]}{

Group ID for tabs drag and drop.  Allowed values: >= -1  Default value: -1

}
\item{\verb{homogeneous} [logical : Read / Write]}{

Whether tabs should have homogeneous sizes.  Default value: FALSE

}
\item{\verb{page} [integer : Read / Write]}{

The index of the current page.  Allowed values: >= -1  Default value: -1

}
\item{\verb{scrollable} [logical : Read / Write]}{

If TRUE, scroll arrows are added if there are too many tabs to fit.  Default value: FALSE

}
\item{\verb{show-border} [logical : Read / Write]}{

Whether the border should be shown or not.  Default value: TRUE

}
\item{\verb{show-tabs} [logical : Read / Write]}{

Whether tabs should be shown or not.  Default value: TRUE

}
\item{\verb{tab-border} [numeric : Write]}{

Width of the border around the tab labels.  Default value: 2

}
\item{\verb{tab-hborder} [numeric : Read / Write]}{

Width of the horizontal border of tab labels.  Default value: 2

}
\item{\verb{tab-pos} [\code{\link{GtkPositionType}} : Read / Write]}{

Which side of the notebook holds the tabs.  Default value: GTK_POS_TOP

}
\item{\verb{tab-vborder} [numeric : Read / Write]}{

Width of the vertical border of tab labels.  Default value: 2

}
}}
\section{Style Properties}{\describe{
\item{\verb{arrow-spacing} [integer : Read]}{

The "arrow-spacing" property defines the spacing between the scroll
arrows and the tabs.
  Allowed values: >= 0  Default value: 0  Since 2.10

}
\item{\verb{has-backward-stepper} [logical : Read]}{

The "has-backward-stepper" property determines whether
the standard backward arrow button is displayed.
  Default value: TRUE  Since 2.4

}
\item{\verb{has-forward-stepper} [logical : Read]}{

The "has-forward-stepper" property determines whether
the standard forward arrow button is displayed.
  Default value: TRUE  Since 2.4

}
\item{\verb{has-secondary-backward-stepper} [logical : Read]}{

The "has-secondary-backward-stepper" property determines whether
a second backward arrow button is displayed on the opposite end
of the tab area.
  Default value: FALSE  Since 2.4

}
\item{\verb{has-secondary-forward-stepper} [logical : Read]}{

The "has-secondary-forward-stepper" property determines whether
a second forward arrow button is displayed on the opposite end
of the tab area.
  Default value: FALSE  Since 2.4

}
\item{\verb{tab-curvature} [integer : Read]}{

The "tab-curvature" property defines size of tab curvature.
  Allowed values: >= 0  Default value: 1  Since 2.10

}
\item{\verb{tab-overlap} [integer : Read]}{

The "tab-overlap" property defines size of tab overlap
area.
  Default value: 2  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkNotebook.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
