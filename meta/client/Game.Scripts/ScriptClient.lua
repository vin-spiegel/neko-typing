---@meta
---게임 클라이언트를 스크립트로 조작할 수 있게 해주는 클래스입니다.
---@class Game.Scripts.ScriptClient
---@field appVersion string 현재 유저의 네코랜드 앱 버전
---@field changeSlot Game.Scripts.ScriptChangeSlot 게임 화면 내의 교체 슬롯
---@field controller Game.Scripts.ScriptController 게임 화면 내의 방향키 패드(D-Pad) 객체
---@field field Game.Scripts.ScriptField 현재 내 플레이어가 접속해 있는 필드 객체
---@field frameRate float
---@field height integer 게임 화면의 세로 크기 (단위: 픽셀)
---@field id string 접속한 게임의 고유 UUID
---@field myPlayerUnit Game.Scripts.ScriptMyPlayerUnit
---@field onTick Game.Scripts.ScriptEventPublisher 매 프레임마다 호출되는 이벤트입니다
---@field quickSlots Game.Scripts.ScriptChangeSlot[] 게임 화면 내의 퀵 슬롯 목록
---@field screenHeight integer 세로 해상도 크기
---@field screenWidth integer 가로 해상도 크기
---@field targetFrameRate integer { get; set; }
---@field width integer 게임 화면의 가로 크기 (단위: 픽셀)
Client = {}

--문자열 변수로 Lua 스크립트를 실행합니다.
---@param text string 스크립트 내용
---@param context table 컨텍스트 테이블
---@return string value Lua 스크립트 호출 후의 리턴 값
Client.DoString = function(text, context)
end

--서버로 Topic에 대한 이벤트를 보냅니다
---@param topic? string 보낼 Topic
---@vararg System.Object[]? 함께보낼 인자들
Client.FireEvent = function(topic, ...)
end

--데이터베이스의 애니메이션 정보를 가져옵니다
---@param id integer 애니메이션ID
---@return TGameAnimation TGameAnimation 데이터베이스의 애니메이션 정보
Client.GetAnimation = function(id)
end

--데이터베이스의 상태(버프) 정보를 가져옵니다
---@param id integer 상태(버프)ID
---@return TGameBuff TGameBuff 데이터베이스의 상태(버프) 정보
Client.GetBuff = function(id)
end

-- 데이터베이스의 캐릭터 정보를 가져옵니다
---@param id integer 캐릭터ID
---@return TGameCharacter TGameCharacter 데이터베이스 캐릭터 정보
Client.GetCharacter = function(id)
end

-- 데이터베이스의 공용 이벤트 정보를 가져옵니다
---@param id integer 캐릭터ID
---@return TGameCommonEvent TGameCommonEvent 공용 이벤트 정보
Client.GetCommonEvent = function(id)
end

-- 그림 파일의 이름을 가져옵니다
---@param imageID string 이름을 가져올 대상 이미지의 ID
---@return string imageName 이미지의 이름(경로)
Client.GetImageName = function(imageID)
end

-- 데이터베이스의 아이템 정보를 가져옵니다
---@param id number 아이템 ID
---@return TGameItem TGameItem 데이터베이스 아이템 정보
Client.GetItem = function(id)
end

-- 데이터베이스의 직업 정보를 가져옵니다
---@param id number 직업 ID
---@return TGameJob TGameJob 데이터베이스의 직업 정보
Client.GetJob = function(id)
end

-- 맵 데이터 정보를 가져옵니다
---@param id number 맵 ID
---@param parent? TGameMapStub 선택된 맵의 부모 (기본: nil)
---@return TGameMapStub TGameMapStub 맵 데이터 정보
Client.GetMap = function(id, parent)
end

-- 데이터베이스의 몬스터 정보를 가져옵니다
---@param id number 몬스터 ID
---@return TGameMonster TGameMonster 데이터베이스의 몬스터 정보
Client.GetMonster = function(id)
end

--* 특정 레이아웃 페이지를 가져옵니다.
-- 하위 컨트롤들은 로드되지 않습니다. 이미 로드된 페이지 또한 가져옵니다.
---@param pageName string 가져올 페이지의 이름
---@return Game.Scripts.ScriptPage ScriptPage 가져온 페이지
Client.GetPage = function(pageName)
end

