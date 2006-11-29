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
\section{Structures}{\describe{\item{\code{GdkCursor}}{
A \code{GdkCursor} structure represents a cursor.

\describe{\item{\code{type}}{[\code{\link{GdkCursorType}}] the \code{\link{GdkCursorType}} of the cursor}}

}}}
\section{Enums and Flags}{\describe{\item{\code{GdkCursorType}}{
The standard cursors available.

\describe{
\item{\code{x_cursor}}{\emph{undocumented
}}
\item{\code{arrow}}{\emph{undocumented
}}
\item{\code{based_arrow_down}}{\emph{undocumented
}}
\item{\code{based_arrow_up}}{\emph{undocumented
}}
\item{\code{boat}}{\emph{undocumented
}}
\item{\code{bogosity}}{\emph{undocumented
}}
\item{\code{bottom_left_corner}}{\emph{undocumented
}}
\item{\code{bottom_right_corner}}{\emph{undocumented
}}
\item{\code{bottom_side}}{\emph{undocumented
}}
\item{\code{bottom_tee}}{\emph{undocumented
}}
\item{\code{box_spiral}}{\emph{undocumented
}}
\item{\code{center_ptr}}{\emph{undocumented
}}
\item{\code{circle}}{\emph{undocumented
}}
\item{\code{clock	}}{\emph{undocumented
}}
\item{\code{coffee_mug}}{\emph{undocumented
}}
\item{\code{cross}}{\emph{undocumented
}}
\item{\code{cross_reverse}}{\emph{undocumented
}}
\item{\code{crosshair}}{\emph{undocumented
}}
\item{\code{diamond_cross}}{\emph{undocumented
}}
\item{\code{dot}}{\emph{undocumented
}}
\item{\code{dotbox}}{\emph{undocumented
}}
\item{\code{double_arrow}}{\emph{undocumented
}}
\item{\code{draft_large}}{\emph{undocumented
}}
\item{\code{draft_small}}{\emph{undocumented
}}
\item{\code{draped_box}}{\emph{undocumented
}}
\item{\code{exchange}}{\emph{undocumented
}}
\item{\code{fleur}}{\emph{undocumented
}}
\item{\code{gobbler}}{\emph{undocumented
}}
\item{\code{gumby}}{\emph{undocumented
}}
\item{\code{hand1}}{\emph{undocumented
}}
\item{\code{hand2}}{\emph{undocumented
}}
\item{\code{heart}}{\emph{undocumented
}}
\item{\code{icon}}{\emph{undocumented
}}
\item{\code{iron_cross}}{\emph{undocumented
}}
\item{\code{left_ptr}}{\emph{undocumented
}}
\item{\code{left_side}}{\emph{undocumented
}}
\item{\code{left_tee}}{\emph{undocumented
}}
\item{\code{leftbutton}}{\emph{undocumented
}}
\item{\code{ll_angle}}{\emph{undocumented
}}
\item{\code{lr_angle}}{\emph{undocumented
}}
\item{\code{man}}{\emph{undocumented
}}
\item{\code{middlebutton}}{\emph{undocumented
}}
\item{\code{mouse}}{\emph{undocumented
}}
\item{\code{pencil}}{\emph{undocumented
}}
\item{\code{pirate}}{\emph{undocumented
}}
\item{\code{plus}}{\emph{undocumented
}}
\item{\code{question_arrow}}{\emph{undocumented
}}
\item{\code{right_ptr}}{\emph{undocumented
}}
\item{\code{right_side}}{\emph{undocumented
}}
\item{\code{right_tee}}{\emph{undocumented
}}
\item{\code{rightbutton}}{\emph{undocumented
}}
\item{\code{rtl_logo}}{\emph{undocumented
}}
\item{\code{sailboat}}{\emph{undocumented
}}
\item{\code{sb_down_arrow}}{\emph{undocumented
}}
\item{\code{sb_h_double_arrow}}{\emph{undocumented
}}
\item{\code{sb_left_arrow}}{\emph{undocumented
}}
\item{\code{sb_right_arrow}}{\emph{undocumented
}}
\item{\code{sb_up_arrow}}{\emph{undocumented
}}
\item{\code{sb_v_double_arrow}}{\emph{undocumented
}}
\item{\code{shuttle}}{\emph{undocumented
}}
\item{\code{sizing}}{\emph{undocumented
}}
\item{\code{spider		}}{\emph{undocumented
}}
\item{\code{spraycan}}{\emph{undocumented
}}
\item{\code{star}}{\emph{undocumented
}}
\item{\code{target}}{\emph{undocumented
}}
\item{\code{tcross}}{\emph{undocumented
}}
\item{\code{top_left_arrow}}{\emph{undocumented
}}
\item{\code{top_left_corner}}{\emph{undocumented
}}
\item{\code{top_right_corner}}{\emph{undocumented
}}
\item{\code{top_side}}{\emph{undocumented
}}
\item{\code{top_tee}}{\emph{undocumented
}}
\item{\code{trek}}{\emph{undocumented
}}
\item{\code{ul_angle}}{\emph{undocumented
}}
\item{\code{umbrella}}{\emph{undocumented
}}
\item{\code{ur_angle}}{\emph{undocumented
}}
\item{\code{watch}}{\emph{undocumented
}}
\item{\code{xterm}}{\emph{undocumented
}}
\item{\code{last-cursor}}{last cursor type}
\item{\code{gdk-cursor-is-pixmap}}{type of cursors constructed with 
\code{\link{gdkCursorNewFromPixmap}} or \code{\link{gdkCursorNewFromPixbuf}}}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Cursors.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
