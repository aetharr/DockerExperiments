# DockerExperiments
Just a home for my collection of Dockerfiles and the like while I experiment with this crazy tool.

## General Pointlessness, But who can say honestly?
In this collection, the majority of the content will likely be quite pointless. But I figured that if I keep it on my computer, then one day I'll end up losing it and that'll be the end of it.

Instead, I plan to leave it on here as a sort of dumping ground, that if someone else just-so-happens to find useful, then that'd be a bonus.

There will probably be a focus on Raspberry Pi compatibility as that's the platform im trying to target with most of these as they're cheap to buy, cheap to run, nippy little machines.

## List of Scripts
### Raspberry Pi
*  Wordpress (with MYSQL and Apache atop an Alpine linux base)

## What the heck is Docker anyway?
I should think that if you found this page by happenstance, that would be because you already know what Docker is.

However, for those who don't:

Docker is a container platform designed to allow you to run your projects on potentially any machine that can the docker engine itself (Within reason!)
Docker applications are called Containers, and are completely sandboxed from each other, giving the illusion of separate VMs. These containers must each be configured appropriately for whatever application is installed in them.

For example, if you have an app which uses NodeJS, MySQL and Python. It is possible that the destination server does not have these packages installed, which would in turn break your application.
When you ship your docker container, you ship the code itself, and all necessary packages to get the application running in its own environment.

Personally, I don't like it when applications install files all over my machine, so I love the idea of being able to run applications in a sandboxed environment and remove them without damaging my own machine's filesystem. In addition to being able to run multiple things without the need to provision a bunch of VMs.

#Find out about Docker
Check out their website for more information, it's pretty helpful: https://www.docker.com/ and their documentation is definitely handy: https://docs.docker.com/
Personally, the Youtube videos are what helped me get a vague grasp of it.