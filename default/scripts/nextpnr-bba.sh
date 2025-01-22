cd nextpnr/bba
cmake -DCMAKE_BUILD_TYPE=Release -DBoost_USE_STATIC_LIBS=ON -DCMAKE_CXX_STANDARD=14 
make -j${NPROC}
sed -i 's,'${BUILD_DIR}','${OUTPUT_DIR}',g' bba-export.cmake
mkdir -p ${OUTPUT_DIR}/nextpnr/bba
cp bbasm ${OUTPUT_DIR}/nextpnr/bba/.
cp bba-export.cmake ${OUTPUT_DIR}/nextpnr/bba/.
