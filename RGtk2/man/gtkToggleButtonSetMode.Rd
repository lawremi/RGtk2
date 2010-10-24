\alias{gtkToggleButtonSetMode}
\name{gtkToggleButtonSetMode}
\title{gtkToggleButtonSetMode}
\description{Sets whether the button is displayed as a separate indicator and label.
You can call this function on a checkbutton or a radiobutton with
\code{draw.indicator} = \code{FALSE} to make the button look like a normal button}
\usage{gtkToggleButtonSetMode(object, draw.indicator)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToggleButton}}}
\item{\verb{draw.indicator}}{if \code{TRUE}, draw the button as a separate indicator
and label; if \code{FALSE}, draw the button like a normal button}
}
\details{This function only affects instances of classes like \code{\link{GtkCheckButton}}
and \code{\link{GtkRadioButton}} that derive from \code{\link{GtkToggleButton}},
not instances of \code{\link{GtkToggleButton}} itself.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
