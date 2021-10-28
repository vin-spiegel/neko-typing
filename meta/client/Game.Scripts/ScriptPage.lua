---@meta
--* 하나의 레이아웃 페이지를 나타내는 클래스입니다.
---@class Game.Scripts.ScriptPage
---@field autoRun boolean 페이지의 자동 로드 여부
---@field controls Game.Scripts.ScriptControl[] 페이지의 자식 컨트롤 리스트
---@field name string 페이지의 이름
local Page = {}
--* 페이지의 모든 자식 컨트롤들을 파괴합니다
Page.Destroy = function()
end
--* 페이지의 자식 컨트롤을 검색(BFS)후 반환합니다. 전체가 로드되지 않은 페이지에선 최상단 컨트롤을 로드하여 반환합니다
---@param name string
---@return Game.Scripts.ScriptControl ScriptControl
Page.GetControl = function(name)
end
--* 페이지의 같은 이름의 컨트롤들을 검색(BFS)후 반환합니다
---@param name string
---@return Game.Scripts.ScriptControl[] ScriptControls
Page.GetControls = function(name)
end
