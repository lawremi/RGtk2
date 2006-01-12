\alias{AtkDocument}
\name{AtkDocument}
\title{AtkDocument}
\description{The ATK interface which allows access to a DOM associated with on object.}
\usage{
\link{atkDocumentGetDocumentType}(object)
\link{atkDocumentGetDocument}(object)
}
\details{The AtkDocument interface should be supported by any object that has an
associated document object model (DOM). This interface provides the
standard mechanism allowing an assistive technology access to the DOM.}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkDocument}}
\section{Structures}{\describe{\item{\code{AtkDocument}}{
The AtkDocument structure does not contain any fields.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkDocument.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
