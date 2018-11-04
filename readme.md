# CPU stress tool
-----------------

## What does this container image do;
This container image contains a tool to generates CPU load... duh :-)

## Why this container image?;
When doing load testing on for example new clusters, I typical use a load generator to generate some "fake" load, however I couldn't find a simple container image for this job. So thats why I created this simple image to do the job.

## How to run the container and with that the CPU stress tool;
Well running the container is not that hard if you have experience with Docker, running the CPU stress test tool itself is very straight forward.
The switch option --cpu allows you to control how many cores will be used (in the example here below we use 4 cores). With the --timeout option it's possible to control how long the stress tool will run.

'''bash
docker run -it --name cpustress --rm containerstack/cpustress --cpu 4 --timeout 30s --metrics-brief
'''

## Whoops I have done someting wrong and want to stop the container right now;
To stop the CPU stress test container directly just run the following command.

'''bash
docker stop cpustress
'''
