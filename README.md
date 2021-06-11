## IDs are GUIDs

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