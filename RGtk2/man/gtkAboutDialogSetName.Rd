\alias{gtkAboutDialogSetName}
\name{gtkAboutDialogSetName}
\title{gtkAboutDialogSetName}
\description{
Sets the name to display in the about dialog. 
If this is not set, it defaults to \code{gGetApplicationName()}.
\strong{WARNING: \code{gtk_about_dialog_set_name} is deprecated and should not be used in newly-written code.}
}
\usage{gtkAboutDialogSetName(object, name = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkAboutDialog}}]  a \code{\link{GtkAboutDialog}}}
\item{\code{name}}{[character]  the program name}
}
\details{  Since  2.6

@Deprecated: 2.12: Use gtk\_about\_dialog\_set\_program\_name() instead.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
