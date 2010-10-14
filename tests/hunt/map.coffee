class Map extends XCNode
	constructor: () ->
		super()
		this.loadMap()
		
	loadMap: ->
	
		map = []
		`
		map.width = 20
		map.height = 20
		map.tileSize = 16
		map.tiles= [
			['#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#',],
			['#','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','.','.','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','.','@','@','@','@','.','.','.','.','.','.','.','.','.','.','.','.','.','#',],
			['#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#',],
			]
	`
		width = map.width
		height = map.height
		@gridSize = 16
		console.log(map.tiles.length + " " + map.tiles[0].length)
		@tiles = new Array(width)
		for i in [0 .. width]
			@tiles[i] = new Array(height)
			
		for x in [0 ... width]
			for y in [0 ... height]
				type = map.tiles[y][x]
				fileName = ""
				if type == "#"
					console.log('a wall')
					fileName = "grave.png"
				else if type == "@"
					fileName = "pumpkin.png"
				
				if fileName != ""
					console.log(x + ' ' + y)
					@tiles[x][y] = new GridEntity(fileName, this, type, x, y)
				else
					empty = []
					empty.type = "empty"
					@tiles[x][y] = "empty"
					
					
	moveableBlock: (block) ->  block.type != '#'
		