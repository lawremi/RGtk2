#include "RGtk2/gio.h"
#include <R_ext/Connections.h>

#if ! defined(R_CONNECTIONS_VERSION) || R_CONNECTIONS_VERSION != 1
#error "Connections API version must be 1"
#endif

#define R_EOF	-1

static const char *getFilenameForGInputStream(GFileInputStream *istream) {
  GFileInfo *info;
  const char *filename;
  GError *err = NULL;
  
  info = g_file_input_stream_query_info(G_FILE_INPUT_STREAM(istream),
                                        G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME,
                                        NULL, &err);
  if (err != NULL) {
    error("Failed to get file name for GInputStream: %s", err->message);
  }
  
  filename = g_file_info_get_display_name(info);
  
  g_object_unref(G_OBJECT(info));
  return filename;
}

static const char *getFilenameForGOutputStream(GFileOutputStream *ostream) {
  GFileInfo *info;
  const char *filename;
  GError *err = NULL;
  
  info = g_file_output_stream_query_info(G_FILE_OUTPUT_STREAM(ostream),
                                         G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME,
                                         NULL, &err);
  if (err != NULL) {
    error("Failed to get file name for GOutputStream: %s", err->message);
  }
  
  filename = g_file_info_get_display_name(info);
  
  g_object_unref(G_OBJECT(info));
  return filename;
}

static const char *getFilenameForGIOStream(GFileIOStream *iostream) {
  GFileInfo *info;
  const char *filename;
  GError *err = NULL;
  
  info = g_file_io_stream_query_info(G_FILE_IO_STREAM(iostream),
                                     G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME,
                                     NULL, &err);
  if (err != NULL) {
    error("Failed to get file name for GIOStream: %s", err->message);
  }
  
  filename = g_file_info_get_display_name(info);
  
  g_object_unref(G_OBJECT(info));
  return filename;
}

static void R_gstream_destroy(Rconnection con) {
  g_object_unref(G_OBJECT(con->private));
}

static void R_gio_close(Rconnection con) {
  GError *err = NULL;
  g_io_stream_close(G_IO_STREAM(con->private), NULL, &err);
  if (err != NULL) {
    error("Failed to close GIOStream: %s", err->message);
  }
  con->isopen = FALSE;
}

static void R_ginput_close(Rconnection con) {
  GError *err = NULL;
  g_input_stream_close(G_INPUT_STREAM(con->private), NULL, &err);
  if (err != NULL) {
    error("Failed to close GInputStream: %s", err->message);
  }
  con->isopen = FALSE;
}

static void R_goutput_close(Rconnection con) {
  GError *err = NULL;
  g_output_stream_close(G_OUTPUT_STREAM(con->private), NULL, &err);
  if (err != NULL) {
    error("Failed to close GOutputStream: %s", err->message);
  }
}

static size_t ginput_read(GInputStream *istream, void *ptr, size_t size,
                          size_t nitems, Rboolean blocking) {
  GError *err = NULL;
  gssize numread;
  
  if (blocking) {
    g_input_stream_read_all(istream, ptr, size*nitems, &numread, NULL, &err);
  } else {
    numread = g_input_stream_read(istream, ptr, size*nitems, NULL, &err);
  }
  
  if (err != NULL) {
    error("Failed to read from GInputStream: %s", err->message);
  }
  return numread / size;
}

static size_t R_ginput_read(void *ptr, size_t size, size_t nitems,
                            Rconnection con) {
  return ginput_read(G_INPUT_STREAM(con->private), ptr, size, nitems,
                     con->blocking);
}

static size_t R_gio_read(void *ptr, size_t size, size_t nitems,
                         Rconnection con) {
  return ginput_read(g_io_stream_get_input_stream(G_IO_STREAM(con->private)),
                     ptr, size, nitems, con->blocking);
}

static int ginput_fgetc_internal(GInputStream *istream) {
  GError *err = NULL;
  int c, numread;

  if (G_IS_BUFFERED_INPUT_STREAM(istream)) {
    c = g_buffered_input_stream_read_byte(G_BUFFERED_INPUT_STREAM(istream),
                                          NULL, &err);
    if (c == -1) {
      numread = 0;
    }
  } else {
    numread = g_input_stream_read(istream, &c, 1, NULL, &err);
  }
  
  if (err != NULL) {
    error("Failed to read byte from GInputStream: %s", err->message);
  }
  if (numread == 0) {
    c = R_EOF;
  }
  return c;
}

