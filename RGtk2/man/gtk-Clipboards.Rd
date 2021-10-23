\alias{gtk-Clipboards}
\alias{GtkClipboard}
\alias{gtkClipboard}
\alias{GtkClipboardReceivedFunc}
\alias{GtkClipboardTextReceivedFunc}
\alias{GtkClipboardImageReceivedFunc}
\alias{GtkClipboardTargetsReceivedFunc}
\alias{GtkClipboardRichTextReceivedFunc}
\alias{GtkClipboardURIReceivedFunc}
\alias{GtkClipboardGetFunc}
\alias{GtkClipboardClearFunc}
\name{gtk-Clipboards}
\title{Clipboards}
\description{Storing data on clipboards}
\section{Methods and Functions}{
\code{\link{gtkClipboardGet}(selection = "GDK_SELECTION_CLIPBOARD")}\cr
\code{\link{gtkClipboardGetForDisplay}(display, selection = "GDK_SELECTION_CLIPBOARD")}\cr
\code{\link{gtkClipboardGetDisplay}(object)}\cr
\code{\link{gtkClipboardSetWithData}(object, targets, get.func, user.data = NULL)}\cr
\code{\link{gtkClipboardSetWithOwner}(object, targets, get.func, owner = NULL)}\cr
\code{\link{gtkClipboardGetOwner}(object)}\cr
\code{\link{gtkClipboardClear}(object)}\cr
\code{\link{gtkClipboardSetText}(object, text, len = -1)}\cr
\code{\link{gtkClipboardSetImage}(object, pixbuf)}\cr
\code{\link{gtkClipboardRequestContents}(object, target, callback, user.data = NULL)}\cr
\code{\link{gtkClipboardRequestText}(object, callback, user.data = NULL)}\cr
\code{\link{gtkClipboardRequestImage}(object, callback, user.data = NULL)}\cr
\code{\link{gtkClipboardRequestTargets}(object, callback, user.data = NULL)}\cr
\code{\link{gtkClipboardRequestRichText}(object, buffer, callback, user.data)}\cr
\code{\link{gtkClipboardRequestUris}(object, callback, user.data)}\cr
\code{\link{gtkClipboardWaitForContents}(object, target)}\cr
\code{\link{gtkClipboardWaitForText}(object)}\cr
\code{\link{gtkClipboardWaitForImage}(object)}\cr
\code{\link{gtkClipboardWaitForRichText}(object, buffer)}\cr
\code{\link{gtkClipboardWaitForUris}(object)}\cr
\code{\link{gtkClipboardWaitIsTextAvailable}(object)}\cr
\code{\link{gtkClipboardWaitIsImageAvailable}(object)}\cr
\code{\link{gtkClipboardWaitIsRichTextAvailable}(object, buffer)}\cr
\code{\link{gtkClipboardWaitIsUrisAvailable}(object)}\cr
\code{\link{gtkClipboardWaitForTargets}(object)}\cr
\code{\link{gtkClipboardWaitIsTargetAvailable}(object, target)}\cr
\code{\link{gtkClipboardSetCanStore}(object, targets)}\cr
\code{\link{gtkClipboardStore}(object)}\cr
\code{gtkClipboard(display, selection = "GDK_SELECTION_CLIPBOARD")}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkClipboard}}
\section{Detailed Description}{    The \code{\link{GtkClipboard}} object represents a clipboard of data shared
    between different processes or between different widgets in
    the same process. Each clipboard is identified by a name encoded as a
    \code{\link{GdkAtom}}. (Conversion to and from strings can be done with
    \code{\link{gdkAtomIntern}} and \code{\link{gdkAtomName}}.) The default clipboard
    corresponds to the "CLIPBOARD" atom; another commonly used clipboard
    is the "PRIMARY" clipboard, which, in X, traditionally contains
    the currently selected text.
    
    To support having a number of different formats on the clipboard
    at the same time, the clipboard mechanism allows providing
    callbacks instead of the actual data.  When you set the contents
    of the clipboard, you can either supply the data directly (via
    functions like \code{\link{gtkClipboardSetText}}), or you can supply a
    callback to be called at a later time when the data is needed (via
    \code{\link{gtkClipboardSetWithData}} or \code{\link{gtkClipboardSetWithOwner}}.)
    Providing a callback also avoids having to make copies of the data
    when it is not needed.
    \code{\link{gtkClipboardSetWithData}} and \code{\link{gtkClipboardSetWithOwner}}
    are quite similar; the choice between the two depends mostly on
    which is more convenient in a particular situation.
    The former is most useful when you want to have a blob of data
    with callbacks to convert it into the various data types that you
    advertise. When the \code{clear.func} you provided is called, you
    simply free the data blob. The latter is more useful when the
    contents of clipboard reflect the internal state of a \code{\link{GObject}}
    (As an example, for the PRIMARY clipboard, when an entry widget
    provides the clipboard's contents the contents are simply the
    text within the selected region.) If the contents change, the
    entry widget can call \code{\link{gtkClipboardSetWithOwner}} to update
    the timestamp for clipboard ownership, without having to worry
    about \code{clear.func} being called.
    
    Requesting the data from the clipboard is essentially
    asynchronous. If the contents of the clipboard are provided within
    the same process, then a direct function call will be made to
    retrieve the data, but if they are provided by another process,
    then the data needs to be retrieved from the other process, which
    may take some time. To avoid blocking the user interface, the call
    to request the selection, \code{\link{gtkClipboardRequestContents}} takes a
    callback that will be called when the contents are received (or
    when the request fails.) If you don't want to deal with providing
    a separate callback, you can also use \code{\link{gtkClipboardWaitForContents}}.
    What this does is run the GLib main loop recursively waiting for
    the contents. This can simplify the code flow, but you still have
    to be aware that other callbacks in your program can be called
    while this recursive mainloop is running.
    
    Along with the functions to get the clipboard contents as an
    arbitrary data chunk, there are also functions to retrieve
    it as text, \code{\link{gtkClipboardRequestText}} and
    \code{\link{gtkClipboardWaitForText}}. These functions take care of
    determining which formats are advertised by the clipboard
    provider, asking for the clipboard in the best available format
    and converting the results into the UTF-8 encoding. (The standard
    form for representing strings in GTK+.)
  }
