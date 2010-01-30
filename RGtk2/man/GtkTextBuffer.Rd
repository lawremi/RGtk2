\alias{GtkTextBuffer}
\alias{gtkTextBuffer}
\alias{GtkTextBufferDeserializeFunc}
\alias{GtkTextBufferSerializeFunc}
\alias{GtkTextBufferTargetInfo}
\name{GtkTextBuffer}
\title{GtkTextBuffer}
\description{Stores attributed text for display in a GtkTextView}
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
\code{\link{gtkTextBufferAddMark}(object, mark, where)}\cr
\code{\link{gtkTextBufferDeleteMark}(object, mark)}\cr
\code{\link{gtkTextBufferDeleteMarkByName}(object, name)}\cr
\code{\link{gtkTextBufferGetMark}(object, name)}\cr
\code{\link{gtkTextBufferGetInsert}(object)}\cr
\code{\link{gtkTextBufferGetSelectionBound}(object)}\cr
\code{\link{gtkTextBufferGetHasSelection}(object)}\cr
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
\code{\link{gtkTextBufferDeserialize}(object, content.buffer, format, iter, data, .errwarn = TRUE)}\cr
\code{\link{gtkTextBufferDeserializeGetCanCreateTags}(object, format)}\cr
\code{\link{gtkTextBufferDeserializeSetCanCreateTags}(object, format, can.create.tags)}\cr
\code{\link{gtkTextBufferGetCopyTargetList}(object)}\cr
\code{\link{gtkTextBufferGetDeserializeFormats}(object)}\cr
\code{\link{gtkTextBufferGetPasteTargetList}(object)}\cr
\code{\link{gtkTextBufferGetSerializeFormats}(object)}\cr
\code{\link{gtkTextBufferRegisterDeserializeFormat}(object, mime.type, fun, user.data)}\cr
\code{\link{gtkTextBufferRegisterDeserializeTagset}(object, tagset.name = NULL)}\cr
\code{\link{gtkTextBufferRegisterSerializeFormat}(object, mime.type, fun, user.data)}\cr
\code{\link{gtkTextBufferRegisterSerializeTagset}(object, tagset.name = NULL)}\cr
\code{\link{gtkTextBufferSerialize}(object, content.buffer, format, start, end)}\cr
\code{\link{gtkTextBufferUnregisterDeserializeFormat}(object, format)}\cr
\code{\link{gtkTextBufferUnregisterSerializeFormat}(object, format)}\cr
\code{gtkTextBuffer(table = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkTextBuffer}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{\item{\verb{GtkTextBuffer}}{
\emph{undocumented
}

\describe{\item{\verb{tagTable}}{[\verb{\link{GtkTextTagTable}}] }}

}}}
\section{Convenient Construction}{\code{gtkTextBuffer} is the equivalent of \code{\link{gtkTextBufferNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkTextBufferTargetInfo}}{
\emph{undocumented
}

\describe{
\item{\verb{buffer-contents}}{\emph{undocumented
}}
\item{\verb{rich-text}}{\emph{undocumented
}}
\item{\verb{text}}{\emph{undocumented
}}
}

}}}
\section{User Functions}{\describe{
\item{\code{GtkTextBufferDeserializeFunc(register.buffer, content.buffer, iter, data, length, create.tags, user.data, error)}}{
A function that is called to deserialize rich text that has been
serialized with \code{\link{gtkTextBufferSerialize}}, and insert it at \code{iter}.

\describe{
\item{\code{register.buffer}}{[\verb{\link{GtkTextBuffer}}] the \verb{\link{GtkTextBuffer}} the format is registered with}
\item{\code{content.buffer}}{[\verb{\link{GtkTextBuffer}}] the \verb{\link{GtkTextBuffer}} to deserialize into}
\item{\code{iter}}{[\verb{\link{GtkTextIter}}] insertion point for the deserialized text}
\item{\code{data}}{[raw] data to deserialize}
\item{\code{length}}{[numeric] length of \code{data}}
\item{\code{create.tags}}{[logical] \code{TRUE} if deserializing may create tags}
\item{\code{user.data}}{[R object] user data that was specified when registering the format}
\item{\code{error}}{[\verb{\link{GError}}] return location for a \verb{\link{GError}}}
}

\emph{Returns:} [logical] \code{TRUE} on success, \code{FALSE} otherwise

}
\item{\code{GtkTextBufferSerializeFunc(register.buffer, content.buffer, start, end, length, user.data)}}{
A function that is called to serialize the content of a text buffer.
It must return the serialized form of the content.

\describe{
\item{\code{register.buffer}}{[\verb{\link{GtkTextBuffer}}] the \verb{\link{GtkTextBuffer}} for which the format is registered}
\item{\code{content.buffer}}{[\verb{\link{GtkTextBuffer}}] the \verb{GtkTextsBuffer} to serialize}
\item{\code{start}}{[\verb{\link{GtkTextIter}}] start of the block of text to serialize}
\item{\code{end}}{[\verb{\link{GtkTextIter}}] end of the block of text to serialize}
\item{\code{length}}{[numeric] Return location for the length of the serialized data}
\item{\code{user.data}}{[R object] user data that was specified when registering the format}
}

\emph{Returns:} [raw] a newly-allocated list of guint8 which contains the serialized
          data, or \code{NULL} if an error occurred

}
}}
\section{Signals}{\describe{
\item{\code{apply-tag(textbuffer, tag, start, end, user.data)}}{
The apply_tag signal is emitted to apply a tag to a
range of text in a \verb{\link{GtkTextBuffer}}. 
Applying actually occurs in the default handler.
  
Note that if your handler runs before the default handler it must not 
invalidate the \code{start} and \code{end} iters (or has to revalidate them). 
  
See also: 
\code{\link{gtkTextBufferApplyTag}},
\code{\link{gtkTextBufferInsertWithTags}},
\code{\link{gtkTextBufferInsertRange}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{tag}}{[\verb{\link{GtkTextTag}}]  the applied tag}
\item{\code{start}}{[\verb{\link{GtkTextIter}}]  the start of the range the tag is applied to}
\item{\code{end}}{[\verb{\link{GtkTextIter}}]  the end of the range the tag is applied to}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{begin-user-action(textbuffer, user.data)}}{
The begin_user_action signal is emitted at the beginning of a single
user-visible operation on a \verb{\link{GtkTextBuffer}}.
  
See also: 
\code{\link{gtkTextBufferBeginUserAction}},
\code{\link{gtkTextBufferInsertInteractive}},
\code{\link{gtkTextBufferInsertRangeInteractive}},
\code{\link{gtkTextBufferDeleteInteractive}},
\code{\link{gtkTextBufferBackspace}},
\code{\link{gtkTextBufferDeleteSelection}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{changed(textbuffer, user.data)}}{
The changed signal is emitted when the content of a \verb{\link{GtkTextBuffer}} 
has changed.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{delete-range(textbuffer, start, end, user.data)}}{
The delete_range signal is emitted to delete a range 
from a \verb{\link{GtkTextBuffer}}. 
  
Note that if your handler runs before the default handler it must not 
invalidate the \code{start} and \code{end} iters (or has to revalidate them). 
The default signal handler revalidates the \code{start} and \code{end} iters to 
both point point to the location where text was deleted. Handlers
which run after the default handler (see \code{gSignalConnectAfter()})
do not have access to the deleted text.
  
See also: \code{\link{gtkTextBufferDelete}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{start}}{[\verb{\link{GtkTextIter}}]  the start of the range to be deleted}
\item{\code{end}}{[\verb{\link{GtkTextIter}}]  the end of the range to be deleted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{end-user-action(textbuffer, user.data)}}{
The end_user_action signal is emitted at the end of a single
user-visible operation \verb{\link{GtkTextBuffer}}.
  
See also: 
\code{\link{gtkTextBufferEndUserAction}},
\code{\link{gtkTextBufferInsertInteractive}},
\code{\link{gtkTextBufferInsertRangeInteractive}},
\code{\link{gtkTextBufferDeleteInteractive}},
\code{\link{gtkTextBufferBackspace}},
\code{\link{gtkTextBufferDeleteSelection}},
\code{\link{gtkTextBufferBackspace}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{insert-child-anchor(textbuffer, location, anchor, user.data)}}{
The insert_child_anchor signal is emitted to insert a
\verb{\link{GtkTextChildAnchor}} in a \verb{\link{GtkTextBuffer}}.
Insertion actually occurs in the default handler.
  
Note that if your handler runs before the default handler it must
not invalidate the \code{location} iter (or has to revalidate it). 
The default signal handler revalidates it to be placed after the 
inserted \code{anchor}.
  
See also: \code{\link{gtkTextBufferInsertChildAnchor}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{location}}{[\verb{\link{GtkTextIter}}]  position to insert \code{anchor} in \code{textbuffer}}
\item{\code{anchor}}{[\verb{\link{GtkTextChildAnchor}}]  the \verb{\link{GtkTextChildAnchor}} to be inserted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{insert-pixbuf(textbuffer, location, pixbuf, user.data)}}{
The insert_pixbuf signal is emitted to insert a \verb{\link{GdkPixbuf}} 
in a \verb{\link{GtkTextBuffer}}. Insertion actually occurs in the default handler.
  
Note that if your handler runs before the default handler it must not 
invalidate the \code{location} iter (or has to revalidate it). 
The default signal handler revalidates it to be placed after the 
inserted \code{pixbuf}.
  
See also: \code{\link{gtkTextBufferInsertPixbuf}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{location}}{[\verb{\link{GtkTextIter}}]  position to insert \code{pixbuf} in \code{textbuffer}}
\item{\code{pixbuf}}{[\verb{\link{GdkPixbuf}}]  the \verb{\link{GdkPixbuf}} to be inserted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{insert-text(textbuffer, location, text, len, user.data)}}{
The insert_text signal is emitted to insert text in a \verb{\link{GtkTextBuffer}}.
Insertion actually occurs in the default handler.  
  
Note that if your handler runs before the default handler it must not 
invalidate the \code{location} iter (or has to revalidate it). 
The default signal handler revalidates it to point to the end of the 
inserted text.
  
See also: 
\code{\link{gtkTextBufferInsert}}, 
\code{\link{gtkTextBufferInsertRange}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{location}}{[\verb{\link{GtkTextIter}}]  position to insert \code{text} in \code{textbuffer}}
\item{\code{text}}{[character]  the UTF-8 text to be inserted}
\item{\code{len}}{[integer]  length of the inserted text in bytes}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{mark-deleted(textbuffer, mark, user.data)}}{
The mark_deleted signal is emitted as notification
after a \verb{\link{GtkTextMark}} is deleted. 
  
See also:
\code{\link{gtkTextBufferDeleteMark}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{mark}}{[\verb{\link{GtkTextMark}}]  The mark that was deleted}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{mark-set(textbuffer, location, mark, user.data)}}{
The mark_set signal is emitted as notification
after a \verb{\link{GtkTextMark}} is set.
  
See also: 
\code{\link{gtkTextBufferCreateMark}},
\code{\link{gtkTextBufferMoveMark}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{location}}{[\verb{\link{GtkTextIter}}]  The location of \code{mark} in \code{textbuffer}}
\item{\code{mark}}{[\verb{\link{GtkTextMark}}]  The mark that is set}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{modified-changed(textbuffer, user.data)}}{
The modified_changed signal is emitted when the modified bit of a 
\verb{\link{GtkTextBuffer}} flips.
  
See also:
\code{\link{gtkTextBufferSetModified}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{remove-tag(textbuffer, tag, start, end, user.data)}}{
The remove_tag signal is emitted to remove all occurrences of \code{tag} from a
range of text in a \verb{\link{GtkTextBuffer}}. 
Removal actually occurs in the default handler.
  
Note that if your handler runs before the default handler it must not 
invalidate the \code{start} and \code{end} iters (or has to revalidate them). 
  
See also: 
\code{\link{gtkTextBufferRemoveTag}}.  

\describe{
\item{\code{textbuffer}}{[\verb{\link{GtkTextBuffer}}]  the object which received the signal}
\item{\code{tag}}{[\verb{\link{GtkTextTag}}]  the tag to be removed}
\item{\code{start}}{[\verb{\link{GtkTextIter}}]  the start of the range the tag is removed from}
\item{\code{end}}{[\verb{\link{GtkTextIter}}]  the end of the range the tag is removed from}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{copy-target-list} [\verb{\link{GtkTargetList}} : *        : Read]}{

The list of targets this buffer supports for clipboard copying
and as DND source.  

  Since  2.10

}
\item{\verb{cursor-position} [integer : Read]}{

The position of the insert mark (as offset from the beginning 
of the buffer). It is useful for getting notified when the 
cursor moves.  

  Allowed values: >= 0  Default value: 0  Since  2.10

}
\item{\verb{has-selection} [logical : Read]}{

Whether the buffer has some text currently selected.  

  Default value: FALSE  Since  2.10

}
\item{\verb{paste-target-list} [\verb{\link{GtkTargetList}} : *        : Read]}{

The list of targets this buffer supports for clipboard pasting
and as DND destination.  

  Since  2.10

}
\item{\verb{tag-table} [\verb{\link{GtkTextTagTable}} : *      : Read / Write / Construct Only]}{

Text Tag Table.

}
\item{\verb{text} [character : *                : Read / Write]}{

The text content of the buffer. Without child widgets and images,
see \code{\link{gtkTextBufferGetText}} for more information.  

  Default value: ""  Since  2.8

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTextBuffer.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkTextView}}
\verb{\link{GtkTextIter}}
\verb{\link{GtkTextMark}}
}
\keyword{internal}