static int R_ginput_fgetc_internal(Rconnection con) {
  return ginput_fgetc_internal(G_INPUT_STREAM(con->private));
}

static int R_gio_fgetc_internal(Rconnection con) {
  GInputStream *istream =
    g_io_stream_get_input_stream(G_IO_STREAM(con->private));
  return ginput_fgetc_internal(istream);
}

static double gseekable_seek(GSeekable *seekable, double where, int origin,
                             int rw) {
  GSeekType type;
  GError *err = NULL;
  goffset pos;

  pos = g_seekable_tell(seekable);
  
  switch(origin) {
  case 2: type = G_SEEK_CUR; break;
  case 3: type = G_SEEK_END;
  default: type = G_SEEK_SET;
  }

  if(ISNA(where)) return (double) pos;
  
  g_seekable_seek(seekable, where, type, NULL, &err);

  if (err != NULL) {
    error("Failed to seek: %s", err->message);
  }
  return pos;
}

static double R_gstream_seek(Rconnection con, double where, int origin, int rw) {
  return gseekable_seek(G_SEEKABLE(con->private), where, origin, rw);
}

static double R_gio_seek(Rconnection con, double where, int origin, int rw) {
  if (rw == 1) {
    GInputStream *istream =
      g_io_stream_get_input_stream(G_IO_STREAM(con->private));
    return gseekable_seek(G_SEEKABLE(istream), where, origin, rw);
  } else {
    GOutputStream *ostream =
      g_io_stream_get_output_stream(G_IO_STREAM(con->private));
    return gseekable_seek(G_SEEKABLE(ostream), where, origin, rw);
  }
}

static void gseekable_truncate(GSeekable *seekable) {
  GError *err = NULL;
  
  g_seekable_truncate(seekable, 0, NULL, &err);
  
  if (err != NULL) {
    error("Failed to truncate GOutputStream: %s", err->message);
  }
}

static void R_goutput_truncate(Rconnection con) {
  gseekable_truncate(G_SEEKABLE(con->private));
}

static void R_gio_truncate(Rconnection con) {
  GOutputStream *ostream =
    g_io_stream_get_output_stream(G_IO_STREAM(con->private));
  gseekable_truncate(G_SEEKABLE(ostream));
}

static int goutput_fflush(GOutputStream *ostream) {
  GError *err = NULL;
  
  gboolean success = g_output_stream_flush(ostream, NULL, &err);

  if (err != NULL) {
    error("Failed to flush GOutputStream: %s", err->message);
  }
  return !success;
}

static int R_goutput_fflush(Rconnection con) {
  return goutput_fflush(G_OUTPUT_STREAM(con->private));
}

static int R_gio_fflush(Rconnection con) {
  return goutput_fflush(g_io_stream_get_output_stream(G_IO_STREAM(con->private)));
}

static size_t goutput_write(GOutputStream *ostream, const void *ptr,
                            size_t size, size_t nitems, Rboolean blocking) {
  GError *err = NULL;
  gsize numout;
  
  if (blocking) {
    g_output_stream_write_all(ostream, ptr, size * nitems, &numout, NULL, &err);
  } else {
    numout = g_output_stream_write(ostream, ptr, size * nitems, NULL, &err);
  }
  
  if (err != NULL) {
    error("Failed to write to GOutputStream: %s", err->message);
  }
  
  return numout / size;  
}

static size_t R_goutput_write(const void *ptr, size_t size, size_t nitems,
                              Rconnection con) {
  return goutput_write(G_OUTPUT_STREAM(con->private), ptr, size, nitems,
                       con->blocking);
}

static size_t R_gio_write(const void *ptr, size_t size, size_t nitems,
                          Rconnection con) {
  return goutput_write(g_io_stream_get_output_stream(G_IO_STREAM(con->private)),
                       ptr, size, nitems, con->blocking);
}

