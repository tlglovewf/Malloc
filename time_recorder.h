#include <chrono>
#include <iostream>

//计时
class Time_Interval
{
public:
    /*  开始
     */
    inline void start()
    {
        _t = std::chrono::high_resolution_clock::now();
    }
    /*  结束
     */
    inline float end()
    {
        float v = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::high_resolution_clock::now() - _t).count() / 1000.0f;
        return v;
    }
    /* 输出
	 */
    inline void prompt(const std::string &str,bool isreset = false)
    {
        std::cout << str.c_str() << ":" << end() << "s" << std::endl;
        if(isreset)
            start();
    }

protected:
    std::chrono::system_clock::time_point _t;
};
