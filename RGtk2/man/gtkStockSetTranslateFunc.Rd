\alias{gtkStockSetTranslateFunc}
\name{gtkStockSetTranslateFunc}
\title{gtkStockSetTranslateFunc}
\description{Sets a function to be used for translating the \code{label} of 
a stock item.}
\usage{gtkStockSetTranslateFunc(domain, func, data)}
\arguments{
\item{\code{domain}}{[character]  the translation domain for which \code{func} shall be used}
\item{\code{func}}{[\code{\link{GtkTranslateFunc}}]  a \code{\link{GtkTranslateFunc}} }
\item{\code{data}}{[R object]  data to pass to \code{func}}
}
\details{If no function is registered for a translation domain,
\code{dgettext()} is used.  

  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
