
local PlayerState = require("app.Game.PlayerFSM.PlayerState")

local Player1010State = class("Player1010State",PlayerState)

-- 1010状态 主要是拖拽
function Player1010State:OnEnter()
	QPrint("1010:OnEnter")
	
	-- 播放声音
	audio.playSound("res/sound/push.wav", false)

    -- self.model.scene.matrixBeganPosX = self.model.scene.matrixNode:getPositionX()
    -- self.model.scene.matrixBeganPosY = self.model.scene.matrixNode:getPositionY()

    -- self.model.scene.deltaX = self.model.scene.touchBeganX - self.model.scene.matrixBeganPosX
    -- self.model.scene.deltaY = self.model.scene.touchBeganY - self.model.scene.matrixBeganPosY

    self.model.scene.matrixNode:scale(1.0)
    -- self.model.scene.matrixNode:

end

function Player1010State:OnExit()
	QPrint("1010:OnExit")
end

return Player1010State

