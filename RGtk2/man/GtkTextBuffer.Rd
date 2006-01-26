\alias{GtkTextBuffer}
\alias{gtkTextBuffer}
\name{GtkTextBuffer}
\title{GtkTextBuffer}
\description{Stores attributed text for display in a }
\section{Methods and Functions}{
\code{\link{gtkTextBufferNew}(table = NULL)}\cr
\code{\link{gtkTextBufferGetLineCount}(object)}\cr
\code{\link{gtkTextBufferGetCharCount}(object)}\cr
\code{\link{gtkTextBufferGetTagTable}(object)}\cr
\code{\link{gtkTextBufferInsert}(object, iter, text, len = -1)}\cr
\code{\link{gtkTextBufferInsertAtCursor}(object, text, len = -1)}\cr
\code{\link{gtkTextBufferInsertInteractive}(object, iter, text, default.editable)}\cr
\code{\link{gtkTextBufferInsertInteractiveAtCursor}(object, text, default.editable)}\cr
\code{\link{gtkTextBufferInsertRange}(object, iter, start, end)}\cr
\code{\link{gtkTextBufferInsertRangeInteractive}(object, iter, start, end, default.editable)}\cr
\code{\link{gtkTextBufferInsertWithTags}(object, iter, text, ...)}\cr
\code{\link{gtkTextBufferInsertWithTagsByName}(object, iter, text, ...)}\cr
\code{\link{gtkTextBufferDelete}(object, start, end)}\cr
\code{\link{gtkTextBufferDeleteInteractive}(object, start.iter, end.iter, default.editable)}\cr
\code{\link{gtkTextBufferBackspace}(object, iter, interactive, default.editable)}\cr
\code{\link{gtkTextBufferSetText}(object, text, len = -1)}\cr
\code{\link{gtkTextBufferGetText}(object, start, end, include.hidden.chars = TRUE)}\cr
\code{\link{gtkTextBufferGetSlice}(object, start, end, include.hidden.chars = TRUE)}\cr
\code{\link{gtkTextBufferInsertPixbuf}(object, iter, pixbuf)}\cr
\code{\link{gtkTextBufferInsertChildAnchor}(object, iter, anchor)}\cr
\code{\link{gtkTextBufferCreateChildAnchor}(object, iter)}\cr
\code{\link{gtkTextBufferCreateMark}(object, mark.name = NULL, where, left.gravity = FALSE)}\cr
\code{\link{gtkTextBufferMoveMark}(object, mark, where)}\cr
\code{\link{gtkTextBufferMoveMarkByName}(object, name, where)}\cr
\code{\link{gtkTextBufferDeleteMark}(object, mark)}\cr
\code{\link{gtkTextBufferDeleteMarkByName}(object, name)}\cr
\code{\link{gtkTextBufferGetMark}(object, name)}\cr
\code{\link{gtkTextBufferGetInsert}(object)}\cr
\code{\link{gtkTextBufferGetSelectionBound}(object)}\cr
\code{\link{gtkTextBufferPlaceCursor}(object, where)}\cr
\code{\link{gtkTextBufferSelectRange}(object, ins, bound)}\cr
\code{\link{gtkTextBufferApplyTag}(object, tag, start, end)}\cr
\code{\link{gtkTextBufferRemoveTag}(object, tag, start, end)}\cr
\code{\link{gtkTextBufferApplyTagByName}(object, name, start, end)}\cr
\code{\link{gtkTextBufferRemoveTagByName}(object, name, start, end)}\cr
\code{\link{gtkTextBufferRemoveAllTags}(object, start, end)}\cr
\code{\link{gtkTextBufferCreateTag}(object, tag.name, ...)}\cr
\code{\link{gtkTextBufferGetIterAtLineOffset}(object, line.number, char.offset)}\cr
\code{\link{gtkTextBufferGetIterAtOffset}(object, char.offset)}\cr
\code{\link{gtkTextBufferGetIterAtLine}(object, line.number)}\cr
\code{\link{gtkTextBufferGetIterAtLineIndex}(object, line.number, byte.index)}\cr
\code{\link{gtkTextBufferGetIterAtMark}(object, mark)}\cr
\code{\link{gtkTextBufferGetIterAtChildAnchor}(object, anchor)}\cr
\code{\link{gtkTextBufferGetStartIter}(object)}\cr
\code{\link{gtkTextBufferGetEndIter}(object)}\cr
\code{\link{gtkTextBufferGetBounds}(object)}\cr
\code{\link{gtkTextBufferGetModified}(object)}\cr
\code{\link{gtkTextBufferSetModified}(object, setting)}\cr
\code{\link{gtkTextBufferDeleteSelection}(object, interactive, default.editable)}\cr
\code{\link{gtkTextBufferPasteClipboard}(object, clipboard, override.location = NULL, default.editable)}\cr
\code{\link{gtkTextBufferCopyClipboard}(object, clipboard)}\cr
\code{\link{gtkTextBufferCutClipboard}(object, clipboard, default.editable)}\cr
\code{\link{gtkTextBufferGetSelectionBounds}(object)}\cr
\code{\link{gtkTextBufferBeginUserAction}(object)}\cr
\code{\link{gtkTextBufferEndUserAction}(object)}\cr
\code{\link{gtkTextBufferAddSelectionClipboard}(object, clipboard)}\cr
\code{\link{gtkTextBufferRemoveSelectionClipboard}(object, clipboard)}\cr
\code{gtkTextBuffer(table = NULL)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTextBuffer}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{\item{\code{GtkTextBuffer}}{


\describe{\item{\code{tagTable}}{[\code{\link{GtkTextTagTable}}] }}

}}}
\section{Convenient Construction}{\code{gtkTextBuffer} is the equivalent of \code{\link{gtkTextBufferNew}}.}
\section{Signals}{\describe{
\item{\code{apply-tag(textbuffer, arg1, arg2, arg3, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextTag}}] }
\item{\code{arg2}}{[\code{\link{GtkTextIter}}] }
\item{\code{arg3}}{[\code{\link{GtkTextIter}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{begin-user-action(textbuffer, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{changed(textbuffer, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{delete-range(textbuffer, arg1, arg2, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextIter}}] }
\item{\code{arg2}}{[\code{\link{GtkTextIter}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{end-user-action(textbuffer, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{insert-child-anchor(textbuffer, arg1, arg2, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextIter}}] }
\item{\code{arg2}}{[\code{\link{GtkTextChildAnchor}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{insert-pixbuf(textbuffer, arg1, arg2, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextIter}}] }
\item{\code{arg2}}{[\code{\link{GdkPixbuf}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{insert-text(textbuffer, arg1, arg2, arg3, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextIter}}] }
\item{\code{arg2}}{[character] }
\item{\code{arg3}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{mark-deleted(textbuffer, arg1, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextMark}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{mark-set(textbuffer, arg1, arg2, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextIter}}] }
\item{\code{arg2}}{[\code{\link{GtkTextMark}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{modified-changed(textbuffer, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{remove-tag(textbuffer, arg1, arg2, arg3, user.data)}}{


\describe{
\item{\code{textbuffer}}{[\code{\link{GtkTextBuffer}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextTag}}] }
\item{\code{arg2}}{[\code{\link{GtkTextIter}}] }
\item{\code{arg3}}{[\code{\link{GtkTextIter}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{tag-table} [\code{\link{GtkTextTagTable}} : Read / Write / Construct Only]}{

Text Tag Table.

}
\item{\code{text} [character : Read / Write]}{

The text content of the buffer. Without child widgets and images,
see \code{\link{gtkTextBufferGetText}} for more information.  

  Default value: ""  Since  2.8

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTextBuffer.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkTextView}}
\code{\link{GtkTextIter}}
\code{\link{GtkTextMark}}
}
\keyword{internal}
