echo  "build normal cvtest.out"
g++ cvtest.cpp -std=c++11 -L /usr/local/lib/ -lopencv_stitching -lopencv_objdetect -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core -lopencv_xfeatures2d -o cvtest.out

echo "build tcmalloc cvup.out"
g++ cvtest.cpp -std=c++11 -L /usr/local/lib/ -lopencv_stitching -lopencv_objdetect -lopencv_superres -lopencv_videostab -lopencv_calib3d -lopencv_features2d -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc -lopencv_flann -lopencv_core -lopencv_xfeatures2d -L . -Wl,-rpath . -ltcmalloc_minimal -o cvup.out

