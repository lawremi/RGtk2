\alias{gdkWindowSetDebugUpdates}
\name{gdkWindowSetDebugUpdates}
\title{gdkWindowSetDebugUpdates}
\description{With update debugging enabled, calls to
\code{\link{gdkWindowInvalidateRegion}} clear the invalidated region of the
screen to a noticeable color, and GDK pauses for a short time
before sending exposes to windows during
\code{\link{gdkWindowProcessUpdates}}.  The net effect is that you can see
the invalid region for each window and watch redraws as they
occur. This allows you to diagnose inefficiencies in your application.}
\usage{gdkWindowSetDebugUpdates(setting)}
\arguments{\item{\verb{setting}}{\code{TRUE} to turn on update debugging}}
\details{In essence, because the GDK rendering model prevents all flicker,
if you are redrawing the same region 400 times you may never
notice, aside from noticing a speed problem. Enabling update
debugging causes GTK to flicker slowly and noticeably, so you can
see exactly what's being redrawn when, in what order.
  
The --gtk-debug=updates command line option passed to GTK+ programs
enables this debug option at application startup time. That's
usually more useful than calling \code{\link{gdkWindowSetDebugUpdates}}
yourself, though you might want to use this function to enable
updates sometime after application startup time.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
