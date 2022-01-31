# xmlstarlet GitHub Action

The purpose of this GitHub action is to run xmlstarlet on arbitrary files during an action, allowing you to add / delete / edit XML files programatically. For examples, see [source1](https://www.ibm.com/developerworks/library/x-starlet/index.html), [source2](https://en.wikipedia.org/wiki/XMLStarlet).

Use the GitHub action in the following way:

```
    uses: Mudlet/xmlstarlet-action@master
    with:
      args: [args to xmlstarlet here]
```      
The `args` field is used as arguments and options to the xmlstarlet command.

Example:
```
  - name: delete all @line attributes
    uses: Mudlet/xmlstarlet-action@master
    with:
      args: ed -P -L --delete //@line translations/mudlet.ts
```

In case you wish to use the result of xmlstarlet command in an other step, this action exposes this result through the `xmlstartlet_result` output.

___

Originally developed and in use in [Mudlet](https://github.com/Mudlet/Mudlet).
