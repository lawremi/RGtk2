\alias{atkComponentAddFocusHandler}
\name{atkComponentAddFocusHandler}
\title{atkComponentAddFocusHandler}
\description{Add the specified handler to the set of functions to be called 
when this object receives focus events (in or out). If the handler is
already added it is not added again}
\usage{atkComponentAddFocusHandler(object, handler)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkComponent}}]  The \code{\link{AtkComponent}} to attach the \code{handler} to}
\item{\verb{handler}}{[AtkFocusHandler]  The \verb{AtkFocusHandler} to be attached to \code{component}}
}
\value{[numeric]  a handler id which can be used in atk_component_remove_focus_handler
or zero if the handler was already added.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
