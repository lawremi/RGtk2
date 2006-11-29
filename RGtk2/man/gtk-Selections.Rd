\alias{gtk-Selections}
\alias{GtkTargetEntry}
\alias{GtkTargetList}
\name{gtk-Selections}
\title{Selections}
\description{Functions for handling inter-process communication via selections}
\section{Methods and Functions}{
\code{\link{gtkTargetListNew}(targets)}\cr
\code{\link{gtkTargetListAdd}(object, target, flags, info)}\cr
\code{\link{gtkTargetListAddTable}(object, targets)}\cr
\code{\link{gtkTargetListAddTextTargets}(list, info)}\cr
\code{\link{gtkTargetListAddImageTargets}(list, info, writable)}\cr
\code{\link{gtkTargetListAddUriTargets}(list, info)}\cr
\code{\link{gtkTargetListAddRichTextTargets}(list, info, deserializable, buffer)}\cr
\code{\link{gtkTargetListRemove}(object, target)}\cr
\code{\link{gtkTargetListFind}(object, target)}\cr
\code{\link{gtkTargetTableNewFromList}(list)}\cr
\code{\link{gtkSelectionOwnerSet}(object, selection, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkSelectionOwnerSetForDisplay}(display, widget = NULL, selection, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkSelectionAddTarget}(object, selection, target, info)}\cr
\code{\link{gtkSelectionAddTargets}(object, selection, targets)}\cr
\code{\link{gtkSelectionClearTargets}(object, selection)}\cr
\code{\link{gtkSelectionConvert}(object, selection, target, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkSelectionDataSet}(object, type, format, data, length = length(data))}\cr
\code{\link{gtkSelectionDataSetText}(object, str, len = -1)}\cr
\code{\link{gtkSelectionDataGetText}(object)}\cr
\code{\link{gtkSelectionDataSetPixbuf}(object, pixbuf)}\cr
\code{\link{gtkSelectionDataGetPixbuf}(object)}\cr
\code{\link{gtkSelectionDataSetUris}(object, uris)}\cr
\code{\link{gtkSelectionDataGetUris}(object)}\cr
\code{\link{gtkSelectionDataGetTargets}(object)}\cr
\code{\link{gtkSelectionDataTargetsIncludeImage}(object, writable)}\cr
\code{\link{gtkSelectionDataTargetsIncludeText}(object)}\cr
\code{\link{gtkSelectionDataTargetsIncludeUri}(object)}\cr
\code{\link{gtkSelectionDataTargetsIncludeRichText}(object, buffer)}\cr
\code{\link{gtkTargetsIncludeImage}(targets, writable)}\cr
\code{\link{gtkTargetsIncludeText}(targets)}\cr
\code{\link{gtkTargetsIncludeUri}(targets)}\cr
\code{\link{gtkTargetsIncludeRichText}(targets, buffer)}\cr
\code{\link{gtkSelectionRemoveAll}(object)}\cr
\code{\link{gtkSelectionClear}(object, event)}\cr
\code{\link{gtkSelectionClear}(object, event)}\cr
\code{\link{gtkSelectionDataCopy}(object)}\cr
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
like "selection\_get". It allows the application to identify
the target type without extensive string compares.
\strong{\code{GtkTargetEntry} is a \link{transparent-type}.}

\describe{
\item{\code{target}}{[character] }
\item{\code{flags}}{[numeric] }
\item{\code{info}}{[integer] }
}

}
\item{\code{GtkTargetList}}{
A \code{\link{GtkTargetList}} structure is a reference counted list
of \code{GtkTargetPair}. It is used to represent the same
information as a table of \code{\link{GtkTargetEntry}}, but in
an efficient form. This structure should be treated as
opaque.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Selections.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
