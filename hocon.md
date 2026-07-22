# HOCON

HOCON (Human-Optimized Config Object Notation) is a configuration format which is a superset of JSON. It adds features aimed at making large configs easier to write and maintain.

## Optional Punctuation

JSON requires quotes around all keys, commas between all fields, and colons to separate them. HOCON is looser and supports both examples below:

```py
# HOCON
server {
  host = "localhost"
  port = 8080
}
```

```json
// Equivalent JSON
{
  "server": {
    "host": "localhost",
    "port": 8080
  }
}
```

## Substitution

Values can reference other values with `${path}`:

```py
base-url = "https://example.com"

api {
  users    = ${base-url}"/users"
  products = ${base-url}"/products"
}
```

JSON has no equivalent. You would repeat the base URL everywhere.

## Includes and Merging

Config files can include others:

```py
include "defaults.conf"

# Keys defined here merge with or override defaults
server.port = 9000
```

Objects at the same path are *merged*. Including a file and then specifying a few keys leaves all the unmentioned defaults intact. JSON has no include or merge mechanism.

## Dot notation

HOCON lets you express nested structure either as braces or as dot-separated paths.

```py
# Brace style
server {
  http {
    host = "localhost"
    port = 8080
  }
}

# Dot notation
server.http.host = "localhost"
server.http.port = 8080
```

You can mix them freely, and objects at the same path are merged:

```py
server.http.host = "localhost"

server {
    http {
        port = 8080
    }
}

# Result: server.http has both host and port
```

### Include example

```py
include "application.conf"

# Just override one value, leave everything else intact
server.http.port = 9000
```

## Comments

HOCON supports `#` and `//` comments. JSON supports neither.
