Oracle 12c Enterprise Edition
=============================

| This is a fork from `jaspeen/oracle-11g <https://github.com/robertBrem/oracle-12c>`_ adapted for Oracle 12c Enterprise Edition. I've just adapted the repository from jaspeen for the new version of Oracle 12c. The hard work was all made by jaspeen.  
| If you do not need the Enterprise Edition look for a Oracle XE image. There are a lot XE images that are easier to use because of the Oracle license agreement.  
  
| **This image is for development use only**  
| Have a look at the Oracle license agreement for more information about the allowed usage of the Enterprise Edition.  
   
Usage
+++++

Download the installation file
------------------------------
Because of the Oracle license agreement you have to download the Oracle installation file by yourself. You can find this files `here <http://www.oracle.com/technetwork/database/in-memory/downloads/index.html>`_. Then you have to unzip the files in a installation folder of your choice.  
  
Start the image
---------------
Now you can start the image with the following command:
    docker run --privileged --name oracle12c-startup -p 1521:1521 -v <install_folder>:/install robertbrem/oracle-12c
  
Save the installed state
------------------------
The image will install the database on the first run. To speed up the following starts you can do a commit of the container after the installation with the following command:
  docker commit oracle12c-startup oracle12c
   
Insert a dump
-------------
Optinally you can insert a dump. This can be achieved with the following command:
  docker run --privileged --name oracle12c -p 1521:1521 -v <local_dpdump>:/opt/oracle/dpdump jaspeen/oracle-12c
Now you have to execute the import statement:
  docker exec -it oracle11g impdp ..

Information about the image
+++++++++++++++++++++++++++
The database is located in **/opt/oracle** folder.  
  
The operating system users and theire passwords are:
- root/install
- oracle/install
  
The database users and theire passwords are:
- SYS/oracle
