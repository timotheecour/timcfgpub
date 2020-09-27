set -u

d_version(){
  echo "v0.1"
}

d_install_opencv(){
  cd ~/git_clone/opencv/build/
  time cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_C_EXAMPLES=ON \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D OPENCV_GENERATE_PKGCONFIG=ON \
      -D OPENCV_EXTRA_MODULES_PATH=~/git_clone/opencv_contrib/modules \
      -D BUILD_EXAMPLES=ON ..
}
