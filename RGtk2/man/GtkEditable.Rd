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
\section{Hierarchy}{\preformatted{  GInterface
   +----GtkEditable}}
\section{Implementations}{GtkEditable is implemented by
 \code{\link{GtkEntry}},  \code{\link{GtkOldEditable}},  \code{\link{GtkSpinButton}} and  GtkText.}
\section{Detailed Description}{The \code{\link{GtkEditable}} interface is an interface which should be implemented by
text editing widgets, such as \code{\link{GtkEntry}} and \code{GtkText}. It contains functions 
for generically manipulating an editable widget, a large number of action 
signals used for key bindings, and several signals that an application can 
connect to to modify the behavior of a widget. 
  
As an example of the latter usage, by connecting
the following handler to "insert\_text", an application
can convert all entry into a widget into uppercase.

\preformatted{
insert_text_handler <- function(editable, text, length, position, id)
{
  result <- toupper(text)
  gSignalHandlerBlock(editable, id)
  editable$insertText(result, length, position)
  gSignalHandlerUnblock(editable, id)
}
}}
\section{Structures}{\describe{\item{\code{GtkEditable}}{
The \code{\link{GtkEditable}} structure contains the following fields.
(These fields should be considered read-only. They should
never be set by an application.)

\tabular{ll}{
\code{numeric}   selection\_start; \tab the starting position of the selected characters 
 in the widget. \cr
\code{numeric}   selection\_end; \tab the end position of the selected characters 
 in the widget. \cr
\code{numeric}   editable; \tab a flag indicating whether or not the widget is
editable by the user. \cr
}

}}}
\section{Signals}{\describe{
\item{\code{changed(editable, user.data)}}{
Indicates that the user has changed the contents
of the widget.

\describe{
\item{\code{editable}}{[\code{\link{GtkEditable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{delete-text(editable, start.pos, end.pos, user.data)}}{
This signal is emitted when text is deleted from
the widget by the user. The default handler for
this signal will normally be responsible for inserting
the text, so by connecting to this signal and then
stopping the signal with \code{gtkSignalEmitStop()}, it
is possible to modify the inserted text, or prevent
it from being inserted entirely. The \code{start.pos}
and \code{end.pos} parameters are interpreted as for
\code{\link{gtkEditableDeleteText}}

\describe{
\item{\code{editable}}{[\code{\link{GtkEditable}}] the object which received the signal.}
\item{\code{start.pos}}{[integer] the starting position.}
\item{\code{end.pos}}{[integer] the end position.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{insert-text(editable, new.text, new.text.length, position, user.data)}}{
This signal is emitted when text is inserted into
the widget by the user. The default handler for
this signal will normally be responsible for inserting
the text, so by connecting to this signal and then
stopping the signal with \code{gtkSignalEmitStop()}, it
is possible to modify the inserted text, or prevent
it from being inserted entirely.

\describe{
\item{\code{editable}}{[\code{\link{GtkEditable}}] the object which received the signal.}
\item{\code{new.text}}{[character] the new text to insert.}
\item{\code{new.text.length}}{[integer] the length of the new text, in bytes, 
  or -1 if new\_text is nul-terminated}
\item{\code{position}}{[integer] the position, in characters, at which to insert 
           the new text. this is an in-out parameter. 
           After the signal emission is finished, it should 
           point after the newly inserted text.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkEditable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
