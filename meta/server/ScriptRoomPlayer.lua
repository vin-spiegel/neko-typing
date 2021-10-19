---@meta
---서버에서 한 게임 유저에 대응하는 클래스입니다. 해당 플레이어의 정보를 가져오거나, 설정할 수 있습니다
---@class ScriptRoomPlayer
---@field baseEXP integer 현재 플레이어의 레벨의 하나 전 레벨까지 필요한 총 경험치량
---@field clan integer 플레이어가 속한 클랜 객체
---@field clanID integer 플레이어가 속한 클랜의 ID
---@field exp integer 플레이어의 현재 누적 경험치
---@field id integer 플레이어가 고유 ID
---@field isGM boolean 이 플레이어가 게임 관리자(마스터)인지 반환합니다
---@field level integer 플레이어의 레벨
---@field maxEXP integer 현재 플레이어의 레벨까지 필요한 총 경험치 양
---@field name string 플레이어의 이름
---@field score integer 설정한 스코어 값
---@field team integer 팀 값 (0 ~ 3 : 1팀 ~ 4팀)
---@field unit ScriptUnit 플레이어의 유닛(ScriptUnit) 객체
player = {}

---플레이어의 창고에 아이템을 지급합니다
---@param storageID integer 아이템을 추가할 대상 창고 ID
---@param itemDataID integer 아이템 ID (데이터베이스)
---@param count integer 아이템 갯수
---@return boolean 아이템 지급 성공 여부 (True/False)
player.AddStorageItemfunction = function(storageID, itemDataID, count)
end

---클라이언트에게 Topic에 대한 이벤트를 보냅니다
---@param topic integer 보낼 Topic
---@vararg ... 함께 보낼 인자들
player.FireEvent = function(topic, ...)
end

---플레이어의 아이템 목록에서 ID에 맞는 아이템을 가져옵니다
---@param id integer 해당 아이템의 고유 ID
---@return TItem TItem 가져온 아이템 객체
player.GetItem = function(id)
end

---현재 플레이어가 가지고 있는 아이템들을 리스트 형식으로 반환합니다.
---@generic TItem TItem객체가 담긴 리스트
---@return TItem List
player.GetItems = function()
end

---플레이어의 창고 아이템 목록을 가져옵니다
---@generic TItem TItem객체가 담긴 리스트
---@return TItem List
player.GetStorageItems = function()
end

---플레이어의 창고에서 아이템을 제거합니다
---@param storageID integer 아이템을 제거할 대상 창고 ID
---@param itemDataID integer 아이템 ID (데이터베이스)
---@param count integer 아이템 갯수
---@return boolean 아이템 회수 성공 여부 (True/False)
player.RemoveStorageItem = function(storageID, itemDataID, count)
end

---현재 유닛이 가진 아이템 정보를 갱신합니다
---@param item TItem 갱신할 대상 아이템
player.SendItemUpdated = function(item)
end
