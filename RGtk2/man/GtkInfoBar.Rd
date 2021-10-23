\alias{GtkInfoBar}
\alias{gtkInfoBar}
\name{GtkInfoBar}
\title{GtkInfoBar}
\description{Report important messages to the user}
\section{Methods and Functions}{
\code{\link{gtkInfoBarNew}(show = TRUE)}\cr
\code{\link{gtkInfoBarNewWithButtons}(first.button.text, ..., show = TRUE)}\cr
\code{\link{gtkInfoBarAddActionWidget}(object, child, response.id)}\cr
\code{\link{gtkInfoBarAddButton}(object, button.text, response.id)}\cr
\code{\link{gtkInfoBarAddButtons}(object, first.button.text, ...)}\cr
\code{\link{gtkInfoBarSetResponseSensitive}(object, response.id, setting)}\cr
\code{\link{gtkInfoBarSetDefaultResponse}(object, response.id)}\cr
\code{\link{gtkInfoBarResponse}(object, response.id)}\cr
\code{\link{gtkInfoBarSetMessageType}(object, message.type)}\cr
\code{\link{gtkInfoBarGetMessageType}(object)}\cr
\code{\link{gtkInfoBarGetActionArea}(object)}\cr
\code{\link{gtkInfoBarGetContentArea}(object)}\cr
\code{gtkInfoBar(first.button.text, ..., show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkHBox
                                       +----GtkInfoBar}}
\section{Interfaces}{GtkInfoBar implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{\code{\link{GtkInfoBar}} is a widget that can be used to show messages to
the user without showing a dialog. It is often temporarily shown
at the top or bottom of a document. In contrast to \code{\link{GtkDialog}}, which
has a horizontal action area at the bottom, \code{\link{GtkInfoBar}} has a
vertical action area at the side.
  
The API of \code{\link{GtkInfoBar}} is very similar to \code{\link{GtkDialog}}, allowing you
to add buttons to the action area with \code{\link{gtkInfoBarAddButton}} or
\code{\link{gtkInfoBarNewWithButtons}}. The sensitivity of action widgets
can be controlled with \code{\link{gtkInfoBarSetResponseSensitive}}.
To add widgets to the main content area of a \code{\link{GtkInfoBar}}, use
\code{\link{gtkInfoBarGetContentArea}} and add your widgets to the container.
  
Similar to \code{\link{GtkMessageDialog}}, the contents of a \code{\link{GtkInfoBar}} can by
classified as error message, warning, informational message, etc,
by using \code{\link{gtkInfoBarSetMessageType}}. GTK+ uses the message type
to determine the background color of the message area.
  
 \emph{Simple GtkInfoBar usage.}\preformatted{/* set up info bar */
info_bar = gtk_info_bar_new ();
gtk_widget_set_no_show_all (info_bar, TRUE);
message_label = gtk_label_new ("");
gtk_widget_show (message_label);
content_area = gtk_info_bar_get_content_area (GTK_INFO_BAR (info_bar));
gtk_container_add (GTK_CONTAINER (content_area), message_label);
gtk_info_bar_add_button (GTK_INFO_BAR (info_bar),
                         GTK_STOCK_OK, GTK_RESPONSE_OK);
g_signal_connect (info_bar, "response",
                  G_CALLBACK (gtk_widget_hide), NULL);
gtk_table_attach (GTK_TABLE (table),
                  info_bar,
                  0, 1, 2, 3,
                  GTK_EXPAND | GTK_FILL,  0,
                  0,                      0);

/* ... */

/* show an error message */
gtk_label_set_text (GTK_LABEL (message_label), error_message);
gtk_info_bar_set_message_type (GTK_INFO_BAR (info_bar),
                               GTK_MESSAGE_ERROR);
gtk_widget_show (info_bar);
}  
 \emph{GtkInfoBar as GtkBuildable}
The GtkInfoBar implementation of the GtkBuildable interface exposes
the content area and action area as internal children with the names
"content_area" and "action_area".

GtkInfoBar supports a custom <action-widgets> element, which
can contain multiple <action-widget> elements. The "response"
attribute specifies a numeric response, and the content of the element
is the id of widget (which should be a child of the dialogs \code{action.area}).}
\section{Structures}{\describe{\item{\verb{GtkInfoBar}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkInfoBar} is the result of collapsing the constructors of \code{GtkInfoBar} (\code{\link{gtkInfoBarNew}}, \code{\link{gtkInfoBarNewWithButtons}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{close(user.data)}}{
The ::close signal is a
keybinding signal
which gets emitted when the user uses a keybinding to dismiss
the info bar.
  
The default binding for this signal is the Escape key.
  Since 2.18

\describe{\item{\code{user.data}}{user data set when the signal handler was connected.}}


}
\item{\code{response(info.bar, response.id, user.data)}}{
Emitted when an action widget is clicked or the application programmer
calls \code{\link{gtkDialogResponse}}. The \code{response.id} depends on which action
widget was clicked.
  Since 2.18

\describe{
\item{\code{info.bar}}{the object on which the signal is emitted}
\item{\code{response.id}}{the response ID}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{\item{\verb{message-type} [\code{\link{GtkMessageType}} : Read / Write / Construct]}{

The type of the message.
  
The type is used to determine the colors to use in the info bar.
The following symbolic color names can by used to customize
these colors:
"info_fg_color", "info_bg_color",
"warning_fg_color", "warning_bg_color",
"question_fg_color", "question_bg_color",
"error_fg_color", "error_bg_color".
"other_fg_color", "other_bg_color".
  
If the type is \verb{GTK_MESSAGE_OTHER}, no info bar is painted but the
colors are still set.
  Default value: GTK_MESSAGE_INFO  Since 2.18

}}}
\section{Style Properties}{\describe{
\item{\verb{action-area-border} [integer : Read]}{

Width of the border around the action area of the info bar.
  Allowed values: >= 0  Default value: 5  Since 2.18

}
\item{\verb{button-spacing} [integer : Read]}{

Spacing between buttons in the action area of the info bar.
  Allowed values: >= 0  Default value: 6  Since 2.18

}
\item{\verb{content-area-border} [integer : Read]}{

The width of the border around the content
content area of the info bar.
  Allowed values: >= 0  Default value: 8  Since 2.18

}
\item{\verb{content-area-spacing} [integer : Read]}{

The default spacing used between elements of the
content area of the info bar.
  Allowed values: >= 0  Default value: 16  Since 2.18

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkInfoBar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
