\alias{AtkEditableText}
\name{AtkEditableText}
\title{AtkEditableText}
\description{The ATK interface implemented by components containing user-editable text content.}
\usage{
\link{atkEditableTextSetRunAttributes}(object, attrib.set, start.offset, end.offset)
\link{atkEditableTextSetTextContents}(object, string)
\link{atkEditableTextInsertText}(object, string, position)
\link{atkEditableTextCopyText}(object, start.pos, end.pos)
\link{atkEditableTextCutText}(object, start.pos, end.pos)
\link{atkEditableTextDeleteText}(object, start.pos, end.pos)
\link{atkEditableTextPasteText}(object, position)
}
\details{\code{\link{AtkEditableText}} should be implemented by UI components which contain
text which the user can edit, via the \code{\link{AtkObject}} corresponding to that
component (see \code{\link{AtkObject}}).
  
\code{\link{AtkEditableText}} is a subclass of \code{\link{AtkText}}, and as such, an object which
implements \code{\link{AtkEditableText}} is by definition an \code{\link{AtkText}} implementor as well.}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkEditableText}}
\section{Structures}{\describe{\item{\code{AtkEditableText}}{
The AtkEditableText structure does not contain any fields.

}}}
\section{Implementations}{AtkEditableText is implemented by
 \code{\link{AtkNoOpObject}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkEditableText.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{AtkText}}}
\keyword{internal}
