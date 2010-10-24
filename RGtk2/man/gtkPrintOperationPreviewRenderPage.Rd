\alias{gtkPrintOperationPreviewRenderPage}
\name{gtkPrintOperationPreviewRenderPage}
\title{gtkPrintOperationPreviewRenderPage}
\description{Renders a page to the preview, using the print context that
was passed to the \verb{"preview"} handler together
with \code{preview}.}
\usage{gtkPrintOperationPreviewRenderPage(object, page.nr)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintOperationPreview}}}
\item{\verb{page.nr}}{the page to render}
}
\details{A custom iprint preview should use this function in its ::expose
handler to render the currently selected page.
  
Note that this function requires a suitable cairo context to 
be associated with the print context.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
