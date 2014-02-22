\alias{gtkActionSetAccelPath}
\name{gtkActionSetAccelPath}
\title{gtkActionSetAccelPath}
\description{Sets the accel path for this action.  All proxy widgets associated
with the action will have this accel path, so that their
accelerators are consistent.}
\usage{gtkActionSetAccelPath(object, accel.path)}
\arguments{
\item{\verb{object}}{the action object}
\item{\verb{accel.path}}{the accelerator path}
}
\details{Note that \code{accel.path} string will be stored in a \code{\link{GQuark}}. Therefore, if you
pass a static string, you can save some memory by interning it first with 
\code{gInternStaticString()}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
