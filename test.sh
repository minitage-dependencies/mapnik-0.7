#!/usr/bin/env bash


# Copyright (C) 2010, Makina Corpus <freesoftware@makina-corpus.com>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. Neither the name of the <ORGANIZATION> nor the names of its
#    contributors may be used to endorse or promote products derived from
#    this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

w="$(dirname $0)"
PYTHON=${w}/../../bin/python

BOOST=${w}/../boost-1/parts/part
FREETYPE=${w}/../freetype-2.3/parts/part
GDAL=${w}/../gdal-1.7/parts/part
ICU=${w}/../icu-4.4/parts/part
TIFF=${w}/../libtiff-3/parts/part
JPEG=${w}/../libjpeg/parts/part
LIBXML2=${w}/../libxml2-2.6/parts/part
PROJ=${w}/../proj-4.7/parts/part
PGSQL=${w}/../postgresql-8.4/parts/part
PNG=${w}/../libpng-1.2/parts/part
ZLIB=${w}/../zlib-1.2/parts/part
ICU=${w}/../icu-4.5/parts/part
INCS="${BOOST}/include ${FREETYPE}/include ${GDAL}/include ${ICU}/include ${TIFF}/include ${JPEG}/include ${LIBXML2}/include ${PROJ}/include ${PGSQL}/include ${PNG}/include ${ZLIB}/include ${ICU}/include"
LIBS="${BOOST}/lib  ${FREETYPE}/lib ${GDAL}/lib ${ICU}/lib ${TIFF}/lib ${JPEG}/lib ${LIBXML2}/lib ${PROJ}/lib ${PGSQL}/lib ${PNG}/lib ${ZLIB}/lib ${ICU}/lib"

$PYTHON   scons/scons.py  \
    PYTHON="$PYTHON" \
    THREADING="single" \
    CAIRO="True" \
    BOOST_INCLUDES="$INCS" \
    BOOST_LIBS="$LIBS" \
    FREETYPE_CONFIG="$FREETYPE/bin/freetype-config" \
    GDAL_INCLUDES="$INCS" \
    GDAL_LIBS="$LIBS" \
    ICU_INCLUDES="$INCS" \
    ICU_LIBS="$LIBS" \
    TIFF_INCLUDES="$INCS" \
    TIFF_LIBS="$LIBS" \
    JPEG_INCLUDES="$INCS" \
    JPEG_LIBS="$LIBS" \
    XMLPARSER="libxml2" \
    XML2_CONFIG="$LIBXML2/bin/xml2-config" \
    PROJ_INCLUDES="$INCS" \
    PROJ_LIBS="$LIBS" \
    PGSQL_INCLUDES="$INCS" \
    PGSQL_LIBS="$LIBS" \
    PNG_INCLUDES="$INCS"
    PNG_LIBS="$LIBS" \
    ICU_INCLUDES="$INCS" \
    ICU_LIBS="$LIBS" \

# vim:set et sts=4 ts=4 tw=0:
