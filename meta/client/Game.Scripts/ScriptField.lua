---@meta
--* 필드를 나타내는 클래스입니다
---@class Game.Scripts.ScriptField
---@field dataID integer 현재 필드의 데이터 ID
---@field width integer 필드의 가로 크기
---@field height integer 필드의 세로 크기
---@field id integer 이 필드의 고유 ID
---@field units Game.Scripts.ScriptUnit[] 현재 필드에 접속해 있는 유닛 목록
local field = {}

---@alias unitType integer
---| '0' # 플레이어
---| '1' # 이벤트 유닛
---| '2' # 적

--* 필드의 모든 유닛들을 순회하며 가장 큰 값을 반환한 유닛을 가져옵니다
---@param x number 거리를 찾는 기준이 될 유닛의 위치 X
---@param y number 거리를 찾는 기준이 될 유닛의 위치 Y
---@param dist number 찾는 거리 범위
---@param func fun(unit: Game.Scripts.ScriptUnit) 조건 반환 콜백 함수 (인자로 유닛 객체를 받고, 숫자 형식의 값을 반환합니다)
---@param findType unitType
---@param without Game.Scripts.ScriptUnit 제외할 유닛
---@return Game.Scripts.ScriptUnit ScriptUnit
field.FindMaximumUnit = function(x, y, dist, func, findType, without)
end

--* 필드의 모든 유닛들을 순회하며 가장 작은 값을 반환한 유닛을 가져옵니다
---@param x number 거리를 찾는 기준이 될 유닛의 위치 X
---@param y number 거리를 찾는 기준이 될 유닛의 위치 Y
---@param dist number 찾는 거리 범위
---@param func fun(unit: Game.Scripts.ScriptUnit):number 조건 반환 콜백 함수 (인자로 유닛 객체를 받고, 숫자 형식의 값을 반환합니다)
---@param findType unitType
---@param without Game.Scripts.ScriptUnit 제외할 유닛
---@return Game.Scripts.ScriptUnit ScriptUnit
field.FindMinimumUnit = function(x, y, dist, func, findType, without)
end

--* 현재 필드에서 지정된 위치와 가장 가까운 유닛을 가져옵니다
---@param x number 거리를 찾는 기준이 될 유닛의 위치 X
---@param y number 거리를 찾는 기준이 될 유닛의 위치 Y
---@param dist number 찾는 거리 범위
---@param findType unitType
---@param without Game.Scripts.ScriptUnit 제외할 유닛
---@return Game.Scripts.ScriptUnit ScriptUnit
field.FindNearUnit = function(x, y, dist, findType, without)
end

--* 현재 필드에서 특정 조건에 맞는 유닛을 가져옵니다
---@param x number 거리를 찾는 기준이 될 유닛의 위치 X
---@param y number 거리를 찾는 기준이 될 유닛의 위치 Y
---@param dist number 찾는 거리 범위
---@param func fun(unit: Game.Scripts.ScriptUnit):boolean 유닛 검색 콜백 함수 (인자로 해당 유닛 객체를 받고, bool 형식의 반환값으로 찾는 대상인지 판별합니다)
---@param findType unitType
---@param without Game.Scripts.ScriptUnit 제외할 유닛
---@return Game.Scripts.ScriptUnit ScriptUnit
field.FindUnit = function(x, y, dist, func, findType, without)
end
