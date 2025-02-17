# ### --------------------------------------------------------
# # # ------>>>>Environments and why are they 
# needed? Conda environments 
# allow multiple incompatible 
# versions of the same (
# software) package to coexist 
# on your system. An 
# environment is simply a file 
# path containing a collection 
# of mutually compatible 
# packages. By isolating 
# distinct versions of a given 
# package (and their 
# dependencies) in distinct 
# environments, those versions 
# are all available to work on 
# particular projects or tasks. 

# There are a large number of 
# reasons why it is best 
# practice to use environments, 
# whether as a data scientist, 
# software developer, or domain 
# specialist. Without the 
# concept of environments, 
# users essentially rely on and 
# are restricted to whichever 
# particular package versions 
# are installed globally (or in 
# their own user accounts) on a 
# particular machine. Even when 
# one user moves scripts 
# between machines (or shares 
# them with a colleague), the 
# configuration is often 
# inconsistent in ways that 
# interfere with seamless 
# functionality. Conda 
# environments solve both these 
# problems. You can easily 
# maintain and switch between 
# as many environments as you 
# like, and each one has 
# exactly the collection of 
# packages that you want. 

# For example, you may develop 
# a project comprising scripts, 
# notebooks, libraries, or 
# other resources that depend 
# on a particular collection of 
# package versions. You later 
# want to be able to switch 
# flexibly to newer versions of 
# those packages and to ensure 
# the project continues to 
# function properly before 
# switching wholly. Or 
# likewise, you may want to 
# share code with colleagues 
# who are required to use 
# certain package versions. In 
# this context, an environment 
# is a way of documenting a 
# known set of packages that 
# correctly support your 
# project. 

# Which statement is true of 
# Conda environments?
# R/Conda environments allow for flexible version management of packages.




# ### --------------------------------------------------------
# # # ------>>>>Which environment am I using?
# When using conda, you are 
# always in some environment, 
# but it may be the default (
# called the base or root 
# environment). Your current 
# environment has a name and 
# contains a collection of 
# packages currently associated 
# with that environment. There 
# are a few ways to determine 
# the current environment. 

# Most obviously, at a terminal 
# prompt, the name of the 
# current environment is 
# usually prepended to the rest 
# of your prompt in 
# parentheses. Alternatively, 
# the subcommand conda env list 
# displays a list of all 
# environments on your current 
# system; the currently 
# activated one is marked with 
# an asterisk in the middle 
# column. The subcommands of 
# conda env (sometimes with 
# suitable switches) encompass 
# most of your needs for 
# working with environments. 

# The output of conda env list 
# shows that each environment 
# is associated with a 
# particular directory. This is 
# not the same as your current 
# working directory for a given 
# project; being "in" an 
# environment is completely 
# independent of the directory 
# you are working in. Indeed, 
# you often wish to preserve a 
# certain Conda environment and 
# edit resources across 
# multiple project directories (
# all of which rely on the same 
# environment). The environment 
# directory displayed by conda 
# env list is simply the top-
# level file path in which all 
# resources associated with 
# that environment are stored; 
# you need never manipulate 
# those environment directories 
# directly (other than via the 
# conda command); indeed, it is 
# much safer to leave those 
# directories alone! 

# For example, here is output 
# you might see in a particular 
# terminal: 

# (test-project) $ conda env 
# list # conda environments: # 
# base                     
# /home/repl/miniconda 
# py1.0                    
# /home/repl/miniconda/envs/py1.0 
# stats-research           
# /home/repl/miniconda/envs/stats-
# research test-
# project          *  
# /home/repl/miniconda/envs/test-
# project Following the example 
# above, what is the name of 
# the environment you are using 
# in the current session? Even 
# if you determine the answer 
# without running a command, 
# run conda env list to get a 
# feel of using that subcommand.
conda env list
#R/ course-project



# ### --------------------------------------------------------
# # # # ------>>>>What packages are installed 
# in an environment? (I) The 
# command conda list seen 
# previously displays all 
# packages installed in the 
# current environment. You can 
# reduce this list by appending 
# the particular package you 
# want as an option. The 
# package can be specified 
# either as a simple name, or 
# as a regular expression 
# pattern. This still displays 
# the version (and channel) 
# associated with the installed 
# package(s). For example: 

# (test-env) $ conda list 
# 'numpy|pandas' # packages in 
# environment at 
# /home/repl/miniconda/envs/test-
# env: # # 
# Name                    
# Version                   
# Build  Channel 
# numpy                     
# 1.11.3                   
# py35_0 
# pandas                    
# 0.18.1              
# np111py35_0 Without 
# specifying 'numpy|pandas', 
# these same two lines would be 
# printed, simply interspersed 
# with many others for the 
# various other installed 
# packages. Notice that the 
# output displays the filepath 
# associated with the current 
# environment first: in this 
# case, 
# /home/repl/miniconda/envs/test-
# env as test-env is the active 
# environment (as also shown at 
# the prompt). 

# Following this example, what 
# versions of numpy and pandas 
# are installed in the current (
# base/root) environment?
conda list 'numpy|pandas'
# R/ numpy=1.16.0; pandas=0.22.0
