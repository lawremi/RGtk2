\alias{AtkDocument}
\name{AtkDocument}
\title{AtkDocument}
\description{The ATK interface which represents the toplevel container for document content.}
\section{Methods and Functions}{
\code{\link{atkDocumentGetDocumentType}(object)}\cr
\code{\link{atkDocumentGetDocument}(object)}\cr
\code{\link{atkDocumentGetAttributeValue}(object, attribute.name)}\cr
\code{\link{atkDocumentSetAttributeValue}(object, attribute.name, attribute.value)}\cr
\code{\link{atkDocumentGetAttributes}(object)}\cr
\code{\link{atkDocumentGetLocale}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkDocument}}
\section{Implementations}{AtkDocument is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{The AtkDocument interface should be supported by any object whose content is a
representation or view of a document.  The AtkDocument interface should appear
on the toplevel container for the document content; however AtkDocument
instances may be nested (i.e. an AtkDocument may be a descendant of another
AtkDocument) in those cases where one document contains "embedded content"
which can reasonably be considered a document in its own right.}
\section{Structures}{\describe{\item{\verb{AtkDocument}}{
The AtkDocument structure does not contain any fields.

}}}
\section{Signals}{\describe{
\item{\code{load-complete(atkdocument, user.data)}}{
The 'load-complete' signal is emitted when a pending load of a static
document has completed.  This signal is to be expected by ATK clients
if and when AtkDocument implementors expose ATK_STATE_BUSY.  If the state
of an AtkObject which implements AtkDocument does not include ATK_STATE_BUSY,
it should be safe for clients to assume that the AtkDocument's static contents
are fully loaded into the container.  (Dynamic document contents should
be exposed via other signals.)

\describe{
\item{\code{atkdocument}}{[\code{\link{AtkDocument}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{load-stopped(atkdocument, user.data)}}{
The 'load-stopped' signal is emitted when a pending load of document contents
is cancelled, paused, or otherwise interrupted by the user or application
logic.  It should not however be
emitted while waiting for a resource (for instance while blocking on a file or
network read) unless a user-significant timeout has occurred.

\describe{
\item{\code{atkdocument}}{[\code{\link{AtkDocument}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{reload(atkdocument, user.data)}}{
The 'reload' signal is emitted when the contents of a document is refreshed
from its source.  Once 'reload' has been emitted, a matching 'load-complete'
or 'load-stopped' signal should follow, which clients may await before
interrogating ATK for the latest document content.

\describe{
\item{\code{atkdocument}}{[\code{\link{AtkDocument}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkDocument.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
