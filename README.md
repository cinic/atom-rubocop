# rubocop-config

##### Config for [Rubocop](https://github.com/bbatsov/rubocop).

> **RuboCop** is a Ruby static code analyzer. Out of the box it will enforce many of the guidelines outlined in the community [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide).

## Installation
*   Install Docker
*   Install Atom
*   Install the linter and linter-rubocop atom packages
*   Create the following file **/usr/local/bin/rubocop**:
    ```sh
    #!/bin/bash

    docker run --rm -v $(pwd):/app rubocop --format json --display-cop-names --fail-level F --display-style-guide --extra-details
    ```
*   Make it executable: `sudo chmod +x /usr/local/bin/rubocop`
