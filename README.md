LPC Streaming Use Case Example
==============================

This image contains the utilities needed to perform the
Application module's _streaming_ example use cases described
in the Developer's Manual.

To receive (multicast) streams, the container should  be run
in _host_ network mode (i.e. with the `--net=host` parameter).

The container should be run in interactive mode (i.e. with the
`-ti` parameter); a shell of a non-privileged user is provided.
To execute privileged commands, use `gosu root <cmd>`.

# Operating systems #

The image is based on Debian; CentOS-based image is also available
just to showcase that such is possible, but it is otherwise a
stripped-down version missing many of the tools.
