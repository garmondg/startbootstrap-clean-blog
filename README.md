This is the official GitHub page for OSU Senior Design Team 25 for the 2019-2020 year. For our website, click <a href="https://osusdgpu.github.io/">here.</a>

This GitHub repository serves as a place to store example files, as well as serve as an introduction to the Git coding language. 

<h1>The Contents of this Repository</h1>

<ul>
  <li>HTML code for the website</li>
  <li>Files necessary for tutorials</li>
</ul>

<h1>Introduction to Git</h1>

Git is a software development tool that allows for the tracking of changes to files. It is the base code that GitHub itself runs on. As such, understanding it is important to understanding GitHub as a whole. This section of the ReadMe will serve as a basic tutorial for the Git command line. 

<h2>Step 1: Installing Git</h2>

To start, you will need to download Git. If you have a Windows computer, click <a href=https://git-scm.com/download/win">here</a>. On macOS, open up OSX Terminal and type <code>git --version</code>, and you will be prompted to install it if it was not already. 
  
<h2>Step 2: Using the terminal to create a repository.</h2>

Open up your terminal (Windows Command Prompt on Windows or OS X Terminal on Macintosh). First, type in the word "git", and hit enter, just to make sure it installed correctly. From there, it's time to create the folder to host your repository. Type <code>mkdir folderName</code>, where folderName is the name of your repository. This will create a folder (or, director) with that name. To enter that folder, type <code>cd folderName</code>. 

<h2>Step 3: Creating the ReadMe</h2>

The ReadMe file in a repository contains information about the other files in the repository. It should say what's included in the repository, like is seen in the first section of this file. In order to create a ReadMe for your preexisting directory, like the one you're in now,, type <code>echo "# folderName" >> README.md</code>.
With the ReadMe created, it's time to access Git. Type <code>git init</code> to intiialize Git within this directory. Now, it's always good to know when changes have occued to a file. To do so, type <code>git add README.md</code>. You can do this for any file that you want the history of changes to be saved for. 

<h2>Step 4: Creating a Commit</h2>
A "Commit", in the Git world, is more or less how you save a change to a repository. It is a statement that you are commiting to the changes that you have made. In order to do this for the first time in a directory, type <code>git commit -m "first commit"</code>. 

<h2>Step 5: Creating a GitHub repository</h2>

Now, you'll need to be sure you have a Github account. Once you do, go to <a href="github.com">the GitHub website</a> and choose "Start a project".
From here, you will find yourself entering the basic information for your repository. The name, the owner, whether or not the project is publicly accessible, etc. Once all that is filmed out, click "Create repository".

<h2>Step 6: Exporting a respository to GitHub</h2>

It's finally time to upload this directory to GitHub. From the command terminal, type <code>git remote add origin https://github.com/yourUsername/folderName.git</code>. This code adds a remote named Origin to the address listed in the code. Origin is just a placehoder name, so if you want to use another name you can.
