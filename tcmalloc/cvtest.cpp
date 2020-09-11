#include <opencv2/opencv.hpp>
#include <iostream>
#include <opencv2/xfeatures2d.hpp>
#include "../time_recorder.h"
using namespace std;
using namespace cv;

int main()
{
  Time_Interval timer;
  timer.start();
  for(int i = 0; i < 10e6; ++i)
  {
    Mat img = imread("../imgs/1.jpg"); 
    int *test = new int(1000);
  }
  Ptr<xfeatures2d::SIFT> sift = xfeatures2d::SIFT::create(2000);
  std::vector<KeyPoint> kpts;
  sift->detect(img,kpts);
  timer.prompt("cost");
  return 0;
}
