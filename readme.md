# CPU stress tool
=================

## What does this tool do;
Well this tool generates CPU load... duh :-)


## How to run the container and with that the CPU stress tool;
Well running the container is not that hard if you have exeperience with Docker, running the CPU stress test tool itself is very straight forward.
The switch option --cpu allows you to control how many cores will be used (in the example here below we use 4 cores). With the --timeout option it's possible to control how long the stress tool will run.

'''bash
docker run -it --name cpustress --rm containerstack/cpustress --cpu 4 --timeout 30s --metrics-brief
'''

## Whoops I have done someting wrong and want to stop the container right now;
To stop the CPU stress test container directly just run the following command.

'''bash
docker stop cpustress
'''
