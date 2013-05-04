-- requires 


local storyboard = require ("storyboard")
local scene = storyboard.newScene()

-- background

function scene:createScene(event)

	local screenGroup = self.view

	background = display.newImage("restart.png")
	screenGroup:insert(background)

    city2 = display.newImage("city2.png")
    city2:setReferencePoint(display.BottomLeftReferencePoint)
    city2.x = 0
    city2.y = 320
    screenGroup:insert(city2)

end


function start(event)
	if event.phase == "began" then
		storyboard.gotoScene("game", "fade", 400)
	end
end


function scene:enterScene(event)

	storyboard.purgeScene("game")
	background:addEventListener("touch", start)

end

function scene:exitScene(event)
	background:removeEventListener("touch", start)
end

function scene:destroyScene(event)

end


scene:addEventListener("createScene", scene)
scene:addEventListener("enterScene", scene)
scene:addEventListener("exitScene", scene)
scene:addEventListener("destroyScene", scene)

return scene













