\alias{gtkFileChooserButtonNewWithDialog}
\name{gtkFileChooserButtonNewWithDialog}
\title{gtkFileChooserButtonNewWithDialog}
\description{Creates a \code{\link{GtkFileChooserButton}} widget which uses \code{dialog} as it's
file-picking window. Note that \code{dialog} must be a \code{\link{GtkFileChooserDialog}} (or
subclass) and must not have \code{GTK_DIALOG_DESTROY_WITH_PARENT} set.}
\usage{gtkFileChooserButtonNewWithDialog(dialog)}
\arguments{\item{\code{dialog}}{[\code{\link{GtkWidget}}]  the \code{\link{GtkFileChooserDialog}} widget to use.}}
\details{  Since  2.6}
\value{[\code{\link{GtkWidget}}]  a new button widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
