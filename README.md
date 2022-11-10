# systemd daemon example

This is a proof of concept for how to manually add a service to systemd.

## to use (windows)

A host called `axel-do` must be added in your ssh configs on the windows and wsl
sides. It needs to be in wsl since we use rsync to put the files on the server.

```batch
deploy
```

To test out the server, let's forward port `880` through ssh to the droplet.

```batch
tunnel
```

On your local machine, go to `localhost:880` to observe the results!

## to use (macos)

You can't. But not to worry, it's only a proof of concept.
