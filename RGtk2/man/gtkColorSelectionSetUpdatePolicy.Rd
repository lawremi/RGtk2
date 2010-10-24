\alias{gtkColorSelectionSetUpdatePolicy}
\name{gtkColorSelectionSetUpdatePolicy}
\title{gtkColorSelectionSetUpdatePolicy}
\description{
Sets the policy controlling when the color_changed signals are emitted.
The available policies are:
\itemize{
\item \code{GTK_UPDATE_CONTINUOUS} - signals are sent continuously as the color
selection changes.
\item \code{GTK_UPDATE_DISCONTINUOUS} - signals are sent only when the mouse
button is released.
\item \code{GTK_UPDATE_DELAYED} - signals are sent when the mouse button is
released or when the mouse has been motionless for a period of
time.
}
\strong{WARNING: \code{gtk_color_selection_set_update_policy} is deprecated and should not be used in newly-written code.}
}
\usage{gtkColorSelectionSetUpdatePolicy(object, policy)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkColorSelection}}.}
\item{\verb{policy}}{a \code{\link{GtkUpdateType}} value indicating the desired policy.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
