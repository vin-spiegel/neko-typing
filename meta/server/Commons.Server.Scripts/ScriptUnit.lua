---@meta
---하나의 유닛 버프에 대응하는 클래스입니다.
---@class ScriptUnitBuff
---@field dataID integer #버프 ID (데이터베이스)
---@field untilAt double #버프의 종료 시각입니다 os.date("*t",untilAt) 을 통한 시간 가공이 필요합니다
---@field Destroy LuaFunction #해당 버프를 제거합니다

---하나의 유닛에 대응하는 클래스입니다
---
---유닛의 정보를 가져오거나 설정할 수 있습니다
---@class ScriptUnit
---@field customData LuaTable 커스텀 데이터
---@field agi integer 유닛의 민첩 스탯
---@field agility integer 유닛의 민첩 스탯
---@field atk integer 유닛의 공격력 스탯
---@field attack integer 유닛의 공격력 스탯
---@field buffs ScriptUnitBuff 유닛의 버프를 ScriptUnitBuff 형식으로 얻어옵니다
---@field characterData TGameCharacter 유닛의 데이터를 TGameCharacter 형식으로 얻어옵니다
---@field characterID integer 유닛의 캐릭터 ID { get; set; }
---@field cumulativeEXP integer 플레이어 유닛의 누적 경험치
---@field def integer 유닛의 방어력 스탯
---@field defense integer 유닛의 방어력 스탯
---@field dirX integer 유닛의 X 방향 좌표 { get; set; }
---@field dirY integer 유닛의 Y 방향 좌표
---@field exp integer 플레이어 유닛의 현재 경험치
---@field fatigue integer 유닛의 현재 피로도 { get; set; }
---@field field Commons.Server.Scripts.ScriptField 이 유닛이 접속해 있는 필드의 객체
---@field gameMoney integer 유닛이 가진 골드 (이 유닛이 플레이어 유닛일 경우에만 동작합니다) { get; set; }
---@field hp integer 유닛의 현재 체력 => get set
---@field id integer 유닛의 고유 ID
---@field initField Commons.Server.Scripts.ScriptField 이 몬스터 유닛이 처음 접속한 맵(필드)의 ScriptField 객체
---@field isGM integer 이 플레이어가 게임 관리자(마스터)인지 반환합니다
---@field job integer 유닛의 직업 { get; set; }
---@field level integer 유닛의 레벨
---@field lucky integer 유닛의 행운 스탯
---@field luk integer 유닛의 행운 스탯
---@field magicAtk integer 유닛의 마법 공격력 스탯
---@field magicAttack integer 유닛의 마법 공격력 스탯
---@field magicDef integer 유닛의 마법 방어력 스탯
---@field magicDefense integer 유닛의 마법 방어력 스탯
---@field mass number 유닛의 무게 { get; set; }
---@field maxHP integer 유닛의 최대 체력 { get; set; }
---@field maxMP integer 유닛의 최대 마력 { get; set; }
---@field monsterData TGameMonster 유닛의 몬스터 데이터
---@field monsterID integer 유닛의 몬스터 ID { get; set; }
---@field moveSpeed integer 유닛의 이동속도 { get; set; }
---@field mp integer 유닛의 현재 마력 { get; set; }
---@field name string 유닛의 이름 { get; set; }
---@field nameColor UInt32 유닛의 이름 색
---@field party ScriptParty 현재 유닛이 참가한 파티의 데이터를 얻어옵니다.
---@field partyID integer 유닛이 속한 파티의 ID
---@field player ScriptRoomPlayer 유닛의 플레이어 객체 (이 유닛이 플레이어 유닛일 경우에만 동작합니다)
---@field teamTag UInt32 유닛의 팀 태그
---@field type integer 유닛의 종류 (0: 플레이어, 1: 이벤트, 2: 몬스터)
---@field x number 유닛의 X 좌표 { get; set; }
---@field y number 유닛의 Y 좌표 { get; set; }
local unit = {}

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

