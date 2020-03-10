# xmlstarlet GitHub Action

The purpose of this GitHub action is to run xmlstarlet on arbitrary files during an action.

Use the GitHub action in the following way:

```
  - name: muffle line shuffling
    uses: Mudlet/xmlstarlet-action@master
    with:
      args: ed -P -L --delete //@line translations/mudlet.ts
```

The `args` field is used as arguments and options to the xmlstarlet command.

