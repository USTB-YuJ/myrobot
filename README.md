# 机器人课程任务-设计简易机械臂并在gazebo仿真  
### 程序结构
robotic_simu.m以及robotic_workspace.m分别实现在MATLAB中测试机械臂结果以及工作空间验证  
src路径下myrobot为定制的moveit控制包，myrobot_description为机械臂的参数描述包
### Environment
Ubuntu 22.04 + ROS2 humble
### Quick Start
```$colcon build```  
```$source install/setup.bash```  
```$ros2 launch myrobot gazebo.launch.py```  
```$ros2 launch myrobot my_moveit_rviz.launch.py```  
