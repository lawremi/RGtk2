\alias{atkHyperlinkIsSelectedLink}
\name{atkHyperlinkIsSelectedLink}
\title{atkHyperlinkIsSelectedLink}
\description{
Determines whether this AtkHyperlink is selected
\strong{WARNING: \code{atk_hyperlink_is_selected_link} is deprecated and should not be used in newly-written code. Please use ATK_STATE_SELECTED to indicate when a hyperlink within a Hypertext container is selected.}
}
\usage{atkHyperlinkIsSelectedLink(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkHyperlink}}]  an \code{\link{AtkHyperlink}}}}
\details{  Since 1.4}
\value{[logical]  True is the AtkHyperlink is selected, False otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
