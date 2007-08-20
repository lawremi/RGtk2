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
  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----GtkTextView
  \link{GObject}
   +----GtkTextChildAnchor
}}
\section{Interfaces}{GtkTextView implements
 \code{\link{GtkBuildable}} and  AtkImplementorIface.}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{
\item{\code{GtkTextView}}{
\emph{undocumented
}

}
\item{\code{GtkTextChildAnchor}}{
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
\section{Enums and Flags}{\describe{\item{\code{GtkTextWindowType}}{
\emph{undocumented
}

\describe{
\item{\code{private}}{\emph{undocumented
}}
\item{\code{widget}}{\emph{undocumented
}}
\item{\code{text}}{\emph{undocumented
}}
\item{\code{left}}{\emph{undocumented
}}
\item{\code{right}}{\emph{undocumented
}}
\item{\code{top}}{\emph{undocumented
}}
\item{\code{bottom}}{\emph{undocumented
}}
}

}}}
\section{Signals}{\describe{
\item{\code{The (text.view, user.data)}}{
The ::backspace signal is a 
keybinding signal 
which gets emitted when the user asks for it.
  
The default bindings for this signal are
Backspace and Shift-Backspace.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, user.data)}}{
The ::copy-clipboard signal is a 
keybinding signal 
which gets emitted to copy the selection to the clipboard.
  
The default bindings for this signal are
Ctrl-c and Ctrl-Insert.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, user.data)}}{
The ::cut-clipboard signal is a 
keybinding signal 
which gets emitted to cut the selection to the clipboard.
  
The default bindings for this signal are
Ctrl-x and Shift-Delete.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, type, count, user.data)}}{
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
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{type}}{[\code{\link{GtkDeleteType}}]  the granularity of the deletion, as a \code{\link{GtkDeleteType}}}
\item{\code{count}}{[integer]  the number of \code{type} units to delete}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (textview, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[character] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, step, count, extend.selection, user.data)}}{
The ::move-cursor signal is a 
keybinding signal 
which gets emitted when the user initiates a cursor movement. 
If the cursor is not visible in \code{text.view}, this signal causes
the viewport to be moved instead.
  
Applications should not connect to it, but may emit it with 
\code{gSignalEmitByName()} if they need to control scrolling 
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
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{step}}{[\code{\link{GtkMovementStep}}]  the granularity of the move, as a \code{\link{GtkMovementStep}}}
\item{\code{count}}{[integer]  the number of \code{step} units to move}
\item{\code{extend.selection}}{[logical]  \code{TRUE} if the move should extend the selection}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, step, count, user.data)}}{
The ::move-viewport signal is a 
keybinding signal 
which can be bound to key combinations to allow the user
to move the viewport, i.e. change what part of the text view
is visible in a containing scrolled window.
  
There are no default bindings for this signal.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{step}}{[\code{\link{GtkScrollStep}}]  the granularity of the move, as a \code{\link{GtkMovementStep}}}
\item{\code{count}}{[integer]  the number of \code{step} units to move}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, count, extend.selection, user.data)}}{
The ::page-horizontally signal is a 
keybinding signal 
which can be bound to key combinations to allow the user
to initiate horizontal cursor movement by pages.  
  
This signal should not be used anymore, instead use the
\code{::move-cursor} signal with the \code{GTK_MOVEMENT_HORIZONTAL_PAGES}
granularity.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{count}}{[integer]  the number of \code{step} units to move}
\item{\code{extend.selection}}{[logical]  \code{TRUE} if the move should extend the selection}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, user.data)}}{
The ::paste-clipboard signal is a 
keybinding signal 
which gets emitted to paste the contents of the clipboard 
into the text view.
  
The default bindings for this signal are
Ctrl-v and Shift-Insert.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (textview, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMenu}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, select, user.data)}}{
The ::select-all signal is a 
keybinding signal 
which gets emitted to select or unselect the complete
contents of the text view.
  
The default bindings for this signal are Ctrl-a and Ctrl-/ 
for selecting and Shift-Ctrl-a and Ctrl-\\ for unselecting.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{select}}{[logical]  \code{TRUE} to select, \code{FALSE} to unselect}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (textview, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (textview, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, user.data)}}{
The ::toggle-cursor-visible signal is a 
keybinding signal 
which gets emitted to toggle the visibility of the cursor.
  
The default binding for this signal is F7.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (text.view, user.data)}}{
The ::toggle-overwrite signal is a 
keybinding signal 
which gets emitted to change the editability of the text view.
  
The default bindings for this signal is Insert.  

\describe{
\item{\code{text.view}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{accepts-tab} [logical : Read / Write]}{

Whether Tab will result in a tab character being entered.  Default value: TRUE

}
\item{\code{buffer} [\code{\link{GtkTextBuffer}} : Read / Write]}{

The buffer which is displayed.

}
\item{\code{cursor-visible} [logical : Read / Write]}{

If the insertion cursor is shown.  Default value: TRUE

}
\item{\code{editable} [logical : Read / Write]}{

Whether the text can be modified by the user.  Default value: TRUE

}
\item{\code{indent} [integer : Read / Write]}{

Amount to indent the paragraph, in pixels.  Default value: 0

}
\item{\code{justification} [\code{\link{GtkJustification}} : Read / Write]}{

Left, right, or center justification.  Default value: GTK\_JUSTIFY\_LEFT

}
\item{\code{left-margin} [integer : Read / Write]}{

Width of the left margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\code{overwrite} [logical : Read / Write]}{

Whether entered text overwrites existing contents.  Default value: FALSE

}
\item{\code{pixels-above-lines} [integer : Read / Write]}{

Pixels of blank space above paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\code{pixels-below-lines} [integer : Read / Write]}{

Pixels of blank space below paragraphs.  Allowed values: >= 0  Default value: 0

}
\item{\code{pixels-inside-wrap} [integer : Read / Write]}{

Pixels of blank space between wrapped lines in a paragraph.  Allowed values: >= 0  Default value: 0

}
\item{\code{right-margin} [integer : Read / Write]}{

Width of the right margin in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\code{tabs} [\code{\link{PangoTabArray}} : Read / Write]}{

Custom tabs for this text.

}
\item{\code{wrap-mode} [\code{\link{GtkWrapMode}} : Read / Write]}{

Whether to wrap lines never, at word boundaries, or at character boundaries.  Default value: GTK\_WRAP\_NONE

}
}}
\section{Style Properties}{\describe{\item{\code{error-underline-color} [\code{\link{GdkColor}} : Read]}{

Color with which to draw error-indication underlines.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTextView.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTextBuffer}}
\code{\link{GtkTextIter}}
}
\keyword{internal}
