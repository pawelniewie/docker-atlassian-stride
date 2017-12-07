Atlassian Stride Desktop App for Linux
------
This docker files help me run Stride of Fedora which is not supported officially yet.

To help make it obsolete please let your feedback and votes on https://jira.atlassian.com/browse/STRIDE-109 - so Fedora/OpenSUSE/RPM based distributions get an official distribution.

But before that you can use freely this version.

What's nice it should run out of the box and will not require any X11 configuration (running xhost for example).

To run it for the first time use `./run` later you can use `docker-compose up`.

To remove it fully run `docker-compose down -v` so it will remove stride volume from docker.

Inspiration:

* http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
* https://stackoverflow.com/questions/41083436/how-to-play-sound-in-a-docker-container
* https://stackoverflow.com/questions/42181805/x11-forwarding-of-gui-app-in-docker-container
* https://stackoverflow.com/questions/16296753/can-you-run-gui-apps-in-a-docker-container/25280523#25280523