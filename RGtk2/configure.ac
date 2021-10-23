AC_INIT
AC_CONFIG_SRCDIR([src/Rgtk.c])

DEFINES=
EXTRA_MODULES=

CC=`"${R_HOME}/bin/R" CMD config CC`

AC_ARG_ENABLE(introspection,
  [  --disable-introspection          Disable introspection support],
  [use_introspection=$enableval], [use_introspection=yes])

if test "x$use_introspection" = "xyes"; then
   PKG_CHECK_MODULES(INTROSPECTION, gobject-introspection, have_introspection=yes,have_introspection=no)
fi

if test "x$have_introspection" = "xyes"; then
        EXTRA_MODULES="$EXTRA_MODULES gobject-introspection"
        DEFINES="$DEFINES -DHAVE_INTROSPECTION"
fi

GTK_VERSION="2.8.0"

PKG_CHECK_MODULES(GTK, gtk+-2.0 >= $GTK_VERSION $EXTRA_MODULES, HAVE_GTK="1",
  AC_MSG_ERROR(GTK version $GTK_VERSION required))

AC_SUBST(GTK_CFLAGS)
AC_SUBST(GTK_LIBS)
AC_SUBST(HAVE_GTK)

PKG_CHECK_MODULES(GTHREAD, gthread-2.0, HAVE_GTHREAD=yes,
                  AC_MSG_WARN(No GLib thread support: disabling threads))
AC_SUBST(GTHREAD_LIBS)

AC_CHECK_TYPES([uintptr_t], [DEFINES="$DEFINES -DHAVE_UINTPTR_T"])

## allow specifying arbitrary flags here
AC_SUBST(CPPFLAGS)
AC_SUBST(LIBS)

AC_SUBST(R_PACKAGE_DIR)
AC_SUBST(INSTALL_DIR)

AC_SUBST(DEFINES)

AC_CONFIG_FILES([src/Makevars])
AC_OUTPUT


