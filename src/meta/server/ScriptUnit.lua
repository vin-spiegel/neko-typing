---@meta
---하나의 유닛 버프에 대응하는 클래스입니다.
---@class ScriptUnitBuff
---@field dataID integer --버프 ID (데이터베이스)
---@field untilAt double --버프의 종료 시각입니다 os.date("*t",untilAt) 을 통한 시간 가공이 필요합니다
---@field Destroy LuaFunction --해당 버프를 제거합니다

unit.buffs.Destroy()

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

--해당 유닛에게 센터 라벨을 표시합니다
---@param msg string 라벨 내용
unit.SendCenterLabel = function(msg)
end
