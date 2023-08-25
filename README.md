# xmlstarlet GitHub Action

The purpose of this GitHub action is to run xmlstarlet on arbitrary files during an action, allowing you to add / delete / edit XML files programmatically.

Use the GitHub action in the following way:

```yml
    uses: Mudlet/xmlstarlet-action@master
    with:
      args: [args to xmlstarlet here including file name in the end]
```

The `args` field is used as arguments and options to the xmlstarlet command.

Example 1:

```yml
  - name: delete all @line attributes
    uses: Mudlet/xmlstarlet-action@master
    with:
      args: ed -P -L --delete //@line translations/mudlet.ts
```

Example 2: [Modifying an element of XML File In-place]

```yml
  - name: Modify an element in XML file
    uses: Mudlet/xmlstarlet-action@master
    id: xml_replace
    with:
        args: ed -L --update "/path/to/xml/element/to/be/modified" -v "new_value_to_be_updated" "relative_file_path.xml"
```

> Notice that the relative path to the file is specified as a string. Failing to do so would put the raw contents of the file as an argument to xmlstarlet, leading to un-intended behavior.

In case you wish to use the result of xmlstarlet command in an other step, this action exposes this result through the `xmlstarlet_result` output.

Ex: `${{ steps.xml_replace.outputs.xmlstarlet_result }}`
> Note that, no output will be available when you provide edit in-place argument (-L) to the action.

Visit xml-starlet's [Wikipedia page](https://en.wikipedia.org/wiki/XMLStarlet) for more examples, on how to use xmlstarlet in CLI.

**ProTip 💡 : Install xml-starlet in your local machine and play around to understand what arguments to be supplied. Run `xmlstarlet -h` for help.**

___

Originally developed and in use in [Mudlet](https://github.com/Mudlet/Mudlet).
