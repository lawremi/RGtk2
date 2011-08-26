\alias{gtkActivatableSyncActionProperties}
\name{gtkActivatableSyncActionProperties}
\title{gtkActivatableSyncActionProperties}
\description{This is called to update the activatable completely, this is called
internally when the \verb{"related-action"} property is set
or unset and by the implementing class when
\verb{"use-action-appearance"} changes.}
\usage{gtkActivatableSyncActionProperties(object, action = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkActivatable}}}
\item{\verb{action}}{the related \code{\link{GtkAction}} or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
