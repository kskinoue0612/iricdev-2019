#!/bin/bash
topdir=$(pwd)
. ./versions.sh
VTK_MAJOR=$(echo ${VTK_VER} | cut -d '.' -f 1)
VTK_MINOR=$(echo ${VTK_VER} | cut -d '.' -f 2)
echo "CONFIG(debug, debug|release) {"
echo "	# gdal"
echo "	LIBS += -L\"${topdir}/lib/install/gdal-${GDAL_VER}/lib\""
echo ""
echo "	# vtk"
echo "	LIBS += -L\"${topdir}/lib/install/vtk-${VTK_VER}/debug/lib\""
echo ""
echo "	# cgnslib"
echo "	LIBS += -L\"${topdir}/lib/install/cgnslib-${CGNSLIB_VER}/debug/lib\""
echo ""
echo "	# iriclib"
echo "	LIBS += -L\"${topdir}/lib/install/iriclib-${IRICLIB_VER:0:7}/debug/lib\""
echo ""
echo "	# Qwt"
echo "	LIBS += -L\"${topdir}/lib/install/qwt-${QWT_VER}/lib\""
echo ""
echo "	# proj.4 (currently only release is built)"
echo "	LIBS += -L\"${topdir}/lib/install/proj-${PROJ_VER}/release/lib\""
echo ""
echo "	# shapefile"
echo "	LIBS += -L\"${topdir}/lib/install/shapelib-${SHAPELIB_VER}/debug\""
echo ""
echo "	# hdf5"
echo "	LIBS += -L\"${topdir}/lib/install/hdf5-${HDF5_VER}/debug/lib\""
echo ""
echo "	# netcdf"
echo "	LIBS += -L\"${topdir}/lib/install/netcdf-${NETCDF_VER}/debug/lib\""
echo ""
echo "	# geos"
echo "	LIBS += -L\"${topdir}/lib/install/geos-${GEOS_VER}/debug/lib\""
echo ""
echo "	# yaml-cpp"
echo "	LIBS += -L\"${topdir}/lib/install/yaml-cpp-${YAML_CPP_VER}/debug/lib\""
echo ""
echo "	# udunits"
echo "	LIBS += -L\"${topdir}/lib/install/udunits-${UDUNITS_VER}/debug/lib\""
echo "}"
echo "else {"
echo "	# gdal"
echo "	LIBS += -L\"${topdir}/lib/install/gdal-${GDAL_VER}/lib\""
echo ""
echo "	# vtk"
echo "	LIBS += -L\"${topdir}/lib/install/vtk-${VTK_VER}/release/lib\""
echo ""
echo "	# cgnslib"
echo "	LIBS += -L\"${topdir}/lib/install/cgnslib-${CGNSLIB_VER}/release/lib\""
echo ""
echo "	# iriclib"
echo "	LIBS += -L\"${topdir}/lib/install/iriclib-${IRICLIB_VER:0:7}/release/lib\""
echo ""
echo "	# Qwt"
echo "	LIBS += -L\"${topdir}/lib/install/qwt-${QWT_VER}/lib\""
echo ""
echo "	# proj.4"
echo "	LIBS += -L\"${topdir}/lib/install/proj-${PROJ_VER}/release/lib\""
echo ""
echo "	# shapefile"
echo "	LIBS += -L\"${topdir}/lib/install/shapelib-${SHAPELIB_VER}/release\""
echo ""
echo "	# hdf5"
echo "	LIBS += -L\"${topdir}/lib/install/hdf5-${HDF5_VER}/release/lib\""
echo ""
echo "	# netcdf"
echo "	LIBS += -L\"${topdir}/lib/install/netcdf-${NETCDF_VER}/release/lib\""
echo ""
echo "	# geos"
echo "	LIBS += -L\"${topdir}/lib/install/geos-${GEOS_VER}/release/lib\""
echo ""
echo "	# yaml-cpp"
echo "	LIBS += -L\"${topdir}/lib/install/yaml-cpp-${YAML_CPP_VER}/release/lib\""
echo ""
echo "	# udunits"
echo "	LIBS += -L\"${topdir}/lib/install/udunits-${UDUNITS_VER}/release/lib\""
echo "}"
echo ""
echo "INCLUDEPATH += ."
echo ""
echo "# gdal"
echo "INCLUDEPATH +=\"${topdir}/lib/install/gdal-${GDAL_VER}/include\""
echo ""
echo "# vtk"
echo "INCLUDEPATH +=\"${topdir}/lib/install/vtk-${VTK_VER}/debug/include/vtk-${VTK_MAJOR}.${VTK_MINOR}\""
echo ""
echo "# hdf5"
echo "INCLUDEPATH +=\"${topdir}/lib/install/hdf5-${HDF5_VER}/release/include\""
echo ""
echo "# cgnslib"
echo "INCLUDEPATH +=\"${topdir}/lib/install/cgnslib-${CGNSLIB_VER}/debug/include\""
echo ""
echo "# iriclib"
echo "INCLUDEPATH +=\"${topdir}/lib/install/iriclib-${IRICLIB_VER:0:7}/debug/include\""
echo ""
echo "# Qwt"
echo "INCLUDEPATH +=\"${topdir}/lib/install/qwt-${QWT_VER}/include\""
echo ""
echo "# shapelib"
echo "INCLUDEPATH +=\"${topdir}/lib/install/shapelib-${SHAPELIB_VER}/release/include\""
echo ""
echo "# proj.4"
echo "INCLUDEPATH +=\"${topdir}/lib/install/proj-${PROJ_VER}/release/include\""
echo ""
echo "# netcdf"
echo "INCLUDEPATH +=\"${topdir}/lib/install/netcdf-${NETCDF_VER}/release/include\""
echo ""
echo "# geos"
echo "INCLUDEPATH +=\"${topdir}/lib/install/geos-${GEOS_VER}/release/include\""
echo ""
echo "# yaml-cpp"
echo "INCLUDEPATH +=\"${topdir}/lib/install/yaml-cpp-${YAML_CPP_VER}/release/include\""
echo ""
echo "# udunits"
echo "INCLUDEPATH +=\"${topdir}/lib/install/udunits-${UDUNITS_VER}/release/include\""
echo ""
echo "# boost"
echo "INCLUDEPATH +=\"${topdir}/lib/install/boost-${BOOST_VER}\""
echo ""
echo "#internal libs"
echo "INCLUDEPATH +=\"\$\$PWD/libs\""
echo ""
echo "CONFIG += c++11"
echo ""
echo "target.path = /usr/local/iRIC"
echo "INSTALLS += target"
echo ""
echo "VTK_MAJ_MIN=${VTK_MAJOR}.${VTK_MINOR}"
echo ""
