\alias{gtkSizeGroupSetMode}
\name{gtkSizeGroupSetMode}
\title{gtkSizeGroupSetMode}
\description{Sets the \code{\link{GtkSizeGroupMode}} of the size group. The mode of the size
group determines whether the widgets in the size group should
all have the same horizontal requisition (\code{GTK_SIZE_GROUP_MODE_HORIZONTAL})
all have the same vertical requisition (\code{GTK_SIZE_GROUP_MODE_VERTICAL}),
or should all have the same requisition in both directions
(\code{GTK_SIZE_GROUP_MODE_BOTH}).}
\usage{gtkSizeGroupSetMode(object, mode)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkSizeGroup}}}
\item{\verb{mode}}{the mode to set for the size group.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
