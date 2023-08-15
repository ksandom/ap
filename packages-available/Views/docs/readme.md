# Views

A quick a consistent way of changing views.

Excellent for getting consistent screen recordings.

## Configuring views for different aircraft

The view numbers aren't necessarily the same for different aircraft. So they can be set like this:

```
    # Views
    setNested ~!Me,stuff!~,views,inside,0
    setNested ~!Me,stuff!~,views,outside,1
    setNested ~!Me,stuff!~,views,passenger,17
```

These are set in `Aircraft/planeProfile.achel` where `planeProfile.achel` is the name of the profile for the plane that you want to configure.

## Adding a new view

1. Add the default view number as described above to `Aircraft/plane-base.achel` and test it with the b777-200ER.
1. Add it to the profiles of any other aircraft that you can test.
1. Add convenience macro like `inside.achel` or `passenger.achel`.

`inside.achel` looks like this:

```
# Use the inside view. --inside=instanceName ~

parameters {"instanceName":"default"}

setView ~!Local,instanceName!~,inside,0,-12
```

while `passenger.achel` looks like this:

```
# Use the passenger view. --passenger=instanceName ~ views

parameters {"instanceName":"default"}

setView ~!Local,instanceName!~,passenger
```

* In both cases, they only take a single parameters `instanceName`.
* When calling `setView`:
    * They must:
        * Specify `~!Local,instanceName!~`.
        * Specify which view by name. This directly matches with what we set in the aircraft profile above.
    * They optionally:
        * Specify the `headingOffset`, which is `0` in `inside.achel`. If set to nothing, which is either (`,,`), or left out like in `passenger.achel`, the value will not be specified, and the aircraft's default will be left intact.
        * Specify the `pitchOffset`, which is `-12` in `inside.achel`. If set to nothing, which is either (`,`), or left out like in `passenger.achel`, the value will not be specified, and the aircraft's default will be left intact.
