# J's Profile Journal

### 04/10/2023

- Found several duplicate paths in PATH. Added additional check in .zshrc

    ```shell
    # Is the tool installed (path exists)?
    if [ -d /usr/local/go/bin ]; then
        # Is the path missing from PATH
        if [[ $PATH == ?(*:)/usr/local/go/bin?(:*) ]]; then
            # Then add it to PATH
            PATH=$PATH:/usr/local/go/bin
        fi
    fi
    ```
