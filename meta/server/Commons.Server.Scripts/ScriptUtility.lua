---@meta
--* 여러 유틸리티 함수가 있는 스크립트 클래스입니다.
---@class Utility:System.Object
Utility = {}

--*확장 함수
---@param item1 TItem
---@param item2 TItem
---@deprecated
Utility.IsSameKindOfItem = function(item1, item2)
end

--* 아이템에 옵션을 추가합니다
---@param item TItem 옵션을 추가할 대상 아이템 객체 (TItem)
---@param type integer 타입 값 (1: 직업 (+), 2: 직업 (%), 3: 아이템 (+), 4: 아이템 (%))
---@param statID NekoStats
---@param value integer 변경할 값
Utility.AddItemOption = function(item, type, statID, value)
end

--* 아이템의 옵션들을 가져옵니다
---@param item TItem 옵션을 가져올 대상 아이템 (TItem)
---@return TItemOption[] TItemOptions
Utility.GetItemOptions = function(item)
end

--* JSON 파일을 파싱하여 결과를 반환합니다.
---@param json string JSON 형식 문자열
---@return table jsonTable JSON 형식 문자열을 기반으로 생성된 테이블
Utility.JSONParse = function(json)
end

--* 테이블을 JSON 문자열로 변환합니다
---@param t table 대상 테이블
---@return string json 테이블을 기반으로 생성된 JSON 형식 문자열
Utility.JSONSerialize = function(t)
end

--* 아이템의 옵션을 삭제합니다
---@param item TItem 옵션을 삭제할 대상 아이템 객체 (TItem)
---@param option TItemOption 삭제할 옵션
---@return boolean 성공여부
---@overload fun(item: TItem, index:integer):boolean
Utility.RemoveItemOption = function(item, option)
end

--* 아이템의 옵션을 변경합니다
---@param option TItemOption 아이템 옵션
---@param type integer 타입 값 (1: 직업 (+), 2: 직업 (%), 3: 아이템 (+), 4: 아이템 (%))
---@param statID NekoStats
---@param value integer 변경할 값
Utility.SetItemOption = function(option, type, statID, value)
end
local a = Client.GetItem()
