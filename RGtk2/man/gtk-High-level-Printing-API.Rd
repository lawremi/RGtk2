\alias{gtk-High-level-Printing-API}
\alias{GtkPrintOperation}
\alias{GtkPrintOperationPreview}
\alias{gtkPrintOperation}
\alias{GtkPageSetupDoneFunc}
\alias{GtkPrintStatus}
\alias{GtkPrintOperationAction}
\alias{GtkPrintOperationResult}
\alias{GtkPrintError}
\name{gtk-High-level-Printing-API}
\title{GtkPrintOperation}
\description{High-level Printing API}
\section{Methods and Functions}{
\code{\link{gtkPrintOperationNew}()}\cr
\code{\link{gtkPrintOperationSetAllowAsync}(object, allow.async)}\cr
\code{\link{gtkPrintOperationGetError}(object, .errwarn = TRUE)}\cr
\code{\link{gtkPrintOperationSetDefaultPageSetup}(object, default.page.setup = NULL)}\cr
\code{\link{gtkPrintOperationGetDefaultPageSetup}(object)}\cr
\code{\link{gtkPrintOperationSetPrintSettings}(object, print.settings = NULL)}\cr
\code{\link{gtkPrintOperationGetPrintSettings}(object)}\cr
\code{\link{gtkPrintOperationSetJobName}(object, job.name)}\cr
\code{\link{gtkPrintOperationSetNPages}(object, n.pages)}\cr
\code{\link{gtkPrintOperationGetNPagesToPrint}(object)}\cr
\code{\link{gtkPrintOperationSetCurrentPage}(object, current.page)}\cr
\code{\link{gtkPrintOperationSetUseFullPage}(object, full.page)}\cr
\code{\link{gtkPrintOperationSetUnit}(object, unit)}\cr
\code{\link{gtkPrintOperationSetExportFilename}(object, filename)}\cr
\code{\link{gtkPrintOperationSetShowProgress}(object, show.progress)}\cr
\code{\link{gtkPrintOperationSetTrackPrintStatus}(object, track.status)}\cr
\code{\link{gtkPrintOperationSetCustomTabLabel}(object, label)}\cr
\code{\link{gtkPrintOperationRun}(object, action, parent = NULL, .errwarn = TRUE)}\cr
\code{\link{gtkPrintOperationCancel}(object)}\cr
\code{\link{gtkPrintOperationDrawPageFinish}(object)}\cr
\code{\link{gtkPrintOperationSetDeferDrawing}(object)}\cr
\code{\link{gtkPrintOperationGetStatus}(object)}\cr
\code{\link{gtkPrintOperationGetStatusString}(object)}\cr
\code{\link{gtkPrintOperationIsFinished}(object)}\cr
\code{\link{gtkPrintOperationSetSupportSelection}(object, support.selection)}\cr
\code{\link{gtkPrintOperationGetSupportSelection}(object)}\cr
\code{\link{gtkPrintOperationSetHasSelection}(object, has.selection)}\cr
\code{\link{gtkPrintOperationGetHasSelection}(object)}\cr
\code{\link{gtkPrintOperationSetEmbedPageSetup}(object, embed)}\cr
\code{\link{gtkPrintOperationGetEmbedPageSetup}(object)}\cr
\code{\link{gtkPrintRunPageSetupDialog}(parent, page.setup = NULL, settings)}\cr
\code{\link{gtkPrintRunPageSetupDialogAsync}(parent, page.setup, settings, done.cb, data)}\cr
\code{\link{gtkPrintOperationPreviewEndPreview}(object)}\cr
\code{\link{gtkPrintOperationPreviewIsSelected}(object, page.nr)}\cr
\code{\link{gtkPrintOperationPreviewRenderPage}(object, page.nr)}\cr
\code{gtkPrintOperation()}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GtkPrintOperation
GInterface
   +----GtkPrintOperationPreview
}}
\section{Implementations}{GtkPrintOperationPreview is implemented by
 \code{\link{GtkPrintOperation}}.}
\section{Interfaces}{GtkPrintOperation implements
 \code{\link{GtkPrintOperationPreview}}.}
