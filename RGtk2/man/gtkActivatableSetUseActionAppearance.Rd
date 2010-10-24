\alias{gtkActivatableSetUseActionAppearance}
\name{gtkActivatableSetUseActionAppearance}
\title{gtkActivatableSetUseActionAppearance}
\description{Sets whether this activatable should reset its layout and appearance
when setting the related action or when the action changes appearance}
\usage{gtkActivatableSetUseActionAppearance(object, use.appearance)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkActivatable}}}
\item{\verb{use.appearance}}{whether to use the actions appearance}
}
\details{\strong{PLEASE NOTE:} \code{\link{GtkActivatable}} implementors need to handle the
\verb{"use-action-appearance"} property and call
\code{\link{gtkActivatableSyncActionProperties}} to update \code{activatable}
if needed.  Since 2.16}
\note{\code{\link{GtkActivatable}} implementors need to handle the
\verb{"use-action-appearance"} property and call
\code{\link{gtkActivatableSyncActionProperties}} to update \code{activatable}
if needed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
