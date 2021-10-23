\alias{gdk-Cursors}
\alias{GdkCursor}
\alias{GdkCursorType}
\name{gdk-Cursors}
\title{Cursors}
\description{Standard and pixmap cursors}
\section{Methods and Functions}{
\code{\link{gdkCursorNew}(cursor.type)}\cr
\code{\link{gdkCursorNewFromPixmap}(source, mask, fg, bg, x, y)}\cr
\code{\link{gdkCursorNewFromPixbuf}(display, source, x, y)}\cr
\code{\link{gdkCursorNewFromName}(display, name)}\cr
\code{\link{gdkCursorNewForDisplay}(display, cursor.type)}\cr
\code{\link{gdkCursorGetDisplay}(object)}\cr
\code{\link{gdkCursorGetImage}(object)}\cr
}
\section{Detailed Description}{These functions are used to create and destroy cursors.
There is a number of standard cursors, but it is also
possible to construct new cursors from pixmaps and
pixbufs. There may be limitations as to what kinds of
cursors can be constructed on a given display, see
\code{\link{gdkDisplaySupportsCursorAlpha}},
\code{\link{gdkDisplaySupportsCursorColor}},
\code{\link{gdkDisplayGetDefaultCursorSize}} and
\code{\link{gdkDisplayGetMaximalCursorSize}}.
  
Cursors by themselves are not very interesting, they must be be
bound to a window for users to see them. This is done with
\code{\link{gdkWindowSetCursor}} or by setting the cursor member of the
\code{\link{GdkWindowAttr}} struct passed to \code{\link{gdkWindowNew}}.}
\section{Structures}{\describe{\item{\verb{GdkCursor}}{
A \verb{GdkCursor} structure represents a cursor.

\describe{\item{\verb{type}}{[\code{\link{GdkCursorType}}] the \code{\link{GdkCursorType}} of the cursor}}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GdkCursorType}}{
The standard cursors available.

\describe{
\item{\verb{x_cursor}}{\emph{undocumented
}}
\item{\verb{arrow}}{\emph{undocumented
}}
\item{\verb{based_arrow_down}}{\emph{undocumented
}}
\item{\verb{based_arrow_up}}{\emph{undocumented
}}
\item{\verb{boat}}{\emph{undocumented
}}
\item{\verb{bogosity}}{\emph{undocumented
}}
\item{\verb{bottom_left_corner}}{\emph{undocumented
}}
\item{\verb{bottom_right_corner}}{\emph{undocumented
}}
\item{\verb{bottom_side}}{\emph{undocumented
}}
\item{\verb{bottom_tee}}{\emph{undocumented
}}
\item{\verb{box_spiral}}{\emph{undocumented
}}
\item{\verb{center_ptr}}{\emph{undocumented
}}
\item{\verb{circle}}{\emph{undocumented
}}
\item{\verb{clock	}}{\emph{undocumented
}}
\item{\verb{coffee_mug}}{\emph{undocumented
}}
\item{\verb{cross}}{\emph{undocumented
}}
\item{\verb{cross_reverse}}{\emph{undocumented
}}
\item{\verb{crosshair}}{\emph{undocumented
}}
\item{\verb{diamond_cross}}{\emph{undocumented
}}
\item{\verb{dot}}{\emph{undocumented
}}
\item{\verb{dotbox}}{\emph{undocumented
}}
\item{\verb{double_arrow}}{\emph{undocumented
}}
\item{\verb{draft_large}}{\emph{undocumented
}}
\item{\verb{draft_small}}{\emph{undocumented
}}
\item{\verb{draped_box}}{\emph{undocumented
}}
\item{\verb{exchange}}{\emph{undocumented
}}
\item{\verb{fleur}}{\emph{undocumented
}}
\item{\verb{gobbler}}{\emph{undocumented
}}
\item{\verb{gumby}}{\emph{undocumented
}}
\item{\verb{hand1}}{\emph{undocumented
}}
\item{\verb{hand2}}{\emph{undocumented
}}
\item{\verb{heart}}{\emph{undocumented
}}
\item{\verb{icon}}{\emph{undocumented
}}
\item{\verb{iron_cross}}{\emph{undocumented
}}
\item{\verb{left_ptr}}{\emph{undocumented
}}
\item{\verb{left_side}}{\emph{undocumented
}}
\item{\verb{left_tee}}{\emph{undocumented
}}
\item{\verb{leftbutton}}{\emph{undocumented
}}
\item{\verb{ll_angle}}{\emph{undocumented
}}
\item{\verb{lr_angle}}{\emph{undocumented
}}
\item{\verb{man}}{\emph{undocumented
}}
\item{\verb{middlebutton}}{\emph{undocumented
}}
\item{\verb{mouse}}{\emph{undocumented
}}
\item{\verb{pencil}}{\emph{undocumented
}}
\item{\verb{pirate}}{\emph{undocumented
}}
\item{\verb{plus}}{\emph{undocumented
}}
\item{\verb{question_arrow}}{\emph{undocumented
}}
\item{\verb{right_ptr}}{\emph{undocumented
}}
\item{\verb{right_side}}{\emph{undocumented
}}
\item{\verb{right_tee}}{\emph{undocumented
}}
\item{\verb{rightbutton}}{\emph{undocumented
}}
\item{\verb{rtl_logo}}{\emph{undocumented
}}
\item{\verb{sailboat}}{\emph{undocumented
}}
\item{\verb{sb_down_arrow}}{\emph{undocumented
}}
\item{\verb{sb_h_double_arrow}}{\emph{undocumented
}}
\item{\verb{sb_left_arrow}}{\emph{undocumented
}}
\item{\verb{sb_right_arrow}}{\emph{undocumented
}}
\item{\verb{sb_up_arrow}}{\emph{undocumented
}}
\item{\verb{sb_v_double_arrow}}{\emph{undocumented
}}
\item{\verb{shuttle}}{\emph{undocumented
}}
\item{\verb{sizing}}{\emph{undocumented
}}
\item{\verb{spider		}}{\emph{undocumented
}}
\item{\verb{spraycan}}{\emph{undocumented
}}
\item{\verb{star}}{\emph{undocumented
}}
\item{\verb{target}}{\emph{undocumented
}}
\item{\verb{tcross}}{\emph{undocumented
}}
\item{\verb{top_left_arrow}}{\emph{undocumented
}}
\item{\verb{top_left_corner}}{\emph{undocumented
}}
\item{\verb{top_right_corner}}{\emph{undocumented
}}
\item{\verb{top_side}}{\emph{undocumented
}}
\item{\verb{top_tee}}{\emph{undocumented
}}
\item{\verb{trek}}{\emph{undocumented
}}
\item{\verb{ul_angle}}{\emph{undocumented
}}
\item{\verb{umbrella}}{\emph{undocumented
}}
\item{\verb{ur_angle}}{\emph{undocumented
}}
\item{\verb{watch}}{\emph{undocumented
}}
\item{\verb{xterm}}{\emph{undocumented
}}
\item{\verb{last-cursor}}{last cursor type}
\item{\verb{gdk-cursor-is-pixmap}}{Blank cursor. Since 2.16}
}

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Cursors.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
