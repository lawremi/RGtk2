\alias{gtk-Selections}
\alias{GtkTargetEntry}
\alias{GtkTargetList}
\alias{gtkTargetEntry}
\name{gtk-Selections}
\title{Selections}
\description{Functions for handling inter-process communication via selections}
\usage{gtkTargetEntry(target, flags, info)}
\section{Methods and Functions}{
\link{gtkTargetListNew}(targets)
\link{gtkTargetListAdd}(object, target, flags, info)
\link{gtkTargetListAddTable}(object, targets)
\link{gtkTargetListAddTextTargets}(list, info)
\link{gtkTargetListAddImageTargets}(list, info, writable)
\link{gtkTargetListAddUriTargets}(list, info)
\link{gtkTargetListRemove}(object, target)
\link{gtkTargetListFind}(object, target)
\link{gtkSelectionOwnerSet}(object, selection, time = GDK_CURRENT_TIME)
\link{gtkSelectionOwnerSetForDisplay}(display, widget = NULL, selection, time = GDK_CURRENT_TIME)
\link{gtkSelectionAddTarget}(object, selection, target, info)
\link{gtkSelectionAddTargets}(object, selection, targets)
\link{gtkSelectionClearTargets}(object, selection)
\link{gtkSelectionConvert}(object, selection, target, time = GDK_CURRENT_TIME)
\link{gtkSelectionDataSet}(object, type, format, data, length = length(data))
\link{gtkSelectionDataSetText}(object, str, len = -1)
\link{gtkSelectionDataGetText}(object)
\link{gtkSelectionDataSetPixbuf}(object, pixbuf)
\link{gtkSelectionDataGetPixbuf}(object)
\link{gtkSelectionDataSetUris}(object, uris)
\link{gtkSelectionDataGetUris}(object)
\link{gtkSelectionDataGetTargets}(object)
\link{gtkSelectionDataTargetsIncludeImage}(object, writable)
\link{gtkSelectionDataTargetsIncludeText}(object)
\link{gtkSelectionRemoveAll}(object)
\link{gtkSelectionClear}(object, event)
\link{gtkSelectionDataCopy}(object)
}
\section{Detailed Description}{The selection mechanism provides the basis for different types
of communication between processes. In particular, drag and drop and
\code{\link{GtkClipboard}} work via selections. You will very seldom or
never need to use most of the functions in this section directly;
\code{\link{GtkClipboard}} provides a nicer interface to the same functionality.
  
Some of the datatypes defined this section are used in
the \code{\link{GtkClipboard}} and drag-and-drop API's as well. The
\code{\link{GtkTargetEntry}} structure and \code{\link{GtkTargetList}} objects represent
lists of data types that are supported when sending or
receiving data. The \code{\link{GtkSelectionData}} object is used to
store a chunk of data along with the data type and other
associated information.}
\section{Structures}{\describe{
\item{\code{GtkTargetEntry}}{
A \code{\link{GtkTargetEntry}} structure represents a single type of
data than can be supplied for by a widget for a selection
or for supplied or received during drag-and-drop. It 
contains a string representing the drag type, a flags
field (used only for drag and drop - see \code{\link{GtkTargetFlags}}),
and an application assigned integer ID. The integer
ID will later be passed as a signal parameter for signals
like "selection_get". It allows the application to identify
the target type without extensive string compares.
\strong{\code{GtkTargetEntry} is a \link{transparent-type}.}

}
\item{\code{GtkTargetList}}{
A \code{\link{GtkTargetList}} structure is a reference counted list
of \code{GtkTargetPair}. It is used to represent the same
information as a table of \code{\link{GtkTargetEntry}}, but in
an efficient form. This structure should be treated as
opaque.

}
}}
\section{Convenient Construction}{\code{gtkTargetEntry} is the equivalent of .}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Selections.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