\section{Detailed Description}{GtkPrintOperation is the high-level, portable printing API. It looks
a bit different than other GTK+ dialogs such as the \code{\link{GtkFileChooser}},
since some platforms don't expose enough infrastructure to implement
a good print dialog. On such platforms, GtkPrintOperation uses the
native print dialog. On platforms which do not provide a native
print dialog, GTK+ uses its own, see \verb{GtkPrintUnixDialog}.
  
The typical way to use the high-level printing API is to create a
\code{\link{GtkPrintOperation}} object with \code{\link{gtkPrintOperationNew}} when the user
selects to print. Then you set some properties on it, e.g. the page size,
any \code{\link{GtkPrintSettings}} from previous print operations, the number of pages,
the current page, etc.
  
Then you start the print operation by calling \code{\link{gtkPrintOperationRun}}.
It will then show a dialog, let the user select a printer and options.
When the user finished the dialog various signals will be emitted on the
\code{\link{GtkPrintOperation}}, the main one being ::draw-page, which you are supposed
to catch and render the page on the provided \code{\link{GtkPrintContext}} using Cairo.
  
 \emph{The high-level printing API}
\preformatted{
settings <- NULL
print_something <-
{
  op <- gtkPrintOperation()

  if (!is.null(settings)) 
    op$setPrintSettings(settings)

  gSignalConnect(op, "begin_print", begin_print)
  gSignalConnect(op, "draw_page", draw_page)

  res <- op$run("print-dialog", main_window)[[1]]

  if (res == "apply")
    settings <- op$getPrintSettings()
}
}  
By default GtkPrintOperation uses an external application to do
print preview. To implement a custom print preview, an application
must connect to the preview signal. The functions
\code{gtkPrintOperationPrintPreviewRenderPage()},
\code{\link{gtkPrintOperationPreviewEndPreview}} and
\code{\link{gtkPrintOperationPreviewIsSelected}} are useful
when implementing a print preview.
  
Printing support was added in GTK+ 2.10.}
\section{Structures}{\describe{
\item{\verb{GtkPrintOperation}}{
\emph{undocumented
}

}
\item{\verb{GtkPrintOperationPreview}}{
\emph{undocumented
}

}
}}
\section{Convenient Construction}{\code{gtkPrintOperation} is the equivalent of \code{\link{gtkPrintOperationNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkPrintStatus}}{
The status gives a rough indication of the completion
of a running print operation.

\describe{
\item{\verb{initial}}{The printing has not started yet; this
  status is set initially, and while the print dialog is shown.}
\item{\verb{preparing}}{This status is set while the begin-print 
  signal is emitted and during pagination.}
\item{\verb{generating-data}}{This status is set while the
  pages are being rendered.}
\item{\verb{sending-data}}{The print job is being sent off to the 
  printer.}
\item{\verb{pending}}{The print job has been sent to the printer,
  but is not printed for some reason, e.g. the printer may be stopped.}
\item{\verb{pending-issue}}{Some problem has occurred during 
  printing, e.g. a paper jam.}
\item{\verb{printing}}{The printer is processing the print job.}
\item{\verb{finished}}{The printing has been completed successfully.}
\item{\verb{finished-aborted}}{The printing has been aborted.}
}

}
\item{\verb{GtkPrintOperationAction}}{
The \code{action} parameter to \code{\link{gtkPrintOperationRun}}
determines what action the print operation should perform.

\describe{
\item{\verb{print-dialog}}{Show the print dialog.}
\item{\verb{print}}{Start to print without showing
   the print dialog, based on the current print settings.}
\item{\verb{preview}}{Show the print preview.}
\item{\verb{export}}{Export to a file. This requires
  the export-filename property to be set.}
}

}
\item{\verb{GtkPrintOperationResult}}{
A value of this type is returned by \code{\link{gtkPrintOperationRun}}.

\describe{
\item{\verb{error}}{An error has occured.}
\item{\verb{apply}}{The print settings should be stored.}
\item{\verb{cancel}}{The print operation has been canceled,
  the print settings should not be stored.}
\item{\verb{in-progress}}{The print operation is not complete
  yet. This value will only be returned when running asynchronously.}
}

}
\item{\verb{GtkPrintError}}{
Error codes that identify various errors that can occur while
using the GTK+ printing support.

\describe{
\item{\verb{general}}{An unspecified error occurred.}
\item{\verb{internal-error}}{An internal error occurred.}
\item{\verb{nomem}}{A memory allocation failed.}
}

}
}}
\section{User Functions}{\describe{\item{\code{GtkPageSetupDoneFunc(page.setup, data)}}{
The type of function that is passed to \code{\link{gtkPrintRunPageSetupDialogAsync}}.
This function will be called when the page setup dialog is dismissed, and
also serves as destroy notify for \code{data}.

\describe{
\item{\code{page.setup}}{the \code{\link{GtkPageSetup}} that has been}
\item{\code{data}}{user data that has been passed to
\code{\link{gtkPrintRunPageSetupDialogAsync}}.}
}


}}}
\section{Signals}{\describe{
\item{\code{begin-print(operation, context, user.data)}}{
Emitted after the user has finished changing print settings
in the dialog, before the actual rendering starts.
  
A typical use for ::begin-print is to use the parameters from the
\code{\link{GtkPrintContext}} and paginate the document accordingly, and then
set the number of pages with \code{\link{gtkPrintOperationSetNPages}}.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{context}}{the \code{\link{GtkPrintContext}} for the current operation}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{create-custom-widget(operation, user.data)}}{
Emitted when displaying the print dialog. If you return a
widget in a handler for this signal it will be added to a custom
tab in the print dialog. You typically return a container widget
with multiple widgets in it.
  
The print dialog owns the returned widget, and its lifetime is not
controlled by the application. However, the widget is guaranteed
to stay around until the \verb{"custom-widget-apply"}
signal is emitted on the operation. Then you can read out any
information you need from the widgets.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [\code{\link{GObject}}] A custom widget that gets embedded in the print dialog,
or \code{NULL}

}
\item{\code{custom-widget-apply(operation, widget, user.data)}}{
Emitted right before \verb{"begin-print"} if you added
a custom widget in the \verb{"create-custom-widget"} handler.
When you get this signal you should read the information from the
custom widgets, as the widgets are not guaraneed to be around at a
later time.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{widget}}{the custom widget added in create-custom-widget}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{done(operation, result, user.data)}}{
Emitted when the print operation run has finished doing
everything required for printing.
  \code{result} gives you information about what happened during the run.
If \code{result} is \code{GTK_PRINT_OPERATION_RESULT_ERROR} then you can call
\code{\link{gtkPrintOperationGetError}} for more information.
  
If you enabled print status tracking then
\code{\link{gtkPrintOperationIsFinished}} may still return \code{FALSE}
after \verb{"done"} was emitted.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{result}}{the result of the print operation}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{draw-page(operation, context, page.nr, user.data)}}{
Emitted for every page that is printed. The signal handler
must render the \code{page.nr}'s page onto the cairo context obtained
from \code{context} using \code{\link{gtkPrintContextGetCairoContext}}.
\preformatted{
draw_page <- (operation, context, page_nr, user_data)
{
  cr <- context$getCairoContext()
  width <- context$getWidth()
  
  cr$rectangle(0, 0, width, HEADER_HEIGHT)
  
  cr$setSourceRgb(0.8, 0.8, 0.8)
  cr$fill()
  
  layout <- context$createPangoLayout()
  
  desc <- pangoFontDescriptionFromString("sans 14")
  layout$setFontDescription(desc)
  
  layout$setText("some text")
  layout$setWidth(width)
  layout$setAlignment(layout, "center")
     		      
  layout_height <- layout$getSize()$height
  text_height <- layout_height / PANGO_SCALE
  
  cr$moveTo(width / 2,  (HEADER_HEIGHT - text_height) / 2)
  pangoCairoShowLayout(cr, layout)
}
}
  
Use \code{\link{gtkPrintOperationSetUseFullPage}} and
\code{\link{gtkPrintOperationSetUnit}} before starting the print operation
to set up the transformation of the cairo context according to your
needs.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{context}}{the \code{\link{GtkPrintContext}} for the current operation}
\item{\code{page.nr}}{the number of the currently printed page (0-based)}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{end-print(operation, context, user.data)}}{
Emitted after all pages have been rendered.
A handler for this signal can clean up any resources that have
been allocated in the \verb{"begin-print"} handler.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{context}}{the \code{\link{GtkPrintContext}} for the current operation}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{paginate(operation, context, user.data)}}{
Emitted after the \verb{"begin-print"} signal, but before
the actual rendering starts. It keeps getting emitted until a connected
signal handler returns \code{TRUE}.
  
The ::paginate signal is intended to be used for paginating a document
in small chunks, to avoid blocking the user interface for a long
time. The signal handler should update the number of pages using
\code{\link{gtkPrintOperationSetNPages}}, and return \code{TRUE} if the document
has been completely paginated.
  
If you don't need to do pagination in chunks, you can simply do
it all in the ::begin-print handler, and set the number of pages
from there.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{context}}{the \code{\link{GtkPrintContext}} for the current operation}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if pagination is complete

}
\item{\code{preview(operation, preview, context, parent, user.data)}}{
Gets emitted when a preview is requested from the native dialog.
  
The default handler for this signal uses an external viewer
application to preview.
  
To implement a custom print preview, an application must return
\code{TRUE} from its handler for this signal. In order to use the
provided \code{context} for the preview implementation, it must be
given a suitable cairo context with \code{\link{gtkPrintContextSetCairoContext}}.
  
The custom preview implementation can use
\code{\link{gtkPrintOperationPreviewIsSelected}} and
\code{\link{gtkPrintOperationPreviewRenderPage}} to find pages which
are selected for print and render them. The preview must be
finished by calling \code{\link{gtkPrintOperationPreviewEndPreview}}
(typically in response to the user clicking a close button).
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{preview}}{the \verb{GtkPrintPreviewOperation} for the current operation}
\item{\code{context}}{the \code{\link{GtkPrintContext}} that will be used}
\item{\code{parent}}{the \code{\link{GtkWindow}} to use as window parent, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the listener wants to take over control of the preview

}
\item{\code{request-page-setup(operation, context, page.nr, setup, user.data)}}{
Emitted once for every page that is printed, to give
the application a chance to modify the page setup. Any changes
done to \code{setup} will be in force only for printing this page.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{context}}{the \code{\link{GtkPrintContext}} for the current operation}
\item{\code{page.nr}}{the number of the currently printed page (0-based)}
\item{\code{setup}}{the \code{\link{GtkPageSetup}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{status-changed(operation, user.data)}}{
Emitted at between the various phases of the print operation.
See \code{\link{GtkPrintStatus}} for the phases that are being discriminated.
Use \code{\link{gtkPrintOperationGetStatus}} to find out the current
status.
  Since 2.10

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{update-custom-widget(operation, widget, setup, settings, user.data)}}{
Emitted after change of selected printer. The actual page setup and
print settings are passed to the custom widget, which can actualize
itself according to this change.
  Since 2.18

\describe{
\item{\code{operation}}{the \code{\link{GtkPrintOperation}} on which the signal was emitted}
\item{\code{widget}}{the custom widget added in create-custom-widget}
\item{\code{setup}}{actual page setup}
\item{\code{settings}}{actual print settings}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{got-page-size(preview, context, page.setup, user.data)}}{
The ::got-page-size signal is emitted once for each page
that gets rendered to the preview.
  
A handler for this signal should update the \code{context}
according to \code{page.setup} and set up a suitable cairo
context, using \code{\link{gtkPrintContextSetCairoContext}}.

\describe{
\item{\code{preview}}{the object on which the signal is emitted}
\item{\code{context}}{the current \code{\link{GtkPrintContext}}}
\item{\code{page.setup}}{the \code{\link{GtkPageSetup}} for the current page}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{ready(preview, context, user.data)}}{
The ::ready signal gets emitted once per preview operation,
before the first page is rendered.
  
A handler for this signal can be used for setup tasks.

\describe{
\item{\code{preview}}{the object on which the signal is emitted}
\item{\code{context}}{the current \code{\link{GtkPrintContext}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{allow-async} [logical : Read / Write]}{

Determines whether the print operation may run asynchronously or not.
  
Some systems don't support asynchronous printing, but those that do
will return \code{GTK_PRINT_OPERATION_RESULT_IN_PROGRESS} as the status, and
emit the \verb{"done"} signal when the operation is actually
done.
  
The Windows port does not support asynchronous operation at all (this
is unlikely to change). On other platforms, all actions except for
\code{GTK_PRINT_OPERATION_ACTION_EXPORT} support asynchronous operation.
  Default value: FALSE  Since 2.10

}
\item{\verb{current-page} [integer : Read / Write]}{

The current page in the document.
  
If this is set before \code{\link{gtkPrintOperationRun}},
the user will be able to select to print only the current page.
  
Note that this only makes sense for pre-paginated documents.
  Allowed values: >= -1  Default value: -1  Since 2.10

}
\item{\verb{custom-tab-label} [character : *                : Read / Write]}{

Used as the label of the tab containing custom widgets.
Note that this property may be ignored on some platforms.
  
If this is \code{NULL}, GTK+ uses a default label.
  Default value: NULL  Since 2.10

}
\item{\verb{default-page-setup} [\code{\link{GtkPageSetup}} : *         : Read / Write]}{

The \code{\link{GtkPageSetup}} used by default.
  
This page setup will be used by \code{\link{gtkPrintOperationRun}},
but it can be overridden on a per-page basis by connecting
to the \verb{"request-page-setup"} signal.
  Since 2.10

}
\item{\verb{embed-page-setup} [logical : Read / Write]}{

If \code{TRUE}, page size combo box and orientation combo box are embedded into page setup page.
  Default value: FALSE  Since 2.18

}
\item{\verb{export-filename} [character : *                : Read / Write]}{

The name of a file to generate instead of showing the print dialog.
Currently, PDF is the only supported format.
  
The intended use of this property is for implementing
"Export to PDF" actions.
  
"Print to PDF" support is independent of this and is done
by letting the user pick the "Print to PDF" item from the
list of printers in the print dialog.
  Default value: NULL  Since 2.10

}
\item{\verb{has-selection} [logical : Read / Write]}{

Determines whether there is a selection in your application.
This can allow your application to print the selection.
This is typically used to make a "Selection" button sensitive.
  Default value: FALSE  Since 2.18

}
\item{\verb{job-name} [character : *                : Read / Write]}{

A string used to identify the job (e.g. in monitoring
applications like eggcups).
  
If you don't set a job name, GTK+ picks a default one
by numbering successive print jobs.
  Default value: ""  Since 2.10

}
\item{\verb{n-pages} [integer : Read / Write]}{

The number of pages in the document.
  
This \emph{must} be set to a positive number
before the rendering starts. It may be set in a
\verb{"begin-print"} signal hander.
  
Note that the page numbers passed to the
\verb{"request-page-setup"} and
\verb{"draw-page"} signals are 0-based, i.e. if
the user chooses to print all pages, the last ::draw-page signal
will be for page \code{n.pages} - 1.
  Allowed values: >= -1  Default value: -1  Since 2.10

}
\item{\verb{n-pages-to-print} [integer : Read]}{

The number of pages that will be printed.
  
Note that this value is set during print preparation phase
(\code{GTK_PRINT_STATUS_PREPARING}), so this value should never be
get before the data generation phase (\code{GTK_PRINT_STATUS_GENERATING_DATA}).
You can connect to the \verb{"status-changed"} signal
and call \code{\link{gtkPrintOperationGetNPagesToPrint}} when
print status is \code{GTK_PRINT_STATUS_GENERATING_DATA}.
This is typically used to track the progress of print operation.
  Allowed values: >= -1  Default value: -1  Since 2.18

}
\item{\verb{print-settings} [\code{\link{GtkPrintSettings}} : *     : Read / Write]}{

The \code{\link{GtkPrintSettings}} used for initializing the dialog.
  
Setting this property is typically used to re-establish
print settings from a previous print operation, see
\code{\link{gtkPrintOperationRun}}.
  Since 2.10

}
\item{\verb{show-progress} [logical : Read / Write]}{

Determines whether to show a progress dialog during the
print operation.
  Default value: FALSE  Since 2.10

}
\item{\verb{status} [\code{\link{GtkPrintStatus}} : Read]}{

The status of the print operation.
  Default value: GTK_PRINT_STATUS_INITIAL  Since 2.10

}
\item{\verb{status-string} [character : *                : Read]}{

A string representation of the status of the print operation.
The string is translated and suitable for displaying the print
status e.g. in a \code{\link{GtkStatusbar}}.
  
See the \verb{"status"} property for a status value that
is suitable for programmatic use.
  Default value: ""  Since 2.10

}
\item{\verb{support-selection} [logical : Read / Write]}{

If \code{TRUE}, the print operation will support print of selection.
This allows the print dialog to show a "Selection" button.
  Default value: FALSE  Since 2.18

}
\item{\verb{track-print-status} [logical : Read / Write]}{

If \code{TRUE}, the print operation will try to continue report on
the status of the print job in the printer queues and printer.
This can allow your application to show things like "out of paper"
issues, and when the print job actually reaches the printer.
However, this is often implemented using polling, and should
not be enabled unless needed.
  Default value: FALSE  Since 2.10

}
\item{\verb{unit} [\code{\link{GtkUnit}} : Read / Write]}{

The transformation for the cairo context obtained from
\code{\link{GtkPrintContext}} is set up in such a way that distances
are measured in units of \code{unit}.
  Default value: GTK_UNIT_PIXEL  Since 2.10

}
\item{\verb{use-full-page} [logical : Read / Write]}{

If \code{TRUE}, the transformation for the cairo context obtained
from \code{\link{GtkPrintContext}} puts the origin at the top left corner
of the page (which may not be the top left corner of the sheet,
depending on page orientation and the number of pages per sheet).
Otherwise, the origin is at the top left corner of the imageable
area (i.e. inside the margins).
  Default value: FALSE  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-High-level-Printing-API.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkPrintContext}}}
\keyword{internal}
