# osc-controller

Will be based on grig.controller but also have a dummy server for testing



IDs are GUIDs

Per each connection:

### Capabilities:

Each defaults to false on the controller side and can be toggled with boolean messages

| address                      | value   |
| ---------------------------- | ------- |
| /capabilities/track/volume   | boolean |
| /capabilities/track/pan      | boolean |
| /capabilities/track/solo     | boolean |
| ...etc                       | boolean |
| /capabilities/tracks/add     | boolean |


### Updating values:

Sent either direction between DAW controller and remote controller:

| address                      | value   | range         |
| ---------------------------- | ------- | ------------- |
| /track/[ID]/volume           | float   |               |
| /track/[ID]/pan              | float   | -1.0 to 1.0   |
| /track/[ID]/solo             | boolean |               |
| /track/[ID]/delete           |         |               |
| /track/[ID]/order            | integer |               |
| /track/[ID]/color            | color   |               |

Remote Control Actions:

Sent from remote controller to change state:

| address                      | value   | range         |
| ---------------------------- | ------- | ------------- |
| /tracks/add                  |         |               |
| /scenes/add                  |         |               |

### Registering listeners:

The controller has to know which servers to send updates to. Register with a two-part message. This probably needs to be more fine-tuned to keep traffic down.

| address                      | value                 | range         |
| ---------------------------- | --------------------- | ------------- |
| /listen/track/[ID]           | string, integer       | host, port    |
| ..etc                        |                       |               |
