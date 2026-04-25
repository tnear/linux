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
%% diamon: {txt}
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

## Resources
- https://mermaid.ai/open-source/intro/
