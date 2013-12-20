## usage

	Usage:    grid.sh <action>
	
	ex:       grid.sh start
	
	Actions:  start       start up a grid with 3 nodes
	          stop        tear down whatever is running
	          status      list running container types and their ids
	          startHub    start the hub container
	          stopHub     stop the hub container
	          startNode   add a new node to the grid
	          stopNode    remove a node from the grid


or if you aren't running linux or otherwise want to run this in a vagrant image,
[grab one here](https://github.com/benschw/vagrant-selenium-grid) and get going with a simple `vagrant up`