--* 데이터베이스의 스킬 정보를 가져옵니다
---@param id integer 스킬 ID
---@return TGameSkill TGameSkill 데이터베이스의 스킬 정보
Client.GetSkill = function(id)
end

--* 데이터베이스의 시스템 글자 정보를 가져옵니다
---@return TGameStrings TGameStrings 데이터베이스 시스템 글자 정보
Client.GetStrings = function()
end

--* 데이터베이스의 타일셋 정보를 가져옵니다
---@param id integer 타일셋 ID
---@return TGameTileset TGameTileset 데이터베이스의 타일셋 정보
Client.GetTileset = function(id)
end

--* 특정 Topic에 대한 이벤트 콜백을 가져옵니다.
-- (클라이언트에서 보낸 특정 Topic에 대한 이벤트를 처리합니다)
---@param topic string 보낼 Topic
---@return Game.Scripts.ScriptEventPublisher ScriptEventPublisher
Client.GetTopic = function(topic)
end

--* Http GET 요청을 보내고, 데이터를 가져옵니다
---@param url string URL주소
---@param callback Closure
---@return boolean resolve
Client.HttpGet = function(url, callback)
end

--* Http POST 요청을 보내고, 데이터를 가져옵니다
---@param url string URL주소
---@param data table
---@param callback Closure
---@return boolean resolve
Client.HttpPost = function(url, data, callback)
end

--* 모든 실행중인 스크립트들을 중지하고 다시 로드합니다
Client.InitScript = function()
end

--* 가방 UI 팝업이 열려있는지 확인합니다
Client.IsShowBag = function()
end

--* 도감 UI 팝업이 열려있는지 확인합니다
Client.IsShowCollection = function()
end

--* 파티 UI 팝업이 열려있는지 확인합니다
Client.IsShowParty = function()
end

--* 스킬 UI 팝업이 열려있는지 확인합니다
Client.IsShowSkills = function()
end

--* 스탯 UI 팝업이 열려있는지 확인합니다
Client.IsShowStats = function()
end

--* 특정 레이아웃 페이지를 로드합니다.
--
-- *이미 로드된 페이지는 다시 로드됩니다. 페이지가 로드될 때 하위 컨트롤들 또한 함께 로드됩니다*
---@param pageName string 로드할 페이지의 이름
---@return Game.Scripts.ScriptPage ScriptPage 로드한 페이지
Client.LoadPage = function(pageName)
end

--* 지정한 URL을 엽니다
---@param url string URL주소
Client.OpenURL = function(url)
end

--* 게임을 종료합니다
Client.Quit = function()
end

--* 다른 게임을 실행합니다
Client.RunGame = function()
end

---* 일정 시간 후에, 정해진 함수를 실행합니다
---@param callback Closure 실행할 함수
---@param t float 실행시간까지의 대기시간 (초)
Client.RunLater = function(callback, t)
end

---* 기본적인 알림 팝업을 표시합니다
---@param text string 사용자에게 보여줄 문구
---@param callback Closure 팝업이 닫혔을 때 호출될 함수
Client.ShowAlert = function(text, callback)
end

---* 가방 UI를 켜거나 끕니다
---@param show boolean 표시 여부
Client.ShowBag = function(show)
end

---* 도감을 켜거나 끕니다
---@param show boolean 표시 여부
Client.ShowCollection = function(show)
end

---* 화면 하단에 위치한 경험치 바를 켜거나 끕니다
---@param show boolean 표시 여부
Client.ShowEXPBar = function(show)
end

---* 파티창의 켜거나 끕니다
---@param show boolean 표시 여부
Client.ShowParty = function(show)
end

---* 스킬창을 켜거나 끕니다
---@param show boolean 표시 여부
Client.ShowSkills = function(show)
end

---* 스탯창을 켜거나 끕니다
---@param show boolean 표시 여부
Client.ShowStats = function(show)
end

---* 상단 패널 (HP 바, MP 바, 버프 패널 등)을 켜거나 끕니다
---@param show boolean 표시 여부
Client.ShowTopUI = function(show)
end

--* 예, 아니오의 선택지가 있는 알림 팝업을 표시합니다
---@param text string 사용자에게 보여줄 문구
---@param callback Closure 팝업이 닫혔을때 호출될 함수
Client.ShowYesNoAlert = function(text, callback)
end
