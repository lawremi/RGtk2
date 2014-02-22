\alias{gtkItemFactoryAddForeign}
\name{gtkItemFactoryAddForeign}
\title{gtkItemFactoryAddForeign}
\description{
Installs an accelerator for \code{accel.widget} in \code{accel.group}, that causes
the ::activate signal to be emitted if the accelerator is activated.
\strong{WARNING: \code{gtk_item_factory_add_foreign} has been deprecated since version 2.4 and should not be used in newly-written code. The recommended API for this purpose are the functions 
\code{\link{gtkMenuItemSetAccelPath}} and \code{\link{gtkWidgetSetAccelPath}}; don't 
use \code{\link{gtkItemFactoryAddForeign}} in new code, since it is likely to
be removed in the future.}
}
\usage{gtkItemFactoryAddForeign(accel.widget, full.path, accel.group, 
    keyval, modifiers)}
\arguments{
\item{\verb{accel.widget}}{widget to install an accelerator on}
\item{\verb{full.path}}{the full path for the \code{accel.widget}}
\item{\verb{accel.group}}{the accelerator group to install the accelerator in}
\item{\verb{keyval}}{key value of the accelerator}
\item{\verb{modifiers}}{modifier combination of the accelerator}
}
\details{This function can be used to make widgets participate in the accel
saving/restoring functionality provided by \code{\link{gtkAccelMapSave}} and
\code{\link{gtkAccelMapLoad}}, even if they haven't been created by an item
factory.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
