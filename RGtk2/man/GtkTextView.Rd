\alias{GtkTextView}
\alias{GtkTextChildAnchor}
\alias{gtkTextView}
\alias{gtkTextChildAnchor}
\alias{GtkTextWindowType}
\name{GtkTextView}
\title{GtkTextView}
\description{Widget that displays a GtkTextBuffer}
\section{Methods and Functions}{
\code{\link{gtkTextViewNew}(show = TRUE)}\cr
\code{\link{gtkTextViewNewWithBuffer}(buffer = NULL, show = TRUE)}\cr
\code{\link{gtkTextViewSetBuffer}(object, buffer)}\cr
\code{\link{gtkTextViewGetBuffer}(object)}\cr
\code{\link{gtkTextViewScrollToMark}(object, mark, within.margin, use.align = FALSE, xalign = 0.5, yalign = 0.5)}\cr
\code{\link{gtkTextViewScrollToIter}(object, iter, within.margin, use.align = FALSE, xalign = 0.5, yalign = 0.5)}\cr
\code{\link{gtkTextViewScrollMarkOnscreen}(object, mark)}\cr
\code{\link{gtkTextViewMoveMarkOnscreen}(object, mark)}\cr
\code{\link{gtkTextViewPlaceCursorOnscreen}(object)}\cr
\code{\link{gtkTextViewGetVisibleRect}(object)}\cr
\code{\link{gtkTextViewGetIterLocation}(object, iter)}\cr
\code{\link{gtkTextViewGetLineAtY}(object, y)}\cr
\code{\link{gtkTextViewGetLineYrange}(object, iter)}\cr
\code{\link{gtkTextViewGetIterAtLocation}(object, x, y)}\cr
\code{\link{gtkTextViewGetIterAtPosition}(object, x, y)}\cr
\code{\link{gtkTextViewBufferToWindowCoords}(object, win, buffer.x, buffer.y)}\cr
\code{\link{gtkTextViewWindowToBufferCoords}(object, win, window.x, window.y)}\cr
\code{\link{gtkTextViewGetWindow}(object, win)}\cr
\code{\link{gtkTextViewGetWindowType}(object, window)}\cr
\code{\link{gtkTextViewSetBorderWindowSize}(object, type, size)}\cr
\code{\link{gtkTextViewGetBorderWindowSize}(object, type)}\cr
\code{\link{gtkTextViewForwardDisplayLine}(object, iter)}\cr
\code{\link{gtkTextViewBackwardDisplayLine}(object, iter)}\cr
\code{\link{gtkTextViewForwardDisplayLineEnd}(object, iter)}\cr
\code{\link{gtkTextViewBackwardDisplayLineStart}(object, iter)}\cr
\code{\link{gtkTextViewStartsDisplayLine}(object, iter)}\cr
\code{\link{gtkTextViewMoveVisually}(object, iter, count)}\cr
\code{\link{gtkTextViewAddChildAtAnchor}(object, child, anchor)}\cr
\code{\link{gtkTextChildAnchorNew}()}\cr
\code{\link{gtkTextChildAnchorGetWidgets}(object)}\cr
\code{\link{gtkTextChildAnchorGetDeleted}(object)}\cr
\code{\link{gtkTextViewAddChildInWindow}(object, child, which.window, xpos, ypos)}\cr
\code{\link{gtkTextViewMoveChild}(object, child, xpos, ypos)}\cr
\code{\link{gtkTextViewSetWrapMode}(object, wrap.mode)}\cr
\code{\link{gtkTextViewGetWrapMode}(object)}\cr
\code{\link{gtkTextViewSetEditable}(object, setting)}\cr
\code{\link{gtkTextViewGetEditable}(object)}\cr
\code{\link{gtkTextViewSetCursorVisible}(object, setting)}\cr
\code{\link{gtkTextViewGetCursorVisible}(object)}\cr
\code{\link{gtkTextViewSetOverwrite}(object, overwrite)}\cr
\code{\link{gtkTextViewGetOverwrite}(object)}\cr
\code{\link{gtkTextViewSetPixelsAboveLines}(object, pixels.above.lines)}\cr
\code{\link{gtkTextViewGetPixelsAboveLines}(object)}\cr
\code{\link{gtkTextViewSetPixelsBelowLines}(object, pixels.below.lines)}\cr
\code{\link{gtkTextViewGetPixelsBelowLines}(object)}\cr
\code{\link{gtkTextViewSetPixelsInsideWrap}(object, pixels.inside.wrap)}\cr
\code{\link{gtkTextViewGetPixelsInsideWrap}(object)}\cr
\code{\link{gtkTextViewSetJustification}(object, justification)}\cr
\code{\link{gtkTextViewGetJustification}(object)}\cr
\code{\link{gtkTextViewSetLeftMargin}(object, left.margin)}\cr
\code{\link{gtkTextViewGetLeftMargin}(object)}\cr
\code{\link{gtkTextViewSetRightMargin}(object, right.margin)}\cr
\code{\link{gtkTextViewGetRightMargin}(object)}\cr
\code{\link{gtkTextViewSetIndent}(object, indent)}\cr
\code{\link{gtkTextViewGetIndent}(object)}\cr
\code{\link{gtkTextViewSetTabs}(object, tabs)}\cr
\code{\link{gtkTextViewGetTabs}(object)}\cr
\code{\link{gtkTextViewSetAcceptsTab}(object, accepts.tab)}\cr
\code{\link{gtkTextViewGetAcceptsTab}(object)}\cr
\code{\link{gtkTextViewGetDefaultAttributes}(object)}\cr
\code{gtkTextView(buffer = NULL, show = TRUE)}\cr\code{gtkTextChildAnchor()}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkTextView
GObject
   +----GtkTextChildAnchor
}}
\section{Interfaces}{GtkTextView implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{
\item{\verb{GtkTextView}}{
\emph{undocumented
}

}
\item{\verb{GtkTextChildAnchor}}{
A \code{GtkTextChildAnchor} is a spot in the buffer
where child widgets can be "anchored" (inserted inline, as if they were
characters). The anchor can have multiple widgets anchored, to allow for
multiple views.

}
}}
\section{Convenient Construction}{
\code{gtkTextView} is the result of collapsing the constructors of \code{GtkTextView} (\code{\link{gtkTextViewNew}}, \code{\link{gtkTextViewNewWithBuffer}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.
\code{gtkTextChildAnchor} is the equivalent of \code{\link{gtkTextChildAnchorNew}}.
}
\section{Enums and Flags}{\describe{\item{\verb{GtkTextWindowType}}{
\emph{undocumented
}

\describe{
\item{\verb{private}}{\emph{undocumented
}}
\item{\verb{widget}}{\emph{undocumented
}}
\item{\verb{text}}{\emph{undocumented
}}
\item{\verb{left}}{\emph{undocumented
}}
\item{\verb{right}}{\emph{undocumented
}}
\item{\verb{top}}{\emph{undocumented
}}
\item{\verb{bottom}}{\emph{undocumented
}}
}

}}}
\section{Signals}{\describe{
\item{\code{backspace(text.view, user.data)}}{
The ::backspace signal is a
keybinding signal
which gets emitted when the user asks for it.
  
The default bindings for this signal are
Backspace and Shift-Backspace.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{copy-clipboard(text.view, user.data)}}{
The ::copy-clipboard signal is a
keybinding signal
which gets emitted to copy the selection to the clipboard.
  
The default bindings for this signal are
Ctrl-c and Ctrl-Insert.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cut-clipboard(text.view, user.data)}}{
The ::cut-clipboard signal is a
keybinding signal
which gets emitted to cut the selection to the clipboard.
  
The default bindings for this signal are
Ctrl-x and Shift-Delete.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{delete-from-cursor(text.view, type, count, user.data)}}{
The ::delete-from-cursor signal is a
keybinding signal
which gets emitted when the user initiates a text deletion.
  
If the \code{type} is \code{GTK_DELETE_CHARS}, GTK+ deletes the selection
if there is one, otherwise it deletes the requested number
of characters.
  
The default bindings for this signal are
Delete for deleting a character, Ctrl-Delete for
deleting a word and Ctrl-Backspace for deleting a word
backwords.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{type}}{the granularity of the deletion, as a \code{\link{GtkDeleteType}}}
\item{\code{count}}{the number of \code{type} units to delete}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{insert-at-cursor(text.view, string, user.data)}}{
The ::insert-at-cursor signal is a
keybinding signal
which gets emitted when the user initiates the insertion of a
fixed string at the cursor.
  
This signal has no default bindings.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{string}}{the string to insert}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-cursor(text.view, step, count, extend.selection, user.data)}}{
The ::move-cursor signal is a
keybinding signal
which gets emitted when the user initiates a cursor movement.
If the cursor is not visible in \code{text.view}, this signal causes
the viewport to be moved instead.
  
Applications should not connect to it, but may emit it with
\code{gSignalEmitByName()} if they need to control the cursor
programmatically.
  
The default bindings for this signal come in two variants,
the variant with the Shift modifier extends the selection,
the variant without the Shift modifer does not.
There are too many key combinations to list them all here.
\itemize{
\item 
\item 
\item 
\item 
\item 
}

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{step}}{the granularity of the move, as a \code{\link{GtkMovementStep}}}
\item{\code{count}}{the number of \code{step} units to move}
\item{\code{extend.selection}}{\code{TRUE} if the move should extend the selection}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-viewport(text.view, step, count, user.data)}}{
The ::move-viewport signal is a
keybinding signal
which can be bound to key combinations to allow the user
to move the viewport, i.e. change what part of the text view
is visible in a containing scrolled window.
  
There are no default bindings for this signal.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{step}}{the granularity of the move, as a \code{\link{GtkMovementStep}}}
\item{\code{count}}{the number of \code{step} units to move}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{page-horizontally(text.view, count, extend.selection, user.data)}}{
The ::page-horizontally signal is a
keybinding signal
which can be bound to key combinations to allow the user
to initiate horizontal cursor movement by pages.
  
This signal should not be used anymore, instead use the
\verb{"move-cursor"} signal with the \verb{GTK_MOVEMENT_HORIZONTAL_PAGES}
granularity.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{count}}{the number of \code{step} units to move}
\item{\code{extend.selection}}{\code{TRUE} if the move should extend the selection}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{paste-clipboard(text.view, user.data)}}{
The ::paste-clipboard signal is a
keybinding signal
which gets emitted to paste the contents of the clipboard
into the text view.
  
The default bindings for this signal are
Ctrl-v and Shift-Insert.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{populate-popup(entry, menu, user.data)}}{
The ::populate-popup signal gets emitted before showing the
context menu of the text view.
  
If you need to add items to the context menu, connect
to this signal and append your menuitems to the \code{menu}.

\describe{
\item{\code{entry}}{The text view on which the signal is emitted}
\item{\code{menu}}{the menu that is being populated}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{preedit-changed(text.view, preedit, user.data)}}{
If an input method is used, the typed text will not immediately
be committed to the buffer. So if you are interested in the text,
connect to this signal.
  
This signal is only emitted if the text at the given position
is actually editable.
  Since 2.20

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{preedit}}{the current preedit string}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{select-all(text.view, select, user.data)}}{
The ::select-all signal is a
keybinding signal
which gets emitted to select or unselect the complete
contents of the text view.
  
The default bindings for this signal are Ctrl-a and Ctrl-/
for selecting and Shift-Ctrl-a and Ctrl-\\ for unselecting.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{select}}{\code{TRUE} to select, \code{FALSE} to unselect}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{set-anchor(text.view, user.data)}}{
The ::set-anchor signal is a
keybinding signal
which gets emitted when the user initiates setting the "anchor"
mark. The "anchor" mark gets placed at the same position as the
"insert" mark.
  
This signal has no default bindings.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{set-scroll-adjustments(horizontal, vertical, user.data)}}{
Set the scroll adjustments for the text view. Usually scrolled containers
like \code{\link{GtkScrolledWindow}} will emit this signal to connect two instances
of \code{\link{GtkScrollbar}} to the scroll directions of the \code{\link{GtkTextView}}.

\describe{
\item{\code{horizontal}}{the horizontal \code{\link{GtkAdjustment}}}
\item{\code{vertical}}{the vertical \code{\link{GtkAdjustment}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-cursor-visible(text.view, user.data)}}{
The ::toggle-cursor-visible signal is a
keybinding signal
which gets emitted to toggle the visibility of the cursor.
  
The default binding for this signal is F7.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-overwrite(text.view, user.data)}}{
The ::toggle-overwrite signal is a
keybinding signal
which gets emitted to toggle the overwrite mode of the text view.
  
The default bindings for this signal is Insert.

\describe{
\item{\code{text.view}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{accepts-tab} [logical : Read / Write]}{

Whether Tab will result in a tab character being entered.  Default value: TRUE

}
\item{\verb{buffer} [\code{\link{GtkTextBuffer}} : *        : Read / Write]}{

The buffer which is displayed.

}
\item{\verb{cursor-visible} [logical : Read / Write]}{

If the insertion cursor is shown.  Default value: TRUE

}
\item{\verb{editable} [logical : Read / Write]}{

Whether the text can be modified by the user.  Default value: TRUE

}
\item{\verb{im-module} [character : *                : Read / Write]}{

Which IM (input method) module should be used for this entry.
See \code{\link{GtkIMContext}}.
  
Setting this to a non-\code{NULL} value overrides the
system-wide IM module setting. See the GtkSettings
\verb{"gtk-im-module"} property.
  Default value: NULL  Since 2.16

}
\item{\verb{indent} [integer : Read / Write]}{

Amount to indent the paragraph, in pixels.  Default value: 0

}
\item{\verb{justification} [\code{\link{GtkJustification}} : Read / Write]}{

Left, right, or center justification.  Default value: GTK_JUSTIFY_LEFT

}
\item{\verb{left-margin} [integer : Read / Write]}{

Width of the left margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\verb{overwrite} [logical : Read / Write]}{

Whether entered text overwrites existing contents.  Default value: FALSE

}
\item{\verb{pixels-above-lines} [integer : Read / Write]}{

Pixels of blank space above paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\verb{pixels-below-lines} [integer : Read / Write]}{

Pixels of blank space below paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\verb{pixels-inside-wrap} [integer : Read / Write]}{

Pixels of blank space between wrapped lines in a paragraph.  Allowed values: >= 0  Default value: 0

}
\item{\verb{right-margin} [integer : Read / Write]}{

Width of the right margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\verb{tabs} [\code{\link{PangoTabArray}} : *        : Read / Write]}{

Custom tabs for this text.

}
\item{\verb{wrap-mode} [\code{\link{GtkWrapMode}} : Read / Write]}{

Whether to wrap lines never, at word boundaries, or at character boundaries.  Default value: GTK_WRAP_NONE

}
}}
\section{Style Properties}{\describe{\item{\verb{error-underline-color} [\code{\link{GdkColor}} : *             : Read]}{

Color with which to draw error-indication underlines.

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTextView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTextBuffer}}
\code{\link{GtkTextIter}}
}
\keyword{internal}