static void init_gstream(Rconnection con, GObject *stream, gboolean binary,
                         gboolean blocking) {
  con->private = g_object_ref(stream);
  con->canseek = G_IS_SEEKABLE(stream) &&
    g_seekable_can_seek(G_SEEKABLE(stream));
  if (con->canseek) {
    con->seek = R_gstream_seek;
  }
  con->canwrite = G_IS_OUTPUT_STREAM(stream) || G_IS_IO_STREAM(stream);
  con->canread = G_IS_INPUT_STREAM(stream) || G_IS_IO_STREAM(stream);
  con->text = !binary;
  con->blocking = blocking;
  con->destroy = R_gstream_destroy;  
}

SEXP R_giocon_GInputStream(SEXP s_istream, SEXP s_binary, SEXP s_blocking) {
  GInputStream *istream = G_INPUT_STREAM(getPtrValue(s_istream));
  Rboolean binary = asLogical(s_binary);
  const char *mode = binary ? "rb" : "rt"; // only for the user?
  gboolean blocking = asLogical(s_blocking);
  Rconnection con;
  const char *desc = "<GInputStream>";
  
  if (G_IS_FILE_INPUT_STREAM(istream)) {
    desc = getFilenameForGInputStream(G_FILE_INPUT_STREAM(istream));
  }
  
  SEXP rc = R_new_custom_connection(desc, mode, "GInputStreamConnection", &con);

  init_gstream(con, G_OBJECT(istream), binary, blocking);
  con->isopen = !g_input_stream_is_closed(istream);
  con->close = R_ginput_close;
  con->read = R_ginput_read;
  con->fgetc_internal = R_ginput_fgetc_internal;

  return rc;
}

SEXP R_giocon_GOutputStream(SEXP s_ostream, SEXP s_binary, SEXP s_blocking) {
  GOutputStream *ostream = G_OUTPUT_STREAM(getPtrValue(s_ostream));
  Rboolean binary = asLogical(s_binary);
  const char *mode = binary ? "ab" : "at"; // only for the user?
  gboolean blocking = asLogical(s_blocking);
  Rconnection con;
  const char *desc = "<GOutputStream>";
  
  if (G_IS_FILE_OUTPUT_STREAM(ostream)) {
    desc = getFilenameForGOutputStream(G_FILE_OUTPUT_STREAM(ostream));
  }
  
  SEXP rc = R_new_custom_connection(desc, mode, "GOutputStreamConnection", &con);

  init_gstream(con, G_OBJECT(ostream), binary, blocking);
  con->isopen = !g_output_stream_is_closed(ostream);
  con->close = R_goutput_close;
  if (G_IS_SEEKABLE(ostream) && g_seekable_can_truncate(G_SEEKABLE(ostream))) {
    con->truncate = R_goutput_truncate;
  }
  con->fflush = R_goutput_fflush;
  con->write = R_goutput_write;
  
  return rc;  
}

SEXP R_giocon_GIOStream(SEXP s_iostream, SEXP s_binary, SEXP s_blocking) {
  GIOStream *iostream = G_IO_STREAM(getPtrValue(s_iostream));
  Rboolean binary = asLogical(s_binary);
  const char *mode = binary ? "a+b" : "a+"; // only for the user?
  gboolean blocking = asLogical(s_blocking);
  Rconnection con;
  const char *desc = "<GIOStream>";
  
  if (G_IS_FILE_IO_STREAM(iostream)) {
    desc = getFilenameForGIOStream(G_FILE_IO_STREAM(iostream));
  }
  
  SEXP rc = R_new_custom_connection(desc, mode, "GIOStreamConnection", &con);

  init_gstream(con, G_OBJECT(iostream), binary, blocking);
  con->isopen = !g_io_stream_is_closed(iostream);
  con->close = R_gio_close;
  if (con->canseek) {
    con->seek = R_gio_seek;
  }
  con->read = R_gio_read;
  con->fgetc_internal = R_gio_fgetc_internal;
  if (G_IS_SEEKABLE(iostream) && g_seekable_can_truncate(G_SEEKABLE(iostream))) {
    con->truncate = R_gio_truncate;
  }
  con->fflush = R_gio_fflush;
  con->write = R_gio_write;
  
  return rc;
}
