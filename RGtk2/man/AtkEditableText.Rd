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
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkEditableText}} should be implemented by UI components which contain
text which the user can edit, via the \code{\link{AtkObject}} corresponding to that
component (see \code{\link{AtkObject}}).
  \code{\link{AtkEditableText}} is a subclass of \code{\link{AtkText}}, and as such, an object which
implements \code{\link{AtkEditableText}} is by definition an \code{\link{AtkText}} implementor as well.}
\section{Structures}{\describe{\item{\verb{AtkEditableText}}{
The AtkEditableText structure does not contain any fields.

}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkEditableText.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{AtkText}}}
\keyword{internal}
