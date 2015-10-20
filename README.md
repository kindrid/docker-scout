
[ScoutApp](https://scoutapp.com) offers nice monitoring, even on CoreOS. Thanks, ScoutApp, for some great tools and service!

But we want to use environment variables instead of a yaml file to configure it more easily with our orchestration tools.

You will probably want to keep an eye on the official container on [Docker Hub](https://hub.docker.com/r/scoutapp/docker-scout/) and its [GitHub](https://github.com/scoutapp/docker-scout) repository.

![scout logo](https://dl.dropboxusercontent.com/u/468982/docker_registry/scout_logo.png)

Scout is server monitoring for the modern dev team: automatic monitoring of key metrics, 80+ plugins to monitor your apps, real-time (every second) streaming dashboards, and flexibile alerting.

## Quick Start


### 1. Create a unit file



### 2. Deploy it with SystemD

Run the scout image, mounting the `scoutd.yml` file. Running the image will first download the image, if it is not already locally available.
Run the following command in the directory containing your `scoutd.yml` file:

    docker run -d --name scout-agent \
		-v /proc:/host/proc:ro \
		-v /etc/mtab:/host/etc/mtab:ro \
		-v /var/run/docker.sock:/host/var/run/docker.sock:ro \
		-v `pwd`/scoutd.yml:/etc/scout/scoutd.yml \
		--restart=always \
		--net=host --privileged scoutapp/docker-scout

### 3. Or FleetD
