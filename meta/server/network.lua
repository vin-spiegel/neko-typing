---@meta

---network.TItem
---@class TItem
---@field count integer
---@field dataID integer
---고유 id
---@field id integer
---@field index integer
---@field inTrade boolean
---@field level integer
---@field options TItemOption
---@field useCloudResource boolean

---@class TItemOption
---@field statID integer
---@field type integer
---@field value number

---@class TGameBuff
---@class TGameAnimation
---@class TGameMapEventPage
---@class TGameItem
---@class TGameCharacter
---@class TGameJob
---@class TGameMapStub
---몬스터 정보가 들어있는 객체입니다
---@class TGameMonster
---@class TGameSkill
---@class TGameStrings
---@class TGameTileset
---공용 이벤트 정보
---@class TGameCommonEvent
---@field conditionSwitch1ID number
---@field l_name string
---@field name string
---@field page TGameMapEventPage
---@field startCondition number
---@field targetPlayerSelector System.Collections.Generic.List
TGameCommonEvent = {}
