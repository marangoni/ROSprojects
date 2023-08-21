FROM ros:noetic-ros-base-focal

# Prepara o ambiente
#       - instala o nano
#       - Cria uma pasta ~/home/rosprojects
#       - Copia os arquivos da pasta local ROSprojects para a pasta ./home/work_files da imagem
#       - Cria o catkin_ws na imagem

RUN apt-get update && apt-get install -y nano && rm -rf /var/lib/apt/lists/* \
        mkdir ./home/rosprojects 

COPY ROSprojects/ ./home/work_files/

RUN rm -rf /home/work_files/RosTests/catkin_ws/devel \
        rm -rf /home/work_files/RosTests/catkin_ws/build \
        rm -rf /home/work_files/RosTests/catkin_ws/install 
        
RUN  /bin/bash -c 'source /opt/ros/noetic/setup.bash && \
        cd /home/work_files/RosTests/catkin_ws && \
        catkin_make' \
        source devel\setup.bash \
WORKDIR /home/work_files/RosTests/catkin_ws/src
        
        

#RUN cd /home/work_files/RosTests/catkin_ws \
#        rm -rf build \
#       rm -rf devel \
#        rm -rf install \
#        catkin_make \
#        source devel\setup.bash \
#        echo $ROS_PACKAGE_PATH 

        

ENV ROS_PACKAGE_PATH = ./home/work_files




#RUN apt-get update
#RUN mkdir -p /ws/src/hello_world
#COPY . /ws/src/hello_world
#ENV ROS_PACKAGE_PATH=/ws/src/hello_world
#RUN rosdep install -y -r --from-path /ws/src
#RUN source /opt/ros/noetic/setup.bash; \
#        cd /ws/src; \
#        catkin_init_workspace; \
#       cd /ws; \
#       catkin_make
#
#RUN rm -rf /var/lib/apt/lists/*
#CMD ["/ros_entrypoint.sh", \
#        "rosrun", "hello_world", "talker"]       

# install ros package
#RUN apt-get update && apt-get install -y \
#        ros-${ROS_DISTRO}-ros-tutorials && \
#        apt-get clean
#
#RUN apt-get update && apt-get install -y \
#      ros-${ROS_DISTRO}-demo-nodes-cpp \
#      ros-${ROS_DISTRO}-demo-nodes-py && \
#    rm -rf /var/lib/apt/lists/*

# launch ros package
# CMD ["ros", "launch", "demo_nodes_cpp", "talker_listener.launch.py"]