---유닛에게 TItem 형식으로 아이템을 추가합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param item TItem 추가할 아이템 객체(TItem)
---@param notify? boolean 알림 표시 여부 (True/False)
unit.AddItemByTItem = function(item, notify)
end

---유닛의 MP를 회복시킵니다
---@param amount integer 회복시킬 MP양
unit.AddMP = function(amount)
end

---유닛의 MP를 회복시킵니다
---@param characterID integer 펫의 캐릭터 ID (기본값: 0)
---@param jobID integer 펫의 직업 ID (기본값: 0)
---@param name string 펫의 이름 (기본값: 펫 캐릭터의 이름)
---@return int id 등록된 펫의ID(등록 실패시 -1)
unit.AddPet = function(characterID, jobID, name)
end

---유닛에게 스킬을 추가합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 추가할 스킬의 ID
---@param level integer 추가할 스킬의 레벨
---@param notify boolean 알림 표시 여부 (True/False)
unit.AddSkill = function(dataID, level, notify)
end

---펫의 소환을 해제합니다
unit.CancelPetSummon = function()
end

---해당 유닛의 버프를 모두 제거합니다.
---@param clearAnimation boolean 버프 애니메이션을 중단할 것인지
unit.ClearAllBuffs = function(clearAnimation)
end

-- 해당 유닛의 버프 애니메이션을 모두 제거합니다.
unit.ClearBuffAnimations = function()
end

-- 유닛의 특정 아이템 소유 여부를 체크합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 아이템 ID (데이터베이스)
---@return integer count 아이템의 갯수 (소유하지 않았다면 0)
unit.CountItem = function(dataID)
end

--유닛이 가지고있는 아이템을 땅에 떨어뜨립니다 (플레이어 유닛일 경우에만 동작합니다)
---@param id integer 아이템의 고유 ID
---@param count integer 갯수
unit.DropItem = function(id, count)
end

--유닛이 가지고있는 아이템을 땅에 떨어뜨립니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 아이템의 데이터베이스 ID
---@param count integer 갯수
unit.DropItemByDataID = function(dataID, count)
end

--유닛이 인벤토리에 지니고 있는 아이템 중 하나를 장착하게 합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param id integer 아이템의 고유 ID
---@param forced boolean 강제착용 여부
unit.EquipItem = function(id, forced)
end

---클라이언트에게 Topic에 대한 이벤트를 보냅니다
---@param topic integer 보낼 Topic
---@vararg ... 함께 보낼 인자들
unit.FireEvent = function(topic, ...)
end

---등록된 펫들의 데이터를 TOnlinePetData[ ] 형식으로 반환합니다.
---@return TOnlinePetData TOnlinePetData 등록된 펫들의 데이터가 담긴 TOnlinePetData[ ] 형식 배열
unit.GetAllRegistedPetData = function()
end

---@param slotID NekoEquipSlot 장착 슬롯(0~9)
---@return TItem TItem
---유닛이 장착 중인 아이템의 정보를 가져옵니다 (플레이어 유닛일 경우에만 동작합니다)
unit.GetEquipItem = function(slotID)
end

---등록된 펫의 데이터를 TOnlinePetData 형식으로 반환합니다.
---@param petID integer 펫 ID
---@return TOnlinePetData TOnlinePetData 등록된 펫의 데이터가 담긴 .TOnlinePetData 형식
unit.GetRegistedPetDataByPetID = function(petID)
end

--등록된 펫의 ID를 가져옵니다
---@return integer[] 등록된 펫들의 ID가 담긴 int[] 형식 배열
unit.GetRegistedPetID = function(dataID)
end

--소환되어있는 펫 유닛을 가져옵니다
---@return ScriptPetUnit unit 펫 유닛 객체
unit.GetSingleSummonedPet = function()
end

--유닛이 가진 스킬 정보를 가져옵니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 스킬ID(데이터베이스)
---@return network.Tskill TSkill 스킬 정보객체(TSkill)
unit.GetSkill = function(dataID)
end

