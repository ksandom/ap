# ap - Autopilot

ap is the first program/project to really push the boundaries of the new functionality coming to Achel aimed at robotics. It's a product of my sabbatical and forms the foundations of projects I have planned for the next several years.

*This is pre-alpha software. And not yet intented for mainstream use. But you should be able to have some fun with it :)*

## Installing it

    export extraSrc="https://github.com/ksandom/ap.git"; curl https://raw.github.com/ksandom/achel/master/supplimentary/misc/webInstall | bash

For now the autopilot is fairly tightly linked to real world runways. Therefore, I recommend updating the runways before beginning.

    ap -v --updateRunways

## Running it

You will want flight gear to be running with the --telnet option opening port 12345. You can do this with

    manageAchel startFG

Then start the auto pilot

    manageAchel startAP

This will start a *very* basic text interface. Type a command, press enter and more useful output will happen.

## Doing stuff

Here are some useful things you can do by typing

* takeOff - An automated take off
* lmap - If you have a leap motion and the achelLMTracker installed, you can control the plane using a leap motion.


