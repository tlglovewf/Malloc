#include <iostream>
#include "../time_recorder.h"
int main(void)
{
  Time_Interval timer;
  timer.start();
  for(int i = 0; i < 1e8;++i)
      int *a = new int(1000);
  timer.prompt("cost");
  return 0;
}
