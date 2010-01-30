\alias{AtkEditableText}
\name{AtkEditableText}
\title{AtkEditableText}
\description{The ATK interface implemented by components containing user-editable text content.}
\section{Methods and Functions}{
\code{\link{atkEditableTextSetRunAttributes}(object, attrib.set, start.offset, end.offset)}\cr
\code{\link{atkEditableTextSetTextContents}(object, string)}\cr
\code{\link{atkEditableTextInsertText}(object, string, position)}\cr
\code{\link{atkEditableTextCopyText}(object, start.pos, end.pos)}\cr
\code{\link{atkEditableTextCutText}(object, start.pos, end.pos)}\cr
\code{\link{atkEditableTextDeleteText}(object, start.pos, end.pos)}\cr
\code{\link{atkEditableTextPasteText}(object, position)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkEditableText}}
\section{Implementations}{AtkEditableText is implemented by
 \verb{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\verb{\link{AtkEditableText}} should be implemented by UI components which contain
text which the user can edit, via the \verb{\link{AtkObject}} corresponding to that
component (see \verb{\link{AtkObject}}).
  \verb{\link{AtkEditableText}} is a subclass of \verb{\link{AtkText}}, and as such, an object which
implements \verb{\link{AtkEditableText}} is by definition an \verb{\link{AtkText}} implementor as well.}
\section{Structures}{\describe{\item{\verb{AtkEditableText}}{
The AtkEditableText structure does not contain any fields.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkEditableText.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\verb{\link{AtkText}}}
\keyword{internal}
