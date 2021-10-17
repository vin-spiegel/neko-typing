---@meta
---@class System.Object
---@class System.Collections.Generic.List --number
---@class Closure

---@class ScriptUnit
---@class ScriptRoomPlayer
---@class ScriptField
---@class ScriptParty
---@class ScriptDropItem
---@class ScriptClan

---게임 서버를 스크립트로 조작할 수 있게 해주는 서버 클래스 입니다.
---
---게임내의 유저 접속, 해제, 채팅 등 게임 내에서 일어나는 이벤트에 이벤트 처리기(리스너)를 추가할 수 있습니다
---@class ScriptServer
--- **클랜이 생성**되었을 때의 **콜백 함수**입니다
---
--- **콜백 함수의 형식:**
--- ```
---  function(player: ScriptRoomPlayer, name: string, joinType: number)
--- ```
---     [1] player : 클랜을 만든 플레이어
---     [2] name : 클랜의 이름
---     [3] joinType : 클랜의 가입 형식 [0: 즉시 가입], [1: 가입 요청], [2: 비공개]
--- **반환값:**
---
---     클랜 생성이 성공했는지 (True: 클랜 생성 성공, False: 클랜 생성 실패)
---@field createClan Closure
--- 유닛의 데미지 계산 공식 콜백 함수입니다 (데미지 공식을 커스텀 할 수 있습니다.)
---
--- **콜백 함수의 형식:**
--- ```
---  function(from: ScriptUnit, to: ScriptUnit, damage: number, skillDataID: number, critical: bool, visible: bool)
--- ```
---     [1] from: 공격 유닛
---     [2] to: 대상 유닛
---     [3] damage: 공격의 데미지
---     [4] skillDataID: 스킬의 데이터 ID
---     [5] critical: 크리티컬 여부
---     [6] visible: 피격 데미지 표시 여부
---
--- **반환값**:
---
---     계산된 데미지, (+ 크리티컬 여부), (+ 피격 데미지 표시 여부)
---@field damageCallback Closure
---현재 게임에 생성된 모든 맵(필드)를 가져옵니다.
---@field fields ScriptField
--- 아이템이 추가되었을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit, item: Titem)
--- ```
---     [1] unit: 아이템이 추가된 유닛
---     [2] item: 추가된 아이템
---@field onAddItem ScriptEventPublisher
--- 유닛이 골드(게임 머니)로 아이템을 샀을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit, itemID: number, count: number)
--- ```
---     [1] unit: 아이템을 산 유닛
---     [2] itemID: 산 아이템의 ID
---     [3] count: 산 아이템의 개수
---@field onBuyGameMoneyItem ScriptEventPublisher
--- 유저가 큐브 결제로 게임 내 유료 아이템을 구매했을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(player: ScriptRommPlayer, itemID: number, amount: number)
--- ```
---     [1] player: 구매한 플레이어
---     [2] itemID: 구매한 아이템의 ID
---     [3] amount: 사용한 큐브의 개수
---@field onBuyItem ScriptEventPublisher
--- 다른 상태 실행 시에 기존 상태가 종료되며 호출되는 이벤트입니다
--- **호출될 함수의 인자 형식:**
--- ```
---  function(state: number)
--- ```
---     [1] state: 해당 State의 번호
---@field onEndState ScriptEventPublisher
--- 게임에 플레이어가 들어왔을 때 호출되는 이벤트입니다.
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(player: ScriptRoomPlayer)
--- ```
---     [1] player: 접속한 플레이어 객체
---@field onJoinPlayer ScriptEventPublisher
--- 플레이어가 게임을 나갔을 때 호출되는 이벤트입니다.
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(player: ScriptRoomPlayer)
--- ```
---     [1] player: 나간 플레이어 객체
---
---     Tip: 단 해당 함수는 네트워크 불안정 등의 요소를 고려해, 유저와의 연결이 끊긴 후 180초(3분) 뒤에 호출됩니다
---@field onLeavePlayer ScriptEventPublisher
--- 펫 유닛의 레벨이 올랐을 때 호출되는 이벤트입니다.
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit, level: number)
--- ```
---     [1] unit: 레벨이 오른 대상 펫 유닛
---     [2] level: 펫 레벨
---@field onPetUnitLevelUp ScriptEventPublisher
--- 유닛이 스탯을 갱신했을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit)
--- ```
---     [1] unit: 스탯을 갱신한 유닛
---@field onRefreshStats ScriptEventPublisher
--- 아이템이 제거되었을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit, item: Titem)
--- ```
---     [1] unit: 아이템이 제거된 유닛
---     [2] item: 제거된 아이템
---@field onRemoveItem ScriptEventPublisher
--- 플레이어가 말했을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit, text: string)
--- ```
---     [1] unit: 말한 플레이어 객체
---     [2] text: 플레이어가 말한 내용
---@field onSay ScriptEventPublisher
--- 유닛이 골드(게임 머니) 아이템을 상점에 팔았을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit, itemID: number, count: number)
--- ```
---     [1] unit: 아이템을 판 유닛
---     [2] itemID: 판 아이템의 ID
---     [3] count: 판 아이템의 개수
---@field onSellGameMoneyItem ScriptEventPublisher
--- Server.StartState()로 특정 상태를 실행했을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(state: number)
--- ```
---     [1] state: 해당 State 번호
---@field onStartState ScriptEventPublisher
--- 매 프레임마다 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(dt: float)
--- ```
---     [1] dt: Delta time
---@field onTick ScriptEventPublisher
--- 거래가 정상적으로 완료되었을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(sender: ScriptUnit, receive: ScriptUnit, senderItems: table, receiverItems: table)
--- ```
---     [1] sender: 거래를 시작한 유닛
---     [2] receiver: 거래를 받은 유닛
---     [3] senderItems: 거래를 시작한 유닛이 보낸 아이템 정보 테이블 (TItem)
---     [4] receiverItems: 거래를 받은 유닛이 보낸 아이템 정보 테이블 (TItem)
---@field onTradeDone ScriptEventPublisher
--- 유닛이 죽었을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(target: ScriptUnit, attacker: ScriptUnit)
--- ```
---     [1] target: 죽은 유닛 객체
---     [2] attacker: 공격한 유닛 객체 (nil 이면 자살)
---@field onUnitDead ScriptEventPublisher
--- 유닛의 레벨이 올랐을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit)
--- ```
---     [1] unit: 레벨업한 대상 유닛 객체
---@field onUnitLevelUp ScriptEventPublisher
--- 유닛이 아이템을 사용했을 때 호출되는 이벤트입니다
---
--- **호출될 함수의 인자 형식:**
--- ```
---  function(unit: ScriptUnit, item: Titem)
--- ```
--- [1] unit: 아이템을 사용한 유닛
--- [2] item: 사용한 아이템
---@field onUseItem ScriptEventPublisher
--- 유닛이 파티에 참가할 때 호출되는 콜백 함수입니다
---
--- **콜백 함수의 형식:**
--- ```
---  function(player: ScriptRoomPlayer, party: ScriptParty)
--- ```
--- **반환값:**
---
---     유닛이 파티에 참가되었는가 (True: 참가, False: 참가하지 못함)
---
---     [1] player: 참가할 유닛
---     [2] party: 참가할 파티
---@field playerJoinPartyCallback Closure
--- 유닛이 파티에서 나갈 때 호출되는 콜백 함수입니다
---
--- **콜백 함수의 형식:**
--- ```
---  function(player: ScriptRoomPlayer, party: ScriptParty)
--- ```
--- **반환값:** 없음
---
---     [1] player: 파티에서 나갈 유닛
---     [2] party: 나갈 파티
---@field playerLeavePartyCallback Closure
--- 현재 게임에 접속해 있는 플레이어 목록
---@field players ScriptRoomPlayer
--- 몬스터가 죽었을 때의 커스텀 보상 콜백 함수입니다
---
--- **콜백 함수의 형식:**
--- ```
---  function(unit: ScriptUnit, monster: ScriptUnit, damage: int)
--- ```
--- **반환값:** 없음
---
---     [1] unit: 몬스터를 죽인 유닛
---     [2] monster: 죽은 몬스터 유닛
---     [3] damage: 입힌 데미지
---@field rewardCallback Closure
--- 플레이어가 말했을 때의 콜백 함수입니다
---
--- **콜백 함수의 형식:**
--- ```
---  function(player: ScriptRoomPlayer , text: string)
--- ```
--- **반환값:** 없음
---
---     [1] player: 말한 플레이어
---     [2] text: 플레이어가 말한 대사
---@field sayCallback Closure
Server = {}

---드롭 아이템을 생성합니다
---@param dataID number 아이템의 데이터ID
---@param count number 갯수
---@param level number 아이템 레벨(기본: 0)
---@return ScriptDropItem ScriptDropItem 생성된 드롭 아이템 객체
Server.CreateDropItem = function(dataID, count, level)
end

---이벤트 유닛을 생성합니다
---@param infoList? table { name?: string, imagePath?: string, fixedDirection?: boolean, startCondition?: number }
---@param scripts? string 문자열로 된 루아 스크립트
---@return ScriptUnit ScriptUnit 유닛객체
Server.CreateEventUnit = function(infoList, scripts)
end

---특정 맵 ID의 필드를 임시로 생성합니다
---@param mapID number 생성할 맵 데이터ID
---@return ScriptField ScriptField 생성된 필드 객체
Server.CreateField = function(mapID)
end

---아이템을 생성합니다
---@param dataID number 아이템 ID (데이터베이스)
---@param count number 갯수
---@return TItem TItem Titem객체
Server.CreateItem = function(dataID, count)
end

---파티를 생성합니다
---@param name string 파티이름
---@param maxPlayer number 파티의 최대 플레이어 수 (최대: 4)
---@return ScriptParty ScriptParty 파티 정보 객체
Server.CreateParty = function(name, maxPlayer)
end

---스크립트의 작동 시간을 측정합니다.
---
---출력 경로는 해당 프로젝트 폴더/ScriptPlayTimeAverage.txt 의 이름으로 나옵니다.
---
---테스트 플레이에서만 사용 가능합니다.
Server.ExportAverage = function()
end

---클라이언트로 Topic에 대해 이벤트를 보냅니다.
---@param topic string 보낼 Topic
---@vararg string 함께 보낼 인자들
Server.FireEvent = function(topic, ...)
end

---데이터베이스의 애니메이션 정보를 가져옵니다
---@param id number 애니메이션 ID
---@return TGameAnimation TGameAnimation 데이터베이스의 애니메이션 정보
Server.GetAnimation = function(id)
end

---데이터베이스의 상태(버프) 정보를 가져옵니다
---@param id number 상태(버프) ID
---@return TGameBuff TGameBuff 데이터베이스의 상태(버프) 정보
Server.GetBuff = function(id)
end

---데이터베이스의 캐릭터 정보를 가져옵니다
---@param id number 캐릭터 ID
---@return TGameCharacter TGameCharacter 데이터베이스 캐릭터 정보
Server.GetCharacter = function(id)
end

---클랜정보를 id로 가져옵니다
---@param id number 클랜 ID
---@return ScriptClan ScriptClan 클랜 정보
Server.GetClanByID = function(id)
end

---클랜정보를 이름로 가져옵니다
---@param name string 클랜 이름
---@return ScriptClan ScriptClan 클랜 정보
Server.GetClanByID = function(name)
end

---클랜정보를 이름로 가져옵니다
---@param id number 이벤트 ID
---@return TGameCommonEvent TGameCommonEvent 공용 이벤트 정보
Server.GetCommonEvent = function(id)
end

---특정 맵 ID의 필드를 가져옵니다.
---@param mapID number 가져올 맵 데이터 ID
---@param channelID number 채널 ID
---@return ScriptField ScriptField ID에 맞는 필드 객체
Server.GetField = function(mapID, channelID)
end

---데이터베이스 아이템 정보
---@param id number 아이템 ID
---@return TGameItem TGameItem 데이터베이스 아이템 정보
Server.GetItem = function(id)
end

---데이터베이스의 직업 정보를 가져옵니다
---@param id number 직업 ID
---@return TGameJob TGameJob 데이터베이스의 직업 정보
Server.GetJob = function(id)
end

---맵 데이터 정보를 가져옵니다
---@param id number 맵 ID
---@param parent TGameMapStub 선택된 맵의 부모 (기본: nil)
---@return TGameMapStub TGameMapStub 맵 데이터 정보
Server.GetMap = function(id, parent)
end

---데이터베이스의 몬스터 정보를 가져옵니다
---@param id number 몬스터 ID
---@return TGameMonster TGameMonster 데이터베이스의 몬스터 정보
Server.GetMonster = function(id)
end

---몬스터의 AI를 가져옵니다
---@param id number 대상 몬스터의 ID
---@return Closure Closure AI 클로저 함수
Server.GetMonsterAI = function(id)
end

---펫의 AI를 가져옵니다
---@param id integer 대상 펫의 ID
---@return Closure Closure AI 클로저 함수
Server.GetPetAI = function(id)
end

---데이터베이스의 스킬 정보를 가져옵니다
---@param id number 스킬 ID
---@return TGameSkill TGameSkill 데이터베이스의 스킬 정보
Server.GetSkill = function(id)
end

---데이터베이스의 시스템 용어 정보를 가져옵니다
---@return TGameStrings TGameStrings 데이터베이스의 시스템 용어 정보
Server.GetStrings = function()
end

---데이터베이스의 타일셋 정보를 가져옵니다
---@param id integer 타일셋 id
---@return TGameTileset TGameTileset 데이터베이스의 타일셋 정보
Server.GetTileset = function(id)
end

---특정 Topic에 대한 이벤트 콜백을 가져옵니다
---
---(클라이언트에서 보낸 특정 Topic에 대한 이벤트를 처리합니다)
---@param topic string 보낼 Topic
---@return ScriptEventPublisher ScriptEventPublisher 이벤트 콜백
Server.GetTopic = function(topic)
end

---월드 변수 값을 가져옵니다
---@param id integer 변수 ID
---@return number
Server.GetWorldVar = function(id)
end

---월드 변수 값을 가져옵니다 (문자열 형식)
---@param id integer 변수 ID
---@return string
Server.GetWorldStringVar = function(id)
end

---Http GET 요청을 보내고, 데이터를 가져옵니다
---@param url string 요청을 보낼 대상 URL
---@param callback Closure 가져온 데이터를 처리하는 콜백
---@return boolean
Server.HttpGet = function(url, callback)
end

---Http POST 요청을 보내고, 데이터를 가져옵니다
---@param url string 요청을 보낼 대상 URL
---@param data table 루아 테이블 형식 데이터
---@param callback Closure 가져온 데이터 처리 콜백
---@return boolean
Server.HttpPost = function(url, data, callback)
end

---Http POST 요청을 보내고, 데이터를 가져옵니다
---@param url string 요청을 보낼 대상 URL
---@param data table 루아 테이블 형식 데이터
---@param callback Closure 가져온 데이터 처리 콜백
---@return boolean
Server.HttpPost = function(url, data, callback)
end

---정해진 시간 후에, 함수를 실행합니다.
---@param callback Closure 실행할 함수
---@param t number 실행까지의 대기시간(초)
Server.RunLater = function(callback, t)
end

---가운데에 문자열을 표시합니다
---@param label string 센터 라벨을 표시합니다
Server.SendCenterLabel = function(label)
end

---가운데에 문자열을 표시합니다
---@param msg string 표시할 텍스트
---@param color number 색 unit color ex) 4294967295U
Server.SendSay = function(msg, color)
end

---몬스터의 AI를 등록합니다
---@param id integer AI를 적용할 대상 몬스터의 데이터 ID
---@param closure Closure AI 로직 함수
Server.SetMonsterAI = function(id, closure)
end

---특정 캐릭터로 등록된 펫에 적용되는 AI를 등록합니다
---@param id integer AI를 적용할 펫의 캐릭터 ID
---@param closure Closure AI 로직 함수
Server.SetPetAI = function(id, closure)
end

---월드 변수 값을 가져옵니다 (문자열 형식)
---@param id integer 변수 ID
---@param value string
Server.SetWorldStringVar = function(id, value)
end

---월드 변수 값을 설정합니다
---@param id integer 변수 ID
---@param value number
Server.SetWorldVar = function(id, value)
end

---정해진 시간 후에 특정한 State를 실행합니다.
---@param state integer 실행할 State
---@param time number 실행 시간
Server.StartState = function(state, time)
end
