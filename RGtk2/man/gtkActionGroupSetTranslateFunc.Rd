\alias{gtkActionGroupSetTranslateFunc}
\name{gtkActionGroupSetTranslateFunc}
\title{gtkActionGroupSetTranslateFunc}
\description{Sets a function to be used for translating the \code{label} and \code{tooltip} of 
\verb{GtkActionGroupEntry}s added by \code{\link{gtkActionGroupAddActions}}.}
\usage{gtkActionGroupSetTranslateFunc(object, func, data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkActionGroup}}}
\item{\verb{func}}{a \code{\link{GtkTranslateFunc}}}
\item{\verb{data}}{data to be passed to \code{func} and \code{notify}}
}
\details{If you're using \code{gettext()}, it is enough to set the translation domain
with \code{\link{gtkActionGroupSetTranslationDomain}}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
