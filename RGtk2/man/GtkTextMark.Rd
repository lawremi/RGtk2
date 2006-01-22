\alias{GtkTextMark}
\name{GtkTextMark}
\title{GtkTextMark}
\description{A position in the buffer preserved across buffer modifications}
\section{Methods and Functions}{
\link{gtkTextMarkSetVisible}(object, setting)
\link{gtkTextMarkGetVisible}(object)
\link{gtkTextMarkGetDeleted}(object)
\link{gtkTextMarkGetName}(object)
\link{gtkTextMarkGetBuffer}(object)
\link{gtkTextMarkGetLeftGravity}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTextMark}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  
A \code{\link{GtkTextMark}} is like a bookmark in a text buffer; it preserves a position in
the text. You can convert the mark to an iterator using
\code{\link{gtkTextBufferGetIterAtMark}}. Unlike iterators, marks remain valid across
buffer mutations, because their behavior is defined when text is inserted or
deleted. When text containing a mark is deleted, the mark remains in the
position originally occupied by the deleted text. When text is inserted at a
mark, a mark with \dfn{left gravity} will be moved to the
beginning of the newly-inserted text, and a mark with \dfn{right
gravity} will be moved to the end. 

\emph{  
"left" and "right" here refer to logical direction (left is the toward the start
of the buffer); in some languages such as Hebrew the logically-leftmost text is
not actually on the left when displayed.
  }
  
Marks are reference counted, but the reference count only controls the validity
of the memory; marks can be deleted from the buffer at any time with
\code{\link{gtkTextBufferDeleteMark}}. Once deleted from the buffer, a mark is
essentially useless.
  
Marks optionally have names; these can be convenient to avoid passing the 
\code{\link{GtkTextMark}} object around.
  
Marks are typically created using the \code{\link{gtkTextBufferCreateMark}} function.}
\section{Structures}{\describe{\item{\code{GtkTextMark}}{\emph{undocumented
}}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTextMark.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
