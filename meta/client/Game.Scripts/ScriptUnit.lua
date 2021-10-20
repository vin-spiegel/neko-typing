---@meta
---게임 내 유닛을 나타내는 클래스입니다 (Client)
---@class Game.Scripts.ScriptUnit
---@field clanID integer 유닛의 클랜 ID
---@field dead boolean 유닛의 사망 여부
---@field dirX number 유닛의 X 방향 좌표 { get; set; }
---@field dirY number 유닛의 Y 방향 좌표 { get; set; }
---@field exp integer 유닛의 경험치
---@field hp integer 체력
---@field id integer 유닛의 ID
---@field level integer 레벨
---@field maxEXP integer 유닛의 다음 레벨 도달 경험치
---@field maxHP integer 최대 체력
---@field maxMP integer 최대 마나
---@field moveSpeed integer 이동 속도
---@field mp integer 마나
---@field name string 유닛의 이름
---@field position Game.Scripts.ScriptPoint 유닛의 위치
---@field rigidbody Game.Scripts.ScriptRigidbody 유닛의 물리 효과 객체
---@field sortOrder integer 캐릭터를 보여주는 순서값 { get; set; }
---@field valid boolean 유닛의 유효 여부
---@field x number 유닛의 X 좌표 { get; set; }
---@field y number 유닛의 Y 좌표 { get; set; }
local unit = {}

--* 유닛이 특정 버프를 가지고 있는지를 가져옵니다
---@param id integer 버프 ID
---@return boolean bool 버프 유무
unit.HasBuff = function(id)
end

--* 유닛의 애니메이션을 재생합니다
---@param name string 재생할 애니메이션의 이름
unit.PlayOneShotAction = function(name)
end

--* 유닛이 말하게 합니다
---@param msg string 대화 내용
---@param color Game.Scripts.ScriptColor 색
unit.Say = function(msg, color)
end

--* 유닛이 말하게 합니다
---@param id string 표시할 이모티콘 ID
---@param loops integer 반복 횟수 (기본: 2)
unit.SayEmoticon = function(id, loops)
end