-- 유닛이 가진 특정 스킬의 레벨을 가져옵니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 스킬ID (데이터베이스)
---@return integer level 스킬 레벨 (스킬이 없다면 -1반환)
unit.GetSkillLevel = function(dataID)
end

---@param type NekoStats 가져올 스탯의 스탯 타입 (NekoStats)
-- 유닛의 스탯 값을 스탯 Type을 이용해서 가져옵니다
unit.GetStat = function(type)
end

--이 플레이어 유닛의 변수 값을 가져온다 (문자열 형식)
---@param id integer 변수 ID
---@return string value 해당 변수의 값
unit.GetStringVar = function(id)
end

--플레이어 유닛의 변수 값을 가져옵니다
---@param id integer 변수 ID
---@return integer value 해당 변수의 값
unit.GetVar = function(id)
end

--해당 유닛이 특정 ID의 상태를 가지고 있는지 체크합니다
---@param buffID integer 버프 ID
---@return boolean bool 버프 유무 (true/false)
unit.HasBuff = function(buffID)
end

--유닛의 스킬 소유 여부를 체크합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 스킬 ID (데이터베이스)
---@return boolean bool 스킬의 존재 유무 (true/false)
unit.HasSkill = function(dataID)
end

--유닛의 도감 완료 여부를 가져옵니다 (플레이어 유닛일 경우에만 동작합니다)
---@param collectionDataID integer 도감 ID (데이터베이스)
---@return boolean bool 완료 여부 (True/False)
unit.IsCollectionCompleted = function(collectionDataID)
end

--유닛의 특정 아이템 장착 여부를 가져옵니다 (플레이어 유닛일 경우에만 동작합니다)
---@param itemID integer 아이템의 고유 ID
---@return boolean bool 장착 여부 (True/False)
unit.IsEquippedItem = function(itemID)
end

--유닛의 특정 아이템 장착 여부를 가져옵니다 (플레이어 유닛일 경우에만 동작합니다)
---@param itemDataID integer 아이템 ID (데이터베이스)
---@return boolean bool 장착 여부 (True/False)
unit.IsEquippedItemByDataID = function(itemDataID)
end

-- 유닛에게 밀치기(넉백 Knock-back)를 적용합니다
--
-- (밀친 대상의 유닛으로부터 멀어집니다)
---@param from ScriptUnit 밀친 대상
---@param distance number 적용 거리
---@param time  number 적용 시간 (짧을수록 빠르게 밀어냅니다) (기본값: 0.5)
unit.KnockbackFromUnit = function(from, distance, time)
end

-- 유닛이 접속해 있는 필드를 떠나게 합니다
unit.LeaveField = function()
end

--유닛을 밀쳐냅니다 (넉백)
---@param distance number 적용 거리
---@param time number 적용 시간 (짧을수록 빠르게 밀어냅니다) (기본값: 0.5)
unit.MakeKnockback = function(distance, time)
end

--유닛을 기절시킵니다 (스턴)
---@param time number 적용 시간
unit.MakeSturn = function(time)
end

---@param meID string ME이름
---@param volume number 볼륨
unit.PlayME = function(meID, volume)
end

---@param seName string SE이름
---@param volume number 볼륨
unit.PlaySE = function(seName, volume)
end

-- 유닛에게 당기기를 적용합니다.
--
-- (당긴 대상 유닛에게 끌려갑니다)
---@param from ScriptUnit 당긴 대상
---@param distance number 간격 (0 일경우 완전히 내 위치까지 당겨집니다) (기본값: 0)
---@param time  number 적용 시간 적용 시간 (짧을수록 빠르게 당깁니다) (기본값: 0.5)
unit.PullFromUnit = function(from, distance, time)
end

--유닛의 스탯을 다시 계산합니다
unit.RefreshStats = function()
end

--유닛의 모든 스킬을 제거합니다 (플레이어 유닛일 경우에만 동작합니다)
unit.RemoveAllSkills = function()
end

