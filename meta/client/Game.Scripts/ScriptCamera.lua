---@meta
--게임 내 플레이어를 바라보는 카메라 클래스입니다
---@class Game.Scripts.ScriptCamera
---@field isLandscape boolean 가로/세로 모드 (True: 가로, False: 세로)
---@field movementType integer 카메라의 이동 방식 (기본값: 0)
---@field orthographicSize number 카메라의 줌 사이즈 { get; set; }
---@field position Game.Scripts.ScriptPoint 카메라의 위치 { get; set; }
---@field smoothMoveScale number 부드러운 카메라 이동 사용시의 카메라 이동 속도 스케일 { get; set; }
---@field target Game.Scripts.ScriptUnit 카메라가 바라보는 대상 { get; set; }
Camera = {}
