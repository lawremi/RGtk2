\alias{GtkTextBuffer}
\alias{gtkTextBuffer}
\name{GtkTextBuffer}
\title{GtkTextBuffer}
\description{Stores attributed text for display in a }
\usage{gtkTextBuffer(table = NULL)}
\section{Methods and Functions}{
\link{gtkTextBufferNew}(table = NULL)
\link{gtkTextBufferGetLineCount}(object)
\link{gtkTextBufferGetCharCount}(object)
\link{gtkTextBufferGetTagTable}(object)
\link{gtkTextBufferInsert}(object, iter, text, len = -1)
\link{gtkTextBufferInsertAtCursor}(object, text, len = -1)
\link{gtkTextBufferInsertInteractive}(object, iter, text, default.editable)
\link{gtkTextBufferInsertInteractiveAtCursor}(object, text, default.editable)
\link{gtkTextBufferInsertRange}(object, iter, start, end)
\link{gtkTextBufferInsertRangeInteractive}(object, iter, start, end, default.editable)
\link{gtkTextBufferInsertWithTags}(object, iter, text, ...)
\link{gtkTextBufferInsertWithTagsByName}(object, iter, text, ...)
\link{gtkTextBufferDelete}(object, start, end)
\link{gtkTextBufferDeleteInteractive}(object, start.iter, end.iter, default.editable)
\link{gtkTextBufferBackspace}(object, iter, interactive, default.editable)
\link{gtkTextBufferSetText}(object, text, len = -1)
\link{gtkTextBufferGetText}(object, start, end, include.hidden.chars = TRUE)
\link{gtkTextBufferGetSlice}(object, start, end, include.hidden.chars = TRUE)
\link{gtkTextBufferInsertPixbuf}(object, iter, pixbuf)
\link{gtkTextBufferInsertChildAnchor}(object, iter, anchor)
\link{gtkTextBufferCreateChildAnchor}(object, iter)
\link{gtkTextBufferCreateMark}(object, mark.name = NULL, where, left.gravity = FALSE)
\link{gtkTextBufferMoveMark}(object, mark, where)
\link{gtkTextBufferMoveMarkByName}(object, name, where)
\link{gtkTextBufferDeleteMark}(object, mark)
\link{gtkTextBufferDeleteMarkByName}(object, name)
\link{gtkTextBufferGetMark}(object, name)
\link{gtkTextBufferGetInsert}(object)
\link{gtkTextBufferGetSelectionBound}(object)
\link{gtkTextBufferPlaceCursor}(object, where)
\link{gtkTextBufferSelectRange}(object, ins, bound)
\link{gtkTextBufferApplyTag}(object, tag, start, end)
\link{gtkTextBufferRemoveTag}(object, tag, start, end)
\link{gtkTextBufferApplyTagByName}(object, name, start, end)
\link{gtkTextBufferRemoveTagByName}(object, name, start, end)
\link{gtkTextBufferRemoveAllTags}(object, start, end)
\link{gtkTextBufferCreateTag}(object, tag.name, ...)
\link{gtkTextBufferGetIterAtLineOffset}(object, line.number, char.offset)
\link{gtkTextBufferGetIterAtOffset}(object, char.offset)
\link{gtkTextBufferGetIterAtLine}(object, line.number)
\link{gtkTextBufferGetIterAtLineIndex}(object, line.number, byte.index)
\link{gtkTextBufferGetIterAtMark}(object, mark)
\link{gtkTextBufferGetIterAtChildAnchor}(object, anchor)
\link{gtkTextBufferGetStartIter}(object)
\link{gtkTextBufferGetEndIter}(object)
\link{gtkTextBufferGetBounds}(object)
\link{gtkTextBufferGetModified}(object)
\link{gtkTextBufferSetModified}(object, setting)
\link{gtkTextBufferDeleteSelection}(object, interactive, default.editable)
\link{gtkTextBufferPasteClipboard}(object, clipboard, override.location = NULL, default.editable)
\link{gtkTextBufferCopyClipboard}(object, clipboard)
\link{gtkTextBufferCutClipboard}(object, clipboard, default.editable)
\link{gtkTextBufferGetSelectionBounds}(object)
\link{gtkTextBufferBeginUserAction}(object)
\link{gtkTextBufferEndUserAction}(object)
\link{gtkTextBufferAddSelectionClipboard}(object, clipboard)
\link{gtkTextBufferRemoveSelectionClipboard}(object, clipboard)
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
