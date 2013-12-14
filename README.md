tutum-docker-wordpress
======================

Out-of-the-box Wordpress docker image


Usage
-----

To create the image `tutum/wordpress`, execute the following command on the tutum-docker-wordpress folder:

	docker build -t tutum/wordpress .

You can now push your new image to the registry:

	sudo docker push tutum/wordpress


Running your Wordpress docker image
-----------------------------------

Start your image:

	sudo docker run -d tutum/wordpress

It will print the new container ID (like `d35bf1374e88`). Get the allocated external port:

	sudo docker port d35bf1374e88 80

It will print the allocated port (like 4751). Test your deployment:

	curl http://localhost:4751/

You can now start configuring your Wordpress container!
