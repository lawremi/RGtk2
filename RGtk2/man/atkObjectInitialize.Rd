\alias{atkObjectInitialize}
\name{atkObjectInitialize}
\title{atkObjectInitialize}
\description{This function is called when implementing subclasses of \verb{\link{AtkObject}}.
It does initialization required for the new object. It is intended
that this function should called only in the ...\code{new()} functions used
to create an instance of a subclass of \verb{\link{AtkObject}}}
\usage{atkObjectInitialize(object, data)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkObject}}]  a \verb{\link{AtkObject}}}
\item{\verb{data}}{[R object]  a \verb{R object} which identifies the object for which the AtkObject was created.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