\section{Structures}{\describe{\item{\verb{GtkClipboard}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkClipboard} is the equivalent of \code{\link{gtkClipboardGetForDisplay}}.}
\section{User Functions}{\describe{
\item{\code{GtkClipboardReceivedFunc(clipboard, selection.data, data)}}{
    A function to be called when the results of \code{\link{gtkClipboardRequestContents}}
    are received, or when the request fails.

\describe{
\item{\code{clipboard}}{the \code{\link{GtkClipboard}}}
\item{\code{selection.data}}{a \code{\link{GtkSelectionData}} containing the data was received.
If retrieving the data failed, then then length field
of \code{selection.data} will be negative.}
\item{\code{data}}{the \code{user.data} supplied to \code{\link{gtkClipboardRequestContents}}.}
}


}
\item{\code{GtkClipboardTextReceivedFunc(clipboard, text, data)}}{
    A function to be called when the results of \code{\link{gtkClipboardRequestText}}
    are received, or when the request fails.

\describe{
\item{\code{clipboard}}{the \code{\link{GtkClipboard}}}
\item{\code{text}}{the text received, as a UTF-8 encoded string, or \code{NULL}
if retrieving the data failed.}
\item{\code{data}}{the \code{user.data} supplied to \code{\link{gtkClipboardRequestText}}.}
}


}
\item{\code{GtkClipboardImageReceivedFunc(clipboard, pixbuf, data)}}{
    A function to be called when the results of \code{\link{gtkClipboardRequestImage}}
    are received, or when the request fails.
  Since 2.6

\describe{
\item{\code{clipboard}}{the \code{\link{GtkClipboard}}}
\item{\code{pixbuf}}{the received image}
\item{\code{data}}{the \code{user.data} supplied to \code{\link{gtkClipboardRequestImage}}.}
}


}
\item{\code{GtkClipboardTargetsReceivedFunc(clipboard, atoms, n.atoms, data)}}{
    A function to be called when the results of \code{\link{gtkClipboardRequestTargets}}
    are received, or when the request fails.
  Since 2.4

\describe{
\item{\code{clipboard}}{the \code{\link{GtkClipboard}}}
\item{\code{atoms}}{the supported targets, as list of \code{\link{GdkAtom}}, or \code{NULL}
if retrieving the data failed.}
\item{\code{n.atoms}}{the length of the \code{atoms} list.}
\item{\code{data}}{the \code{user.data} supplied to \code{\link{gtkClipboardRequestTargets}}.}
}


}
\item{\code{GtkClipboardRichTextReceivedFunc()}}{
\emph{undocumented
}




}
\item{\code{GtkClipboardURIReceivedFunc()}}{
\emph{undocumented
}




}
\item{\code{GtkClipboardGetFunc(clipboard, selection.data, info, user.data.or.owner)}}{
A function that will be called to provide the contents of the selection.
If multiple types of data were advertised, the requested type can
be determined from the \code{info} parameter or by checking the target field
of \code{selection.data}. If the data could successfully be converted into
then it should be stored into the \code{selection.data} object by
calling \code{\link{gtkSelectionDataSet}} (or related functions such
as \code{\link{gtkSelectionDataSetText}}). If no data is set, the requestor
will be informed that the attempt to get the data failed.

\describe{
\item{\code{clipboard}}{the \code{\link{GtkClipboard}}}
\item{\code{selection.data}}{a \code{\link{GtkSelectionData}} argument in which the requested
data should be stored.}
\item{\code{info}}{the info field corresponding to the requested
target from the \code{\link{GtkTargetEntry}} list passed to
\code{\link{gtkClipboardSetWithData}} or \code{\link{gtkClipboardSetWithOwner}}.}
\item{\code{user.data.or.owner}}{the \code{user.data} argument passed to \code{\link{gtkClipboardSetWithData}}, or
the \code{owner} argument passed to \code{\link{gtkClipboardSetWithOwner}}}
}


}
\item{\code{GtkClipboardClearFunc(clipboard, user.data.or.owner)}}{
A function that will be called when the contents of the clipboard are changed
or cleared. Once this has called, the \code{user.data.or.owner} argument
will not be used again.

\describe{
\item{\code{clipboard}}{the \code{\link{GtkClipboard}}}
\item{\code{user.data.or.owner}}{the \code{user.data} argument passed to \code{\link{gtkClipboardSetWithData}}, or
the \code{owner} argument passed to \code{\link{gtkClipboardSetWithOwner}}}
}


}
}}
\section{Signals}{\describe{\item{\code{owner-change(clipboard, event, user.data)}}{
The ::owner-change signal is emitted when GTK+ receives an
event that indicates that the ownership of the selection
associated with \code{clipboard} has changed.
  Since 2.6

\describe{
\item{\code{clipboard}}{the \code{\link{GtkClipboard}} on which the signal is emitted}
\item{\code{event}}{the \code{GdkEventOwnerChange} event}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Clipboards.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
