\alias{GtkTextView}
\alias{GtkTextChildAnchor}
\alias{gtkTextView}
\alias{gtkTextChildAnchor}
\alias{GtkTextWindowType}
\name{GtkTextView}
\title{GtkTextView}
\description{Widget that displays a }
\usage{
\link{gtkTextViewNew}(show = TRUE)
\link{gtkTextViewNewWithBuffer}(buffer = NULL, show = TRUE)
\link{gtkTextViewSetBuffer}(object, buffer)
\link{gtkTextViewGetBuffer}(object)
\link{gtkTextViewScrollToMark}(object, mark, within.margin, use.align = FALSE, xalign = 0.5, yalign = 0.5)
\link{gtkTextViewScrollToIter}(object, iter, within.margin, use.align = FALSE, xalign = 0.5, yalign = 0.5)
\link{gtkTextViewScrollMarkOnscreen}(object, mark)
\link{gtkTextViewMoveMarkOnscreen}(object, mark)
\link{gtkTextViewPlaceCursorOnscreen}(object)
\link{gtkTextViewGetVisibleRect}(object)
\link{gtkTextViewGetIterLocation}(object, iter)
\link{gtkTextViewGetLineAtY}(object, y)
\link{gtkTextViewGetLineYrange}(object, iter)
\link{gtkTextViewGetIterAtLocation}(object, x, y)
\link{gtkTextViewGetIterAtPosition}(object, x, y)
\link{gtkTextViewBufferToWindowCoords}(object, win, buffer.x, buffer.y)
\link{gtkTextViewWindowToBufferCoords}(object, win, window.x, window.y)
\link{gtkTextViewGetWindow}(object, win)
\link{gtkTextViewGetWindowType}(object, window)
\link{gtkTextViewSetBorderWindowSize}(object, type, size)
\link{gtkTextViewGetBorderWindowSize}(object, type)
\link{gtkTextViewForwardDisplayLine}(object, iter)
\link{gtkTextViewBackwardDisplayLine}(object, iter)
\link{gtkTextViewForwardDisplayLineEnd}(object, iter)
\link{gtkTextViewBackwardDisplayLineStart}(object, iter)
\link{gtkTextViewStartsDisplayLine}(object, iter)
\link{gtkTextViewMoveVisually}(object, iter, count)
\link{gtkTextViewAddChildAtAnchor}(object, child, anchor)
\link{gtkTextChildAnchorNew}()
\link{gtkTextChildAnchorGetWidgets}(object)
\link{gtkTextChildAnchorGetDeleted}(object)
\link{gtkTextViewAddChildInWindow}(object, child, which.window, xpos, ypos)
\link{gtkTextViewMoveChild}(object, child, xpos, ypos)
\link{gtkTextViewSetWrapMode}(object, wrap.mode)
\link{gtkTextViewGetWrapMode}(object)
\link{gtkTextViewSetEditable}(object, setting)
\link{gtkTextViewGetEditable}(object)
\link{gtkTextViewSetCursorVisible}(object, setting)
\link{gtkTextViewGetCursorVisible}(object)
\link{gtkTextViewSetOverwrite}(object, overwrite)
\link{gtkTextViewGetOverwrite}(object)
\link{gtkTextViewSetPixelsAboveLines}(object, pixels.above.lines)
\link{gtkTextViewGetPixelsAboveLines}(object)
\link{gtkTextViewSetPixelsBelowLines}(object, pixels.below.lines)
\link{gtkTextViewGetPixelsBelowLines}(object)
\link{gtkTextViewSetPixelsInsideWrap}(object, pixels.inside.wrap)
\link{gtkTextViewGetPixelsInsideWrap}(object)
\link{gtkTextViewSetJustification}(object, justification)
\link{gtkTextViewGetJustification}(object)
\link{gtkTextViewSetLeftMargin}(object, left.margin)
\link{gtkTextViewGetLeftMargin}(object)
\link{gtkTextViewSetRightMargin}(object, right.margin)
\link{gtkTextViewGetRightMargin}(object)
\link{gtkTextViewSetIndent}(object, indent)
\link{gtkTextViewGetIndent}(object)
\link{gtkTextViewSetTabs}(object, tabs)
\link{gtkTextViewGetTabs}(object)
\link{gtkTextViewSetAcceptsTab}(object, accepts.tab)
\link{gtkTextViewGetAcceptsTab}(object)
\link{gtkTextViewGetDefaultAttributes}(object)
gtkTextView(buffer = NULL, show = TRUE)
gtkTextChildAnchor()
}
\details{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Hierarchy}{\preformatted{
  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----GtkTextView
  \link{GObject}
   +----GtkTextChildAnchor
}}
\section{Structures}{\describe{
\item{\code{GtkTextView}}{\emph{undocumented
}}
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
\section{Enums and Flags}{\describe{\item{\code{enum GtkTextWindowType}}{


\describe{
\item{\code{GTK_TEXT_WINDOW_PRIVATE (private)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_WINDOW_WIDGET (widget)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_WINDOW_TEXT (text)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_WINDOW_LEFT (left)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_WINDOW_RIGHT (right)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_WINDOW_TOP (top)}}{\emph{undocumented
}}
\item{\code{GTK_TEXT_WINDOW_BOTTOM (bottom)}}{\emph{undocumented
}}
}

}}}
\section{Interfaces}{GtkTextView implements
 AtkImplementorIface.}
\section{Signals}{\describe{
\item{\code{backspace(textview, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{copy-clipboard(textview, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{cut-clipboard(textview, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{delete-from-cursor(textview, arg1, arg2, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDeleteType}}] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{insert-at-cursor(textview, arg1, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[character] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-cursor(widget, step, count, extend.selection, user.data)}}{
The ::move-cursor signal is a keybinding signal which gets emitted
when the user initiates a cursor movement. 
  
Applications should not connect to it, but may emit it with 
\code{gSignalEmitByName()} if they need to control scrolling 
programmatically.  

\describe{
\item{\code{widget}}{[\code{\link{GtkTextView}}]  the object which received the signal}
\item{\code{step}}{[\code{\link{GtkMovementStep}}]  the granularity of the move, as a \code{\link{GtkMovementStep}}}
\item{\code{count}}{[integer]  the number of \code{step} units to move}
\item{\code{extend.selection}}{[logical]  \code{TRUE} if the move should extend the selection}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-focus(textview, arg1, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-viewport(textview, arg1, arg2, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkScrollStep}}] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{page-horizontally(textview, arg1, arg2, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{arg2}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{paste-clipboard(textview, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{populate-popup(textview, arg1, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMenu}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-all(textview, arg1, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{set-anchor(textview, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{set-scroll-adjustments(textview, arg1, arg2, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkAdjustment}}] }
\item{\code{arg2}}{[\code{\link{GtkAdjustment}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-overwrite(textview, user.data)}}{


\describe{
\item{\code{textview}}{[\code{\link{GtkTextView}}] the object which received the signal.}
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

Amount to indent the paragraph, in pixels.  Allowed values: >= 0  Default value: 0

}
\item{\code{justification} [\code{\link{GtkJustification}} : Read / Write]}{

Left, right, or center justification.  Default value: GTK_JUSTIFY_LEFT

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

Whether to wrap lines never, at word boundaries, or at character boundaries.  Default value: GTK_WRAP_NONE

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
