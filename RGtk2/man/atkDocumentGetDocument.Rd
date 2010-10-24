\alias{atkDocumentGetDocument}
\name{atkDocumentGetDocument}
\title{atkDocumentGetDocument}
\description{Gets a \code{gpointer} that points to an instance of the DOM.  It is
up to the caller to check atk_document_get_type to determine
how to cast this pointer.}
\usage{atkDocumentGetDocument(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkDocument}}]  a \code{\link{GObject}} instance that implements AtkDocumentIface}}
\value{[R object]  a \code{gpointer} that points to an instance of the DOM.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
