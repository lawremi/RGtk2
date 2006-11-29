\alias{GtkEntry}
\alias{gtkEntry}
\name{GtkEntry}
\title{GtkEntry}
\description{A single line text entry field}
\section{Methods and Functions}{
\code{\link{gtkEntryNew}(show = TRUE)}\cr
\code{\link{gtkEntryNewWithMaxLength}(max = 0, show = TRUE)}\cr
\code{\link{gtkEntrySetText}(object, text)}\cr
\code{\link{gtkEntryAppendText}(object, text)}\cr
\code{\link{gtkEntryPrependText}(object, text)}\cr
\code{\link{gtkEntrySetPosition}(object, position)}\cr
\code{\link{gtkEntryGetText}(object)}\cr
\code{\link{gtkEntrySelectRegion}(object, start, end)}\cr
\code{\link{gtkEntrySetVisibility}(object, visible)}\cr
\code{\link{gtkEntrySetInvisibleChar}(object, ch)}\cr
\code{\link{gtkEntrySetEditable}(object, editable)}\cr
\code{\link{gtkEntrySetMaxLength}(object, max)}\cr
\code{\link{gtkEntryGetActivatesDefault}(object)}\cr
\code{\link{gtkEntryGetHasFrame}(object)}\cr
\code{\link{gtkEntryGetInnerBorder}(object)}\cr
\code{\link{gtkEntryGetWidthChars}(object)}\cr
\code{\link{gtkEntrySetActivatesDefault}(object, setting)}\cr
\code{\link{gtkEntrySetHasFrame}(object, setting)}\cr
\code{\link{gtkEntrySetInnerBorder}(object, border = NULL)}\cr
\code{\link{gtkEntrySetWidthChars}(object, n.chars)}\cr
\code{\link{gtkEntryGetInvisibleChar}(object)}\cr
\code{\link{gtkEntrySetAlignment}(object, xalign)}\cr
\code{\link{gtkEntryGetAlignment}(object)}\cr
\code{\link{gtkEntryGetLayout}(object)}\cr
\code{\link{gtkEntryGetLayoutOffsets}(object)}\cr
\code{\link{gtkEntryLayoutIndexToTextIndex}(object, layout.index)}\cr
\code{\link{gtkEntryTextIndexToLayoutIndex}(object, text.index)}\cr
\code{\link{gtkEntryGetMaxLength}(object)}\cr
\code{\link{gtkEntryGetVisibility}(object)}\cr
\code{\link{gtkEntrySetCompletion}(object, completion)}\cr
\code{\link{gtkEntryGetCompletion}(object)}\cr
\code{gtkEntry(max = 0, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----GtkEntry
                           +----\link{GtkSpinButton}}}
\section{Interfaces}{GtkEntry implements
 AtkImplementorIface,  \code{\link{GtkCellEditable}} and  \code{\link{GtkEditable}}.}
\section{Detailed Description}{The \code{\link{GtkEntry}} widget is a single line text entry
widget. A fairly large set of key bindings are supported
by default. If the entered text is longer than the allocation
of the widget, the widget will scroll so that the cursor
position is visible. 
  \code{\link{GtkEntry}}  \code{GtkEntry}}
\section{Structures}{\describe{\item{\code{GtkEntry}}{
The \code{\link{GtkEntry}} struct contains only private data.

}}}
\section{Convenient Construction}{\code{gtkEntry} is the result of collapsing the constructors of \code{GtkEntry} (\code{\link{gtkEntryNew}}, \code{\link{gtkEntryNewWithMaxLength}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{activate(entry, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{backspace(entry, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{copy-clipboard(entry, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{cut-clipboard(entry, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{delete-from-cursor(entry, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDeleteType}}] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{insert-at-cursor(entry, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{arg1}}{[character] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-cursor(entry, arg1, arg2, arg3, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMovementStep}}] }
\item{\code{arg2}}{[integer] }
\item{\code{arg3}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{paste-clipboard(entry, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{populate-popup(entry, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkMenu}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-overwrite(entry, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entry}}{[\code{\link{GtkEntry}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{activates-default} [logical : Read / Write]}{

Whether to activate the default widget (such as the default button in a dialog) when Enter is pressed.  Default value: FALSE

}
\item{\code{cursor-position} [integer : Read]}{

The current position of the insertion cursor in chars.  Allowed values: [0,65535]  Default value: 0

}
\item{\code{editable} [logical : Read / Write]}{

Whether the entry contents can be edited.  Default value: TRUE

}
\item{\code{has-frame} [logical : Read / Write]}{

FALSE removes outside bevel from entry.  Default value: TRUE

}
\item{\code{inner-border} [\code{\link{GtkBorder}} : Read / Write]}{

Sets the text area's border between the text and the frame  

  Since  2.10

}
\item{\code{invisible-char} [numeric : Read / Write]}{

The character to use when masking entry contents (in "password mode").  Default value: '*'

}
\item{\code{max-length} [integer : Read / Write]}{

Maximum number of characters for this entry. Zero if no maximum.  Allowed values: [0,65535]  Default value: 0

}
\item{\code{scroll-offset} [integer : Read]}{

Number of pixels of the entry scrolled off the screen to the left.  Allowed values: >= 0  Default value: 0

}
\item{\code{selection-bound} [integer : Read]}{

The position of the opposite end of the selection from the cursor in chars.  Allowed values: [0,65535]  Default value: 0

}
\item{\code{text} [character : Read / Write]}{

The contents of the entry.  Default value: ""

}
\item{\code{truncate-multiline} [logical : Read / Write]}{

When \code{TRUE}, pasted multi-line text is truncated to the first line.  

  Default value: FALSE  Since  2.10

}
\item{\code{visibility} [logical : Read / Write]}{

FALSE displays the "invisible char" instead of the actual text (password mode).  Default value: TRUE

}
\item{\code{width-chars} [integer : Read / Write]}{

Number of characters to leave space for in the entry.  Allowed values: >= -1  Default value: -1

}
\item{\code{xalign} [numeric : Read / Write]}{

The horizontal alignment, from 0 (left) to 1 (right). 
Reversed for RTL layouts.  

  
Creates a new \code{\link{GtkEntry}} widget.
  Allowed values: [0,1]  Default value: 0  Since  2.4

}
}}
\section{Style Properties}{\describe{\item{\code{inner-border} [\code{\link{GtkBorder}} : Read]}{

Sets the text area's border between the text and the frame  

  Since  2.10

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkEntry.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
