Here are some commands that are useful for debugging.


# Pitch
setNested AP,state,default,pitch-goal,-90
setNested AP,state,default,pitch-goal,-30
setNested AP,state,default,pitch-goal,-15
setNested AP,state,default,pitch-goal,0
setNested AP,state,default,pitch-goal,5
setNested AP,state,default,pitch-goal,15
setNested AP,state,default,pitch-goal,20
setNested AP,state,default,pitch-goal,30
setNested AP,state,default,pitch-goal,50
setNested AP,state,default,pitch-goal,70

# Track
## Correct values
setNested AP,state,default,track-goal,0
setNested AP,state,default,track-goal,10
setNested AP,state,default,track-goal,30
setNested AP,state,default,track-goal,40
setNested AP,state,default,track-goal,60
setNested AP,state,default,track-goal,80
setNested AP,state,default,track-goal,117
setNested AP,state,default,track-goal,118
setNested AP,state,default,track-goal,119
setNested AP,state,default,track-goal,129
setNested AP,state,default,track-goal,149
setNested AP,state,default,track-goal,179
setNested AP,state,default,track-goal,300
setNested AP,state,default,track-goal,350

## This one is wrong. It needs to be 0-360
setNested AP,state,default,track-goal,-149

# Roll
setNested AP,state,default,roll-goal,0
setNested AP,state,default,roll-goal,30
setNested AP,state,default,roll-goal,-30


# Altitude
setNested AP,state,default,altitude-goal,0
setNested AP,state,default,altitude-goal,300
setNested AP,state,default,altitude-goal,600
setNested AP,state,default,altitude-goal,1000
setNested AP,state,default,altitude-goal,2000
setNested AP,state,default,altitude-goal,3000
setNested AP,state,default,altitude-goal,4000
setNested AP,state,default,altitude-goal,6000
setNested AP,state,default,altitude-goal,9000
setNested AP,state,default,altitude-goal,12000
setNested AP,state,default,altitude-goal,15000


# Debugging
debug 0,~!AP,state,default,altitude-deviance!~
debug 0,~!AP,stateRules,genericPlane,sustain,altitude,input,center!~
debug 0,~!AP,state,default,throttle-req!~


# Resume flight
setAPState default,sustain