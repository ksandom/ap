# BlackBox

Records everything in AP,state over time for a specified instance.

## Considerations

* Will accumulate memory usage over time. This grows with how much data is collected. Depending on the circumstances, this can be substantial.
* Will need time to process once `recordStop` or `quit` are called. This grows with how much data is collected.

The impact of both of these can be mitigated by:

* Only starting to `record` when you actually need it.
* Use `recordPause` to pause recording during uninteresting times. You can use `record` to get started again.

## Using it

* `record` starts the recording. The default file is /tmp/flight.csv . But you can choose this.
* `recordPause` pauses the recording.
* `recordStop` stops the recording and writes the data to the CSV file. Note that this can take some time, and that the autopilot will be unresponsive during this time.
* `recordClear` removes everything that has been recorded to memory so far.
* `mark` sets `message` in AP,state to the value that you specify for a single iteration. This is useful to help you find important moments in the large amount of data that is created. It also creates a matching `keepPoint` so that this message is marked in the history.kml if you are using that.

Use `ap --help=--record` to get help about how to use each of these commands.

## Things that happen automatically.

* `recordDump` (writing the CSV) gets called when you run `recordStop`, or `quit` is run.
* `recordState` gets called regularly to capture the current state to memory.
* `mark` calls `keepPoint` so that moments match between the CSV and KML files.
* Waypoints get `mark`ed when they are reached.
