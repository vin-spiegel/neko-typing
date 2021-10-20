---@meta
--* 현재 클라이언트의 플레이어 유닛을 나타내는 클래스입니다
---@class Game.Scripts.ScriptMyPlayerUnit:Game.Scripts.ScriptUnit
---@field exp integer 현재 경험치 override
---@field maxEXP integer 최대 경험치 override
---@field quickSlots TQuickSlot[] 퀵 슬롯 목록
local unit = {}
--* 특정 아이템의 쿨타임을 가져옵니다
---@param itemDataID integer 대상 아이템의 데이터 ID
---@return number cooltime 쿨타임 (재사용 대기시간)
unit.GetItemColling = function(itemDataID)
end

--* 특정 스킬의 쿨타임을 가져옵니다
---@param itemDataID integer 대상 스킬의 데이터 ID
---@return number cooltime 쿨타임 (재사용 대기시간)
unit.GetSkillCooling = function(itemDataID)
end

--* 플레이어를 특정 방향으로 이동시킵니다
---@param dirX number 방향 X
---@param dirY number 방향 Y
unit.Go = function(dirX, dirY)
end

--* 특정 위치로 플레이어를 이동시킵니다
---@param posX number 대상 위치 X
---@param posY number 대상 위치 Y
unit.MoveToPosition = function(posX, posY)
end

--* SE 사운드 파일을 재생합니다
---@param name string 재생할 음악파일 이름 (EX : button.ogg)
---@param volume number 사운드 볼륨 0.0 ~ 1.0 (기본값 : 1)
unit.PlaySE = function(name, volume)
end

--* 특정 유닛의 위치로 플레이어를 이동시킵니다. 대상 유닛이 없으면 플레이어가 멈춥니다
---@param unit Game.Scripts.ScriptUnit 대상 유닛
unit.SetTarget = function(unit)
end

--* 플레이어의 이동 상태를 멈춥니다
unit.Stop = function()
end

--* 플레이어의 이동을 멈춥니다
unit.StopMove = function()
end

--* 특정 아이템을 사용합니다
---@param itemDataID integer 사용할 아이템의 데이터 ID
---@return boolean bool 사용 성공 여부 (True/False)
unit.UseItem = function(itemDataID)
end

--* 특정 스킬을 사용합니다 (플레이어가 가지고 있는 스킬만 사용 가능합니다)
---@param skillDataID integer 사용할 스킬의 데이터 ID
---@param shootDir? Game.Scripts.ScriptPoint 사용 방향 (기본: nil)
---@param verbose? boolean 스킬 사용 시 나타나는 메세지의 표시 여부 (기본: True)
---@return boolean bool
unit.UseSkill = function(skillDataID, shootDir, verbose)
end

--* 지정한 위치에서 스킬을 사용하게 합니다
---@param skillDataID integer 사용할 스킬의 데이터 ID
---@param shootDir? Game.Scripts.ScriptPoint 사용 방향 (기본: nil)
---@param pos? Game.Scripts.ScriptPoint 스킬 시작 위치 (기본값 : null)
---@param verbose? boolean 스킬 사용 시 나타나는 메세지의 표시 여부 (기본: True)
---@return boolean bool 스킬 시전 성공 여부 (True/False)
unit.UseSkillToPosition = function(skillDataID, shootDir, pos, verbose)
end
