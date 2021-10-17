---@meta
---루아 스크립트 상의 함수를 이벤트 등록에 사용 가능하게 해주는 클래스입니다
---@diagnostic disable-next-line: duplicate-doc-class
---@class ScriptEventPublisher
---이 이벤트가 발생했을 때, 호출할 루아 함수를 등록합니다.
---@field Add Closure
---이 이벤트를 호출합니다.
---@field Call System.Object
--- 이 이벤트를 호출합니다. ( table, Object )
---@field Call2 System.Object
--- 등록한 루아 함수를 삭제합니다.
---@field Remove Closure

Server.GetSkill(id).Add(Closure)
Server.GetTopic(topic).Add(Closure)