--해당 유닛의 상태를 제거합니다
---@param buffID integer 해당 유닛의 상태를 제거합니다
unit.RemoveBuff = function(buffID)
end

--유닛의 도감을 삭제하고, 삭제에 성공했는지를 반환합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param collectionDataID integer 도감 ID (데이터베이스)
---@return boolean bool 삭제 성공 여부 (True/False)
unit.RemoveCollection = function(collectionDataID)
end

--플레이어 유닛으로부터 아이템을 제거합니다
---@param dataID integer 제거할 아이템의 데이터베이스 아이템 ID
---@param count? integer 제거할 아이템의 개수 = 1
---@param notify? boolean 아이템을 제거했을때 공지를 사용할 것인지를 나타냅니다 = true
---@param atomic? boolean 이 인자가 활성화 되었을 때 제거할 아이템의 개수보다 가지고 있는 아이템의 개수가 적으면 False를 반환하고 함수를 종료합니다 = false
---@param equippedItemExclude? boolean 장착 중인 아이템은 제거 대상에서 제외할지를 나타냅니다 = false
---@return boolean bool 삭제 성공 여부 (True/False)
unit.RemoveItem = function(dataID, count, notify, atomic, equippedItemExclude)
end

--플레이어 유닛으로부터 아이템을 제거합니다
---@param id integer 제거할 아이템의 데이터베이스 아이템 ID
---@param count? integer 제거할 아이템의 개수 = 1
---@param notify? boolean 아이템을 제거했을때 공지를 사용할 것인지를 나타냅니다 = true
---@param atomic? boolean 이 인자가 활성화 되었을 때 제거할 아이템의 개수보다 가지고 있는 아이템의 개수가 적으면 False를 반환하고 함수를 종료합니다 = false
---@param equippedItemExclude? boolean 장착 중인 아이템은 제거 대상에서 제외할지를 나타냅니다 = false
---@return boolean bool 삭제 성공 여부 (True/False)
unit.RemoveItemByID = function(id, count, notify, atomic, equippedItemExclude)
end

---유닛의 특정 스킬을 제거합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 제거할 스킬의 ID
unit.RemoveSkill = function(dataID)
end

--유닛을 X, Y 위치에서 부활시킵니다
---@param x number X 좌표
---@param y number Y 좌표
unit.RespawnAt = function(x, y)
end

--유닛이 말하게 합니다
---@param msg string 대사
---@param color? number 텍스트 색 (기본: 검은색) 0xFF0000 uint
unit.Say = function(msg, color)
end

--해당 유닛에게 센터 라벨을 표시합니다
---@param msg string 라벨 내용
unit.SendCenterLabel = function(msg)
end

--유닛에게 말하기 요청을 보냅니다 (대상 플레이어의 채팅창에만 대사가 보입니다)
---@param msg string 대사
---@param color? number 텍스트 색 (기본: 검은색) 0xFF0000 uint
unit.SendSay = function(msg, color)
end

--유닛의 정보를 갱신합니다
---@param fixPosition? boolean 위치보정 유무 (기본값: false)
unit.SendUpdated = function(fixPosition)
end

--이 플레이어 유닛의 변수 값을 설정합니다
---@param id integer 변수 ID
---@param value integer 변수값
unit.SerVar = function(id, value)
end

-- 직업 변경시 스킬의 유지 여부
---@param jobID integer 직업 ID
---@param keepSkills? boolean 같은 스킬의 유지 여부 (기본:true)
unit.SetJob = function(jobID, keepSkills)
end

--이 유닛의 펫 유닛을 설정합니다
---@param pet ScriptUnit 대상 펫 유닛 객체
unit.SetPetUnit = function(pet)
end

