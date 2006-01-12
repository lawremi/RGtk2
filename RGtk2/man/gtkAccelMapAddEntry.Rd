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
\item{\code{accel.path}}{[character]  valid accelerator path}
\item{\code{accel.key}}{[numeric]   the accelerator key}
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}]  the accelerator modifiers}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
