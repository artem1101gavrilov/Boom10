
function love.load()
	filesize = 0

	require "sdvig"
	love.window.setMode(400, 400)
	background = love.graphics.newImage("background.png")
	backgroundGameOver = love.graphics.newImage("gameover.png")
	tableGame = {
        {0, 0, 0, 0},
        {0, 1, 0, 0},
        {0, 0, 1, 0},
        {0, 0, 0, 0}
    }
    autoload(tableGame)
    isfinish = false

    mainFont = love.graphics.newFont(30);
	love.graphics.setFont(mainFont);
end
 
function love.update(dt)
	
end
 
function autoload( tableGame )
	isFile = love.filesystem.isFile( "SaveBoom10.txt" )
	if isFile == true then
		file = love.filesystem.newFile("SaveBoom10.txt")
		file:open('r')
		data = file:read()
		filesize = file:getSize()
		bufer = 0
		sizeforbufer = 1

		local t = 1
		local k = 1
		for i=1,filesize do
			if data:sub(i,i) == "," then
				tableGame[t][k] = bufer 
				k = k + 1
				if k > 4 then
					k = 1
					t = t + 1
				end 
				bufer = 0
			elseif data:sub(i,i) == "-" then
				bufer = -1
			else
				if bufer == 0 then
					--bufer = data
				 	bufer = tonumber(data:sub(i,i))
				 elseif data:sub(i-1,i-1) == "-" then
				 	bufer = -1 * tonumber(data:sub(i,i))
				 else
				 	--bufer = data
				 	bufer = 10 * bufer
				 	if bufer > 0 then
				 		bufer = bufer + tonumber(data:sub(i,i))
				 	else
				 		bufer = bufer - tonumber(data:sub(i,i))
				 	end
				 end
			end
		end
		success = file:close()
	end
end

function autosave ( tableGame )
	file = love.filesystem.newFile("SaveBoom10.txt")
	file:open('w')
	for i=1,4 do
		for j=1,4 do
			file:write("" .. tableGame[i][j] .. ",")
		end
	end
	filesize = file:getSize()
	success = file:close()
end

function love.keypressed(key, unicode)
	if key == "up" or key == "w" then
		if CanClickUp(tableGame) then 
			UpdateLineUp(tableGame)
			AddLineUp(tableGame)
			UpdateLineUp(tableGame)
			NewElement(tableGame)
			isfinish = FinishGame(tableGame)
			autosave(tableGame)
		end
		direction = "up"
	elseif key == "down"  or key == "s" then
		if CanClickDown(tableGame) then
			UpdateLineDown(tableGame)
			AddLineDown(tableGame)
			UpdateLineDown(tableGame)
			NewElement(tableGame)
			isfinish = FinishGame(tableGame)
			autosave(tableGame)
		end
		direction = "down"
	elseif key == "left"  or key == "a" then
		if CanClickLeft(tableGame) then 
			UpdateLineLeft(tableGame)
			AddLineLeft(tableGame)
			UpdateLineLeft(tableGame)
			NewElement(tableGame)
			isfinish = FinishGame(tableGame)
			autosave(tableGame)
		end
		direction = "left"
	elseif key == "right"  or key == "d" then
		if CanClickRight(tableGame) then
			UpdateLineRight(tableGame)
			AddLineRight(tableGame)
			UpdateLineRight(tableGame)
			NewElement(tableGame)
			isfinish = FinishGame(tableGame)
			autosave(tableGame)
		end
		direction = "right"
	elseif key == "escape" then
		love.event.quit()
	end
	if key == "r" then
		love.load()
	end
end

function love.keyreleased(key, unicode)
end 

function love.mousepressed(x, y, button, istouch)
   if button == 1 then
   end
end

function love.mousereleased(x, y, button, istouch)
   if button == 1 then
   end
end

function love.draw()
	if isfinish == false then
		love.graphics.setColor(250, 250, 250)
		love.graphics.draw(background, 0, 0)
		DrawTableGame(tableGame)
	else
		love.graphics.setColor(250, 250, 250)
		love.graphics.draw(background, 0, 0)
		DrawTableGame(tableGame)
		love.graphics.draw(backgroundGameOver, 0, 0)
	end
end