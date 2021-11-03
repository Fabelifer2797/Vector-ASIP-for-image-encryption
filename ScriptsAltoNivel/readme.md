## Install dependencies

### Create a virtual environment
First, let's create a virtual environment, this way once you remove the project you also remove the dependencies.

For this step, it is necessary to have python 3.9 installed, since the project is developed in and for that specific python version.

*Using different versions might cause the applicaion to crash, to not to work, or produce unexpected behaviors.*

Run the following commands in the root folder of the project

**Windows**

    py -m venv env
    .\env\Scripts\activate
    
    If using windows, you can also use the cmd to execute the file **env.bat**

    where python

The previous command should display the locations where python is installed, the first one being the virtual environment just activated.

Once you complete the execution of this project, you can deactivate the virtual environment by typing:

    deactivate

### Install dependencies

If env.bat was not used:

To install dependencies, please use the following command on the root folder of the project:

    pip install -r requirements.txt

The previous command is going to install the requirements listed in the file *requirement.txt*



### Execute the program
Once the virtual environment is all set, it is just necessary to execute the program.