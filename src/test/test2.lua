---------------------------------------------------------------------------------------------------
-- /* 판매 중개 시스템 (연구 중)*/
---------------------------------------------------------------------------------------------------
function CreateE(myName, x, y)
    -- 유저 이름을 기준으로 중개인 이름 설정
    local EventName = myName .. "의 중개인"

    -- 유닛이나 필드 예외처리
    if unit == nil or unit.field == nil then
        unit.SendCenterLabel("<size=15><color=Red>잘못된 접근입니다. 잠시 후 다시 시도하여 주세요.</color></size>")
        return
    end

    -- 중복이나 이름 겹침 경우 처리
    if unit.field.GetEventUnitByName(EventName) then
        unit.SendCenterLabel("<size=15><color=Red>중매인을 이미 등록하셨습니다!\n중개는 중복하여 등록할 수 없습니다.</color></size>")
        return
    end

    -- 이벤트 유닛 커맨드를 스크립트 형태(문자열)로 작성
    local Scripts =
        string.format(
        [[
    function EventNamePrint()
        if unit.player.name == event.customData.master then
            unit.SendCenterLabel('<color=yellow>안녕하세요 주인님,\n수정하실 것이 있나요?</color>')
        else
            unit.SendCenterLabel('<color=yellow>안녕하세요 '..unit.player.name..'님,\n'..event.name..'입니다.</color>')
        end
        Server.SetWorldStringVar(1, event.customData.createAt)
        unit.StartGlobalEvent(0)
    end
    EventNamePrint()
    ]],
        EventName,
        EventName,
        EventName
    )

    -- 이벤트 유닛 (중개인 용도) 생성
    local EventUnit =
        Server.CreateEventUnit(
        {
            name = EventName,
            imagePath = "Characters/동복_여학생1.png",
            fixedDirection = true,
            startCondition = 0
        },
        Scripts
    )

    -- 이벤트 유닛 필드로 등장
    local Xpoint, Ypoint = x * 32 + 16, -y * 32 + 16
    unit.SendCenterLabel("<size=15><color=yellow>중개인이 정상 등록 되었습니다!</color></size>")
    unit.field.JoinUnit(EventUnit, Point(Xpoint, Ypoint))
    EventUnit.customData.createAt = os.date("%Y년 %m월 %d일 %H시 %M분 %S초", os.time() + 32400)
    EventUnit.customData.master = unit.player.name
end
