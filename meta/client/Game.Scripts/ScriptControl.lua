---@meta
--* 화면 상에 표시되는 사용자 설정이 가능한 GUI 컨트롤들의 기반 클래스입니다
---@class Game.Scripts.ScriptControl:Game.Scripts.ScriptBaseControl
---@field children Game.Scripts.ScriptControl[] 컨트롤의 자식 컨트롤
---@field enabled boolean 컨트롤의 활성화 여부 {get;set;}
---@field parent Game.Scripts.ScriptControl 컨트롤의 부모 컨트롤
---@field showOnTop boolean 이 컨트롤이 기본 UI 보다 앞으로 올 것인지, 뒤로 올 것인지 설정합니다 (True: 앞, False: 뒤)
local Control = {}

--* 컨트롤에 자식을 추가합니다
---@param other Game.Scripts.ScriptControl 추가할 컨트롤
Control.AddChild = function(other)
end

--* 유닛에 컨트롤을 추가합니다
---@param position Game.Scripts.ScriptPoint 생성될 위치
---@param unit Game.Scripts.ScriptUnit 대상 유닛
Control.AttachToUnit = function(position, unit)
end

--* 유닛에 컨트롤을 추가합니다
---@param position Game.Scripts.ScriptPoint 생성될 위치
---@param id integer 대상 유닛 ID
Control.AttachToUnitID = function(position, id)
end

--* 이 컨트롤을 복제합니다
---@return Game.Scripts.ScriptControl ScriptControl
Control.Clone = function()
end

--* 이 컨트롤을 파괴합니다
Control.Destroy = function()
end

--* 이 컨트롤을 파괴합니다
---@param childName string 가져올 자식 컨트롤의 이름
---@return Game.Scripts.ScriptControl ScriptControl
Control.GetChild = function(childName)
end

--* UI 그리기의 우선순위 번호
---@return integer orderIndex
Control.GetOrderIndex = function()
end

--* 이 컨트롤을 자식의 맨 앞으로 옮깁니다
Control.OrderToFirst = function()
end

--* 이 컨트롤을 자식의 맨 뒤로 옮깁니다
Control.OrderToLast = function()
end

--* 컨트롤에서 해당 자식을 삭제합니다
---@param other Game.Scripts.ScriptControl 제거할 컨트롤
Control.RemoveChild = function(other)
end

--* UI 그리기의 우선순위를 번호를 변경합니다
---@param index integer UI 우선순위 번호
Control.SetOrderIndex = function(index)
end

--* 패널을 나타내는 GUI 클래스입니다
---@class Game.Scripts.ScriptPanel:Game.Scripts.ScriptControl
---@field color Game.Scripts.ScriptColor 패널의 배경 색상
---@field masked boolean 마스크 기능의 사용 여부 {get;set;}

--* 새 패널 객체를 생성합니다
---@param rect? Game.Scripts.ScriptRect
---@return Game.Scripts.ScriptPanel
Panel = function(rect)
end

--* 패널에 레이아웃 페이지를 로드합니다
---@param pageName string 대상 페이지 이름
Panel.LoadPage = function(pageName)
end
