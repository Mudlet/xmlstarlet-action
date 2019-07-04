# xmlstarlet GitHub Action

The purpose of this GitHub action is to run xmlstarlet on arbitrary files during an action.

Use the GitHub action in the following way:

```
action "xmlstarlet" {
  uses = "Mudlet/xmlstarlet-action@master"
  args = "ed -P -L -d src/mudlet.ts //@line"
}
```

The `args` field is used as arguments and options to the xmlstarlet command.

