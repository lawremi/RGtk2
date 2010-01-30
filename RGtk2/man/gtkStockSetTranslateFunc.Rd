\alias{gtkStockSetTranslateFunc}
\name{gtkStockSetTranslateFunc}
\title{gtkStockSetTranslateFunc}
\description{Sets a function to be used for translating the \code{label} of 
a stock item.}
\usage{gtkStockSetTranslateFunc(domain, func, data)}
\arguments{
\item{\verb{domain}}{[character]  the translation domain for which \code{func} shall be used}
\item{\verb{func}}{[\verb{\link{GtkTranslateFunc}}]  a \verb{\link{GtkTranslateFunc}} }
\item{\verb{data}}{[R object]  data to pass to \code{func}}
}
\details{If no function is registered for a translation domain,
\code{dgettext()} is used.  

  Since  2.8}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
