# mermaid

Mermaid is an open-source JavaScript-based diagramming and charting software that generates diagrams from text-based descriptions.

See also: [Markdown](markdown.md)

## Common syntax
- `%%`: begin comment line
- `title:`: custom title (between `---` and `---` lines)
    - Note: title must come before comments

## Flowcharts
Flowcharts are composed of nodes and edges.

```mermaid
---
title: My title
---
%% TD = top-down, LR = left-right
%% 'id' is a variable name. Use brackets, [], for custom text.
flowchart TD
    id1
    id2[Custom text]
    id_with_markdown[My **bold** txt]
```

```mermaid
flowchart LR
    A --> B
    A --> C
    B --> A
```

### Node shapes

```mermaid
%% square edges (default): [txt] (or leave off)
%% round edges: (txt)
%% cylinder: [(txt)]
%% circle: ((txt))
%% diamond: {txt}
flowchart TD
    id1[id1]
    id2(Text 2)
    id_next[(Database)]
    id_cir((end here))
    id5{Is it?}
```

### Links

```mermaid
flowchart LR
    A --> C
    B --- C
    A -- Text! --> B
    C -.-> D
    C ==> D
```

#### Animation
```mermaid
%% 'e1' assigns an edge an ID
flowchart LR
    A e1@==> B
    e1@{ animate: true }
```

## Sequence diagrams

### Participants
Participants are rendered in order of appearance. Use `participant` for a rectangle, and `actor` for a stick figure.

```mermaid
sequenceDiagram
    participant Alice
    actor Bob
    Bob->>Alice: Hi, Alice
    Alice-->>Bob: (response) Hi, Bob
```

### Messages
Messages are lines and use this syntax: `[Actor][Arrow][Actor]:Message text`

- `->`: solid line without arrow
- `-->`: dotted line without arrow
- `->>`: solid line with arrow
- `-->>`: dotted line with arrow (commonly used for responses)

### Activations
*Activations* in sequence diagrams show how long a participant is actively processing a request. They are rendered as a thin rectangle on the participant's lifeline.

```mermaid
sequenceDiagram
    participant Alice
    participant John
    Alice->>John: Hello John, how are you?
    activate John
    John-->>Alice: Great!
    deactivate John
```

#### Shortcut notation
Activations have their own shortcut: `+[Actor]`, and `-[Actor]`.

This diagram is identical to above.
```
sequenceDiagram
    Alice->>+John: Hello John, how are you?
    John-->>-Alice: Great!
```

## Resources
- https://mermaid.ai/open-source/intro/
