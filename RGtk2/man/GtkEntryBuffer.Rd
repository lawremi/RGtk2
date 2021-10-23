\alias{GtkEntryBuffer}
\alias{gtkEntryBuffer}
\name{GtkEntryBuffer}
\title{GtkEntryBuffer}
\description{Text buffer for GtkEntry}
\section{Methods and Functions}{
\code{\link{gtkEntryBufferNew}(initial.chars = NULL, n.initial.chars = -1)}\cr
\code{\link{gtkEntryBufferGetText}(object)}\cr
\code{\link{gtkEntryBufferSetText}(object, chars, n.chars)}\cr
\code{\link{gtkEntryBufferGetBytes}(object)}\cr
\code{\link{gtkEntryBufferGetLength}(object)}\cr
\code{\link{gtkEntryBufferGetMaxLength}(object)}\cr
\code{\link{gtkEntryBufferSetMaxLength}(object, max.length)}\cr
\code{\link{gtkEntryBufferInsertText}(object, position, chars, n.chars)}\cr
\code{\link{gtkEntryBufferDeleteText}(object, position, n.chars)}\cr
\code{\link{gtkEntryBufferEmitDeletedText}(object, position, n.chars)}\cr
\code{\link{gtkEntryBufferEmitInsertedText}(object, position, chars, n.chars)}\cr
\code{gtkEntryBuffer(initial.chars = NULL, n.initial.chars = -1)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkEntryBuffer}}
\section{Detailed Description}{The \code{\link{GtkEntryBuffer}} class contains the actual text displayed in a
\code{\link{GtkEntry}} widget.
  
A single \code{\link{GtkEntryBuffer}} object can be shared by multiple \code{\link{GtkEntry}}
widgets which will then share the same text content, but not the cursor
position, visibility attributes, icon etc.
  \code{\link{GtkEntryBuffer}} may be derived from. Such a derived class might allow
text to be stored in an alternate location, such as non-pageable memory,
useful in the case of important passwords. Or a derived class could 
integrate with an application's concept of undo/redo.}
\section{Structures}{\describe{\item{\verb{GtkEntryBuffer}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkEntryBuffer} is the equivalent of \code{\link{gtkEntryBufferNew}}.}
\section{Signals}{\describe{
\item{\code{deleted-text(entrybuffer, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entrybuffer}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{inserted-text(entrybuffer, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{entrybuffer}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{length} [numeric : Read]}{

The length (in characters) of the text in buffer.
  Allowed values: <= 65535  Default value: 0  Since 2.18

}
\item{\verb{max-length} [integer : Read / Write]}{

The maximum length (in characters) of the text in the buffer.
  Allowed values: [0,65535]  Default value: 0  Since 2.18

}
\item{\verb{text} [character : *                : Read / Write]}{

The contents of the buffer.
  Default value: ""  Since 2.18

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkEntryBuffer.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
