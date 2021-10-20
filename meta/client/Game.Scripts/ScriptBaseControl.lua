---@meta

--* 화면 상에 표시되는 모든 GUI 컨트롤들의 기반 클래스입니다
---@class Game.Scripts.ScriptBaseControl
--* 컨트롤의 기준 위치
---     * 0 - TopLeft
---     * 1 - TopCenter
---     * 2 - TopRight
---     * 3 - MiddleLeft
---     * 4 - MiddleCenter
---     * 5 - MiddleRight
---     * 6 - BottomLeft
---     * 7 - BottomCenter
---     * 8 - BottomRight
---@field anchor integer
---@field width number 컨트롤의 가로 크기
---@field height number 컨트롤의 세로 크기
---@field pivotX number 컨트롤의 피봇 X
---@field pivotY number 컨트롤의 피봇 Y
---@field rect Game.Scripts.ScriptRect 컨트롤의 표시 영역
---@field visible boolean 컨트롤의 표시 여부
local BaseControl = {}

--* 이 컨트롤이 수행중인 모든 애니메이션을 종료합니다 (DO .. 시리즈 함수)
BaseControl.DOKill = function()
end

--* 이 컨트롤을 정해진 시간 동안 대상 지점까지 이동시킵니다
---@param target Game.Scripts.ScriptPoint 대상 지점
---@param duration number 시간 (초)
BaseControl.DOMove = function(target, duration)
end

--* 이 컨트롤을 정해진 시간 동안 설정한 각도로 회전시킵니다
---@param angle number 각도
---@param duration number 시간 (초)
BaseControl.DORotate = function(angle, duration)
end

--* 이 컨트롤을 정해진 시간 동안 설정한 크기로 변경합니다
---@param target Game.Scripts.ScriptPoint 크기
---@param duration number 시간 (초)
BaseControl.DOScale = function(target, duration)
end

--* 이 컨트롤의 투명도를 설정합니다
---@param opacity integer 투명도 (0 - 255)
BaseControl.SetOpacity = function(opacity)
end
