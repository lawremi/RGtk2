\alias{GtkEditable}
\name{GtkEditable}
\title{GtkEditable}
\description{Interface for text-editing widgets}
\section{Methods and Functions}{
\code{\link{gtkEditableSelectRegion}(object, start, end)}\cr
\code{\link{gtkEditableGetSelectionBounds}(object)}\cr
\code{\link{gtkEditableInsertText}(object, new.text, position = 0)}\cr
\code{\link{gtkEditableDeleteText}(object, start.pos, end.pos)}\cr
\code{\link{gtkEditableGetChars}(object, start.pos, end.pos)}\cr
\code{\link{gtkEditableCutClipboard}(object)}\cr
\code{\link{gtkEditableCopyClipboard}(object)}\cr
\code{\link{gtkEditablePasteClipboard}(object)}\cr
\code{\link{gtkEditableDeleteSelection}(object)}\cr
\code{\link{gtkEditableSetPosition}(object, position)}\cr
\code{\link{gtkEditableGetPosition}(object)}\cr
\code{\link{gtkEditableSetEditable}(object, is.editable)}\cr
\code{\link{gtkEditableGetEditable}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkEditable}}
\section{Implementations}{GtkEditable is implemented by
 \code{\link{GtkEntry}},  \code{\link{GtkOldEditable}},  \code{\link{GtkSpinButton}} and  GtkText.}
\section{Detailed Description}{The \code{\link{GtkEditable}} interface is an interface which should be implemented by
text editing widgets, such as \code{\link{GtkEntry}} and \verb{GtkText}. It contains functions
for generically manipulating an editable widget, a large number of action
signals used for key bindings, and several signals that an application can
connect to to modify the behavior of a widget.
  
As an example of the latter usage, by connecting
the following handler to "insert_text", an application
can convert all entry into a widget into uppercase.

 \emph{Forcing entry to uppercase.}
\preformatted{
insert_text_handler <- function(editable, text, length, position, id)
{
  result <- toupper(text)
  gSignalHandlerBlock(editable, id)
  editable$insertText(result, length, position)
  gSignalHandlerUnblock(editable, id)
}
}}
\section{Structures}{\describe{\item{\verb{GtkEditable}}{
The \code{\link{GtkEditable}} structure is an opaque structure whose members
cannot be directly accessed.

}}}
\section{Signals}{\describe{
\item{\code{changed(editable, user.data)}}{
The ::changed signal is emitted at the end of a single
user-visible operation on the contents of the \code{\link{GtkEditable}}.
  
E.g., a paste operation that replaces the contents of the
selection will cause only one signal emission (even though it
is implemented by first deleting the selection, then inserting
the new content, and may cause multiple ::notify::text signals
to be emitted).

\describe{
\item{\code{editable}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{delete-text(editable, start.pos, end.pos, user.data)}}{
This signal is emitted when text is deleted from
the widget by the user. The default handler for
this signal will normally be responsible for deleting
the text, so by connecting to this signal and then
stopping the signal with \code{\link{gSignalStopEmission}}, it
is possible to modify the range of deleted text, or
prevent it from being deleted entirely. The \code{start.pos}
and \code{end.pos} parameters are interpreted as for
\code{\link{gtkEditableDeleteText}}.

\describe{
\item{\code{editable}}{the object which received the signal}
\item{\code{start.pos}}{the starting position}
\item{\code{end.pos}}{the end position}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{insert-text(editable, new.text, new.text.length, position, user.data)}}{
This signal is emitted when text is inserted into
the widget by the user. The default handler for
this signal will normally be responsible for inserting
the text, so by connecting to this signal and then
stopping the signal with \code{\link{gSignalStopEmission}}, it
is possible to modify the inserted text, or prevent
it from being inserted entirely.

\describe{
\item{\code{editable}}{the object which received the signal}
\item{\code{new.text}}{the new text to insert}
\item{\code{new.text.length}}{the length of the new text, in bytes,
or -1 if new_text is nul-terminated}
\item{\code{position}}{the position, in characters, at which to insert
the new text. this is an in-out parameter.
After the signal emission is finished, it should
point after the newly inserted text.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkEditable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
