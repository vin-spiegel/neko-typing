---@meta
--* 서버에서 필드를 관리하는 객체입니다. 하나의 필드에 대응합니다
---@class Commons.Server.Scripts.ScriptField:ScriptObject
---@field channelID integer 필드의 채널 ID
---@field dataID integer 필드의 데이터 ID
---@field dropItems Commones.Server.Scripts.ScriptDropItem[] 해당 필드에 있는 모든 드랍 아이템을 배열 형식으로 가져옵니다
---@field height integer 필드의 세로 크기
---@field width integer 필드의 가로 크기
---@field maxPlayers integer 필드의 최대 플레이어 수
---@field name string 필드의 이름
--* 해당 필드에 드랍 아이템이 들어왔을 때 호출되는 이벤트입니다
---
--- **콜백 함수의 형식:**
--- ```
---  function(player: ScriptField , dropItem: ScriptDropItem)
--- ```
---
---     [1] field: 해당 필드
---     [2] dropItem: 드랍된 아이템
---@field onJoinDropItem ScriptEventPublisher
--* 해당 필드에 유닛이 들어왔을 때 호출되는 이벤트입니다
---
--- **콜백 함수의 형식:**
--- ```
---  function(player: ScriptField , unit: ScriptUnit)
--- ```
---
---     [1] field: 해당 필드
---     [2] unit: 필드에 들어온 유닛
---@field onJoinField ScriptEventPublisher
---@field onLeaveDropItem ScriptEventPublisher
---@field onLeaveField ScriptEventPublisher
---@field playerCount integer
---@field playerUnits ScriptUnit[]
---@field units ScriptUnit[]
