#include <libexif/exif-entry.h>

extern "C" void exif_entry_gps_initialize(ExifEntry * e, ExifTag tag) {
    exif_entry_initialize(e,tag);
}
