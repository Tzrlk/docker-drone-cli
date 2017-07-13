# Drone CLI

This image just packages the latest [Drone Cli][1] image into a container and sets it as the entrypoint.

The users working directory is `/usr/src`, and there is no default command.

## Usage

To execute a local build:

	docker run -it --rm --privileged \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v $(pwd):/usr/src/ \
		aetheric/drone-cli exec --local
	
To run against a drone server:

	docker run -it --rm \
		-e DRONE_TOKEN=${DRONE_TOKEN} \
		-e DRONE_SERVER=${DRONE_SERVER} \
		aetheric/drone-cli info

or alternately (as per the help):

	docker run -it --rm aetheric/drone-cli \
		--token ${DRONE_TOKEN} \
		--server ${DRONE_SERVER} \
		info

## Contributing

Submit a pull request and I'll see about integrating it.

## License

![MIT][2]

[1]: https://github.com/drone/drone-cli/releases
[2]: https://github.com/aetheric/docker-drone-cli/blob/master/LICENSE?raw=true
