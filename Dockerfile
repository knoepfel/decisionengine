FROM sl:7
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum -y install yum-plugin-priorities
RUN yum -y clean all
RUN yum -y install https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm
RUN yum -y clean all
RUN yum -y install condor-python
RUN yum -y install python-pandas
RUN yum -y install gcc gcc-c++ libgcc
RUN yum -y install python-pip
RUN yum -y install git
RUN yum -y install python-unittest2
RUN yum -y install python-behave
RUN yum -y install tmux
RUN yum -y install cmake
RUN yum -y install boost
RUN yum -y install boost-devel
RUN yum -y install libevent-devel
RUN yum -y install ncurses-devel
RUN yum -y install ipython
RUN yum -y install python-matplotlib
RUN yum -y install python-pytest
RUN yum -y install pytest
RUN yum -y install graphviz.x86_64
RUN yum -y install rpm-build
RUN yum -y install rpm-build-libs
RUN yum -y install rpm-devel
RUN yum -y install mock
RUN yum -y install python-boto3
RUN yum -y install python-psycopg2
RUN yum -y install python-setuptools
RUN easy_install DBUtils
ENTRYPOINT ["/bin/bash"]