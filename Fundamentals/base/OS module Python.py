#!/usr/bin/env python
# coding: utf-8

import os, sys


#os.listdir("C:\sauvegarde Disk D\Didier")
os.path.split("C:\sauvegarde Disk D\Didier")

# Get Current Working Directory
os.getcwd()

# Create a Physical Directory
os.mkdir("C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\MyPythonProject")

# By default, if you don't specify the whole path in the mkdir() function, it will create the specified directory in 
# the current working directory or drive. The following will create MyPythonProject in the C:\Python37 directory.
os.getcwd()
os.mkdir("MyPythonProject")

# The os.makedirs() function will create all the intermediate folders in a path if they don’t already exist. 
# Basically this means that you can created a path that has nested folders in it. I find myself doing this a lot 
# when I create a log file that is in a dated folder structure, like Year/Month/Day. Let’s look at an example:
path = "C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\MyPythonProject\Dossier1\Dossier2"
os.makedirs(path)

os.getcwd()

# Change Working Directory

os.chdir("C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\MyPythonProject") # changing current workign directory
os.getcwd()

os.rmdir("C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\MyPythonProject\Dossier1")

# Change CWD to Parent
os.chdir("C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\MyPythonProject")
os.getcwd()
os.chdir("..")
os.getcwd()

# Remove file in your current directory
os.remove("test.txt")

# Remove Directory 1
os.rmdir("C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\MyPythonProject")

# Remove Directory 2
os.getcwd()

os.rmdir("C:\\MyPythonProject")

os.chdir("..")
os.rmdir("MyPythonProject")


# rename file current directory
os.rename("test.txt", "pytest.txt")

# rename file using path
fileDir = "C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\Testexcel.xlsx"
os.rename(fileDir,'TestexcelTESTNOM.xlsx')


# Python method renames() is recursive directory or file renaming function. It does the same functioning as os.rename(),
# but it also moves a file to a directory, or a whole tree of directories, that do not exist.
# syntax: os.renames(old, new)

+# !/usr/bin/python


print ("Current directory is: %s" %os.getcwd())

# listing directories
print ("The dir is: %s"%os.listdir(os.getcwd()))

# renaming file "aa1.txt"
os.renames('TestexcelTESTNOM.xlsx','NEWTESTNOM.xlsx')

print ("Successfully renamed.")

# listing directories after renaming and moving "aa1.txt"
print ("The dir is: %s" %os.listdir(os.getcwd()))


# <span style='color:blue'> <b>4. List Directory content</b> </span> <br>

# List Directories
os.listdir("C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank")

# List Directories of CWD (Current Working Directory)
# If we don't specify any directory, then list of files and directories in the current working directory will be returned.

os.listdir()


# https://python101.pythonlibrary.org/chapter16_os.html
# os.name

# os.environ

# <span style='color:blue'> <b>5. os.startfile</b> </span> <br>
# 
# The os.startfile() method allows us to “start” a file with its associated program. In other words, we can open a file with it’s associated program, just like when you double-click a PDF and it opens in Adobe Reader. Let’s give it a try!
# 

os.startfile(r'C:\Users\mike\Documents\labels.pdf')


# <span style='color:blue'> <b>6. os.walk()</b> </span> <br>  
# 
# The os.walk() method gives us a way to iterate over a root level path. What this means is that we can pass a path to this function and get access to all its sub-directories and files. Let’s use one of the Python folders that we have handy to test this function with. We’ll use: C:\Python27\Tools

path = "C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank"
for root, dirs, files in os.walk(path):
    print(root)

# If you want, you can also loop over dirs and files too. Here’s one way to do it:
for root, dirs, files in os.walk(path):
    print(root)
    for _dir in dirs:
        print(_dir)
    for _file in files:
        print(_file)
# This piece of code will print a lot of stuff out, so I won’t be showing its output here, but feel free to give it a try. 
# Now we’re ready to learn about working with paths!


# <span style='color:blue'> <b>7. os.path</b> </span> <br>   
# 
# The os.path sub-module of the os module has lots of great functionality built into it. We’ll be looking at the following functions:
# 
# basename
# dirname
# exists
# isdir and isfile
# join
# split
# There are lots of other functions in this sub-module. You are welcome to go read about them in the Python documentation, section 10.1.

# The basename function will return just the filename of a path. Here is an example:


# I have found this useful whenever I need to use a filename for naming some related file, such as a log file. 
# This happens a lot when I’m processing a data file.
os.path.basename('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\16_Basic Statistics.ipynb')


# <b>&emsp; &emsp; b. os.path.dirname <b/><br>
#     
# The dirname function will return just the directory portion of the path. It’s easier to understand if we take a 
# look at some code:

# In this example, we just get the directory path back. This is also useful when you want to store other files 
# next to the file you’re processing, like the aforementioned log file.

os.path.dirname('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\16_Basic Statistics.ipynb')


# <b>&emsp; &emsp; c. os.path.exists <b/><br>
#     
# The exists function will tell you if a path exists or not. All you have to do is pass it a path. Let’s take a look:

os.path.exists('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\16_Basic Statistics.ipynb')

os.path.exists('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\166_Basic Statistics.ipynb')


# In the first example, we pass the exists function a real path and it returns True, which means that the path exists. In the second example, we passed it a bad path and it told us that the path did not exist by returning False.

# <b>&emsp; &emsp; d. os.path.isdir / os.path.isfile <b/><br>
#     
# The isdir and isfile methods are closely related to the exists method in that they also test for existence. However, isdir only checks if the path is a directory and isfile only checks if the path is a file. If you want to check if a path exists regardless of whether it is a file or a directory, then you’ll want to use the exists method. Anyway, let’s study some examples:

os.path.isfile('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\16_Basic Statistics.ipynb')

os.path.isdir('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank')

os.path.isdir('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\166_Basic Statistics.ipynb')


os.path.isfile('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\166_Basic Statistics.ipynb')


# Take a moment to study this set of examples. In the first one we pass a path to a file and check if the path is really a file. Then the second example checks the same path to see if it’s a directory. You can see for yourself how that turned out. Then in the last two examples, we switched things up a bit by passing a path to a directory to the same two functions. These examples demonstrate how these two functions work.

# e. os.path.join 
# The join method give you the ability to join one or more path components together using the appropriate separator. For example, on Windows, the separator is the backslash, but on Linux, the separator is the forward slash. Here’s how it works:

os.path.join('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank', '16_Basic Statistics.ipynb')


# In this example, we joined a directory path and a file path together to get a fully qualified path. Note however that the join method does not check if the result actually exists!

# f. os.path.split 

# The split method will split a path into a tuple that contains the directory and the file. Let’s take a look:
os.path.split('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\16_Basic Statistics.ipynb')



# This example shows what happens when we path in a path with a file. Let’s see what happens if the path doesn’t 
# have a filename on the end:
os.path.split('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank')
# As you can see, it took the path and split it in such a way that the last sub-folder became the second element of 
# the tuple with the rest of the path in the first element.



#  For our final example, I thought you might like to see a commmon use case of the split:
dirname, fname = os.path.split('C:\\Users\\Utilisateur\\anaconda3\\Library\\Didier\\Bank\\16_Basic Statistics.ipynb')
print ("le chemin du dossier", dirname," et le fichier", fname)

# This shows how to do multiple assignment. When you split the path, it returns a two-element tuple. Since we have 
# two variables on the left, the first element of the tuple is assigned to the first variable and the second element 
# to the second variable.