--퀵 슬롯에 등록될 아이템 및 스킬을 설정합니다
---@param type integer 등록 타입 (0 : 빈 슬롯, 1 : 아이템, 2 : 스킬)
---@param slotID integer 슬롯 번호 (0 ~ 7)
---@param dataID integer 대상의 ID (데이터베이스)
unit.SetQuickSlot = function(type, slotID, dataID)
end

-- 유닛이 가진 특정 스킬의 레벨을 설정합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param dataID integer 스킬 ID (데이터베이스)
---@param level integer 변경할 레벨)
---@return boolean bool 성공 여부 (True/False)
unit.SetSkillLevel = function(dataID, level)
end

--유닛의 스탯 값을 스탯 Type을 이용해서 설정합니다
---@param type NekoStats 설정할 스탯의 스탯 타입 (NekoStats)
---@param value number 설정할 값
unit.SetStat = function(type, value)
end

-- 이 플레이어 유닛의 변수 값을 설정합니다 (문자열 형식, 최대 65535 Bytes)
---@param id integer 변수 ID
---@param value string 설정할 값
unit.SetStringVar = function(id, value)
end

--이 플레이어 유닛의 변수 값을 설정합니다
---@param id integer 변수 ID
---@param value integer 설정할 값
unit.SetVar = function(id, value)
end

--해당 유닛의 위치에 애니메이션을 재생합니다
---@param animationID integer 설정할 값
unit.ShowAnimation = function(animationID)
end

--유닛을 특정 위치로 소환합니다
---@param x integer X 좌표
---@param y integer Y 좌표
unit.SpawnAt = function(x, y)
end

---특정 필드(맵)의 X, Y 위치로 소환한다.
---@param f Server.Field 소환할 대상 필드
---@param x integer 소환할 위치의 X 좌표
---@param y integer 소환할 위치의 Y 좌표
unit.SpawnAtField = function(f, x, y)
end

--필드의 ID를 이용해서 지정된 좌표에 유닛을 소환합니다.
---@param mapID integer 소환할 필드의 ID
---@param x number 소환할 위치의 X 좌표
---@param y number 소환할 위치의 Y 좌표
---@param channelID integer 소환할 위치의 채널 ID(기본값 : 0)
unit.SpawnAtFieldID = function(mapID, x, y, channelID)
end

--펫을 소환합니다. 같은 ID로 이미 펫이 소환되었던 경우 해당 펫의 정보로 소환됩니다
--
--(플레이어 유닛일 경우에만 동작합니다)
---@param petID integer 소환할 펫의 ID
---@param posX number 소환할 위치의 X 좌표
---@param posY number 소환할 위치의 Y 좌표
---@param characterID integer 신규 등록시 펫의 캐릭터 ID (기본값: 0)
---@param jobID integer 신규 등록시 펫의 직업 ID (기본값: 0)
---@param name string 신규 등록시 펫의 이름 (기본값: 데이터베이스-캐릭터의 이름)
unit.SpawnPet = function(petID, posX, posY, characterID, jobID, name)
end

--유닛의 공용 이벤트를 시작합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param id integer 공용 이벤트 ID
unit.StartGlobalEvent = function(id)
end

--해당 유닛이 재생 중이던 애니메이션을 중단합니다.
---@param animationID integer 해당 유닛이 재생 중이던 애니메이션을 중단합니다
unit.StopAnimation = function(animationID)
end

--유닛이 장착 중인 아이템 중 하나를 장착 해제하게 합니다
--
--(플레이어 유닛일 경우에만 동작합니다)
---@param itemID integer 아이템의 고유 ID
unit.UnequipItem = function(itemID)
end

--펫의 등록을 해제합니다
---@param petID integer 펫의 등록을 해제합니다
unit.UnregisterPet = function(petID)
end

-- 유닛의 피로도를 사용합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param amount integer 사용할 양
---@return boolean bool
unit.UseFatigue = function(amount)
end

--유닛의 게임 골드를 사용합니다 (플레이어 유닛일 경우에만 동작합니다)
---@param amount integer 사용할 양
---@return boolean bool
unit.UseGameMoney = function(amount)
end
