\alias{gtkAccelMapAddEntry}
\name{gtkAccelMapAddEntry}
\title{gtkAccelMapAddEntry}
\description{Registers a new accelerator with the global accelerator map.
This function should only be called once per \code{accel.path}
with the canonical \code{accel.key} and \code{accel.mods} for this path.
To change the accelerator during runtime programatically, use
\code{\link{gtkAccelMapChangeEntry}}.
The accelerator path must consist of "<WINDOWTYPE>/Category1/Category2/.../Action",
where <WINDOWTYPE> should be a unique application-specific identifier, that
corresponds to the kind of window the accelerator is being used in, e.g. "Gimp-Image",
"Abiword-Document" or "Gnumeric-Settings".
The Category1/.../Action portion is most appropriately chosen by the action the
accelerator triggers, i.e. for accelerators on menu items, choose the item's menu path,
e.g. "File/Save As", "Image/View/Zoom" or "Edit/Select All".
So a full valid accelerator path may look like:
"<Gimp-Toolbox>/File/Dialogs/Tool Options...".}
\usage{gtkAccelMapAddEntry(accel.path, accel.key, accel.mods)}
\arguments{
\item{\verb{accel.path}}{valid accelerator path}
\item{\verb{accel.key}}{the accelerator key}
\item{\verb{accel.mods}}{the accelerator modifiers}
}
\details{Note that \code{accel.path} string will be stored in a \code{\link{GQuark}}. Therefore, if you
pass a static string, you can save some memory by interning it first with 
\code{gInternStaticString()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
