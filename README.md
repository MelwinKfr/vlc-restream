Container to restream video via HTTP using [VLC](https://www.videolan.org/vlc/).

[Dockerfile here](https://github.com/MelwinKfr/vlc-restream/blob/master/Dockerfile)

# Configuration

There is few environment variables to configure the vlc command, feel free to ask me for more settings/options or make a pull request.
You can also run your custom vlc command in your own Dockerfile.

Variable name | Description | Available Value(s)
------------- | ----------- | ------
INPUT         | Input source. | [see vlc documentation](https://wiki.videolan.org/Documentation:Command_line/#Receiving_a_network_stream)
FORMAT        | The output format ([browsers compatibility](https://developer.mozilla.org/fr/docs/Web/HTML/formats_media_support)). | ogg, webm
VIDEO_WIDTH   | Width of the output stream. | [see vlc documentation](https://wiki.videolan.org/Documentation:Command_line/#Video_options)
HTTP_PORT     | If you need to access the container using the port, when using [jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy/) for example. | 80
