---@meta
---하나의 유닛 버프에 대응하는 클래스입니다.
---@class ScriptUnitBuff
---@field dataID integer --버프 ID (데이터베이스)
---@field untilAt double --버프의 종료 시각입니다 os.date("*t",untilAt) 을 통한 시간 가공이 필요합니다
---@field Destroy LuaFunction --해당 버프를 제거합니다

---하나의 유닛에 대응하는 클래스입니다
---
---유닛의 정보를 가져오거나 설정할 수 있습니다
---@class ScriptUnit
---@field customData LuaTable --커스텀 데이터
---@field agi integer --유닛의 민첩 스탯
---@field agility integer --유닛의 민첩 스탯
---@field atk integer --유닛의 공격력 스탯
---@field attack integer --유닛의 공격력 스탯
---@field buffs ScriptUnitBuff --유닛의 버프를 ScriptUnitBuff 형식으로 얻어옵니다
---@field characterData integer
---@field characterID integer
---@field cumulativeEXP integer
---@field def integer
---@field defense integer
---@field dirX integer
---@field dirY integer
---@field exp integer
---@field fatigue integer
---@field field integer
---@field gameMoney integer
---@field hp integer
---@field id integer
---@field initField integer
---@field isGM integer
---@field job integer
---@field level integer
---@field lucky integer
---@field luk integer
---@field magicAtk integer
---@field magicAttack integer
---@field magicDef integer
---@field magicDefense integer
---@field mass integer
---@field maxHP integer
---@field maxMP integer
---@field monsterData integer
---@field monsterID integer
---@field moveSpeed integer
---@field mp integer
---@field name integer
---@field nameColor integer
---@field party integer
---@field partyID integer
---@field player integer
---@field teamTag integer
---@field type integer
---@field x integer
---@field y integer
unit = {}

--해당 유닛에 상태를 추가합니다
---@param buffID integer 버프ID
---@param attacker ScriptUnit 공격한 유닛
unit.AddBuff = function(buffID, attacker)
end

---이 유닛에게 피해(데미지)를 입힙니다
---
---(단 몬스터 대상으로 해당 함수를 사용시 공격자를 판별할 수 없으므로 보상이 지급되지 않습니다)
---@param damage integer 입힐 데미지
---@param skillDataID integer 스킬의 공식을 사용시 공식을 적용할 스킬의 ID (기본값: -1(공식 미적용))
---@param critical boolean 치명타(크리티컬)의 발생 유무
unit.AddDamage = function(damage, skillDataID, critical)
end

---이 유닛에게 피해(데미지)를 입힙니다
---
---(이 함수에서는 공격자를 판별할 수 있으므로 몬스터 대상 공격 시 보상이 지급됩니다)
---@param attacker ScriptUnit 공격자
---@param damage integer 피해량(데미지)
---@param skillDataID integer 스킬의 공식을 사용시 공식을 적용할 스킬의 ID (기본값: -1(공식 미적용))
---@param critical? boolean 치명타(크리티컬)의 발생 유무
unit.AddDamageBy = function(attacker, damage, skillDataID, critical)
end

---유닛에게 경험치를 지급합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param amount integer 지급할 경험치의 양
unit.AddEXP = function(amount)
end

---유닛의 피로도를 채웁니다 (플레이어 유닛일 경우에만 동작합니다)
---@param amount integer 채워줄 피로도의 양
unit.AddFatigue = function(amount)
end

---유닛에게 골드를 지급합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param amount integer 지급할 골드의 양
unit.AddGameMoney = function(amount)
end

---유닛의 HP를 회복시킵니다
---@param amount integer 회복시킬 HP양
unit.AddHP = function(amount)
end

---유닛에게 아이템을 추가합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 추가할 아이템의 ID
---@param count integer 추가할 수량
---@param notify? boolean 알림 표시 여부 (True/False)
unit.AddItem = function(dataID, count, notify)
end

--해당 유닛에게 센터 라벨을 표시합니다
---@param msg string 라벨 내용
unit.SendCenterLabel = function(msg)
end
