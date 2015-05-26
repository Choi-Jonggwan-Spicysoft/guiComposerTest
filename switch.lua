-------------------------------------------------------------------------------
-- Switch Test
-------------------------------------------------------------------------------

local sceneName = ...
local composer = require( "composer" )
local scene = composer.newScene( sceneName )

-------------------------------------------------------------------------------

function scene:create( event )
    local sceneGroup = self.view
end

function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase

    if phase == "will" then




        local randNum
        local val1, val2
        local returnVal
        local loopNum = 1000000
        --IF文使用時の時間測定---------------------------------------------------------
        local t1 = os.clock()

        for i=1, loopNum do
            returnVal = nil
            randNum = math.random(1, 10)

            if randNum == 1 then
                val1 = "CASE1"
            elseif randNum == 2 then
                val1 = "CASE2"
            elseif randNum == 3 then
                val1 = "CASE3"
            elseif randNum == 4 then
                val1 = "CASE4"
            elseif randNum == 5 then
                val1 = "CASE5"
            elseif randNum == 6 then
                val1 = "CASE6"
            elseif randNum == 7 then
                val1 = "CASE7"
            elseif randNum == 8 then
                val1 = "CASE8"
            elseif randNum == 9 then
                val1 = "CASE9"
            elseif randNum == 10 then
                val1 = "CASE10"
            else
                val1 = "DEFAULT"
            end

            returnVal = val1
        end

        local e1 = os.clock() - t1
        print("所要時間1 : ", e1)

        --擬似SWITCH文時用時の時間測定--------------------------------------------------
        local t2 = os.clock()
        local switch = {}

        switch = {
            [1] = function()
                val2 = "CASE1"
            end,
            [2] = function()
                val2 = "CASE2"
            end,
            [3] = function()
                val2 = "CASE3"
            end,
            [4] = function()
                val2 = "CASE4"
            end,
            [5] = function()
                val2 = "CASE5"
            end,
            [6] = function()
                val2 = "CASE6"
            end,
            [7] = function()
                val2 = "CASE7"
            end,
            [8] = function()
                val2 = "CASE8"
            end,
            [9] = function()
                val2 = "CASE9"
            end,
            [10] = function()
                val2 = "CASE10"
            end
        }

        for i=1, loopNum do
            returnVal = nil
            randNum = math.random(1, 10)

            returnVal = switch[randNum]

            if returnVal == nil then
                returnVal = "DEFAULT"
            end
        end

        local e2 = os.clock() - t2
        print("所要時間2 : ", e2)




        --IF文使用時の時間測定---------------------------------------------------------
        local t3 = os.clock()

        for i=1, loopNum do
            returnVal = nil
            randNum = math.random(1, 20)

            if randNum == 1 then
                val1 = "CASE1"
            elseif randNum == 2 then
                val1 = "CASE2"
            elseif randNum == 3 then
                val1 = "CASE3"
            elseif randNum == 4 then
                val1 = "CASE4"
            elseif randNum == 5 then
                val1 = "CASE5"
            elseif randNum == 6 then
                val1 = "CASE6"
            elseif randNum == 7 then
                val1 = "CASE7"
            elseif randNum == 8 then
                val1 = "CASE8"
            elseif randNum == 9 then
                val1 = "CASE9"
            elseif randNum == 10 then
                val1 = "CASE10"
            elseif randNum == 11 then
                val1 = "CASE11"
            elseif randNum == 12 then
                val1 = "CASE12"
            elseif randNum == 13 then
                val1 = "CASE13"
            elseif randNum == 14 then
                val1 = "CASE14"
            elseif randNum == 15 then
                val1 = "CASE15"
            elseif randNum == 616 then
                val1 = "CASE16"
            elseif randNum == 17 then
                val1 = "CASE17"
            elseif randNum == 18 then
                val1 = "CASE18"
            elseif randNum == 19 then
                val1 = "CASE19"
            elseif randNum == 20 then
                val1 = "CASE20"
            else
                val1 = "DEFAULT"
            end

            returnVal = val1
        end

        local e3 = os.clock() - t3
        print("所要時間3 : ", e3)

        --擬似SWITCH文時用時の時間測定--------------------------------------------------
        local t4 = os.clock()
        local switch = {}

        local switch = {
            [1] = function()
                val2 = "CASE1"
            end,
            [2] = function()
                val2 = "CASE2"
            end,
            [3] = function()
                val2 = "CASE3"
            end,
            [4] = function()
                val2 = "CASE4"
            end,
            [5] = function()
                val2 = "CASE5"
            end,
            [6] = function()
                val2 = "CASE6"
            end,
            [7] = function()
                val2 = "CASE7"
            end,
            [8] = function()
                val2 = "CASE8"
            end,
            [9] = function()
                val2 = "CASE9"
            end,
            [10] = function()
                val2 = "CASE10"
            end,
            [11] = function()
                val2 = "CASE11"
            end,
            [12] = function()
                val2 = "CASE12"
            end,
            [13] = function()
                val2 = "CASE13"
            end,
            [14] = function()
                val2 = "CASE14"
            end,
            [15] = function()
                val2 = "CASE15"
            end,
            [16] = function()
                val2 = "CASE16"
            end,
            [17] = function()
                val2 = "CASE17"
            end,
            [18] = function()
                val2 = "CASE18"
            end,
            [19] = function()
                val2 = "CASE19"
            end,
            [20] = function()
                val2 = "CASE20"
            end,
        }

        for i=1, loopNum do
            returnVal = nil
            randNum = math.random(1, 20)

            returnVal = switch[randNum]

            if returnVal == nil then
                returnVal = "DEFAULT"
            end
        end

        local e4 = os.clock() - t4
        print("所要時間4 : ", e4)



        --[[
        LOOP : 100000
        所要時間1 : 0.013447   --if 10個 loop
        所要時間2 : 0.009158   --switch 10個 loop
        所要時間3 : 0.018366   --if 20個 loop
        所要時間4 : 0.009889   --switch 20個 loop

        LOOP : 1000000
        所要時間1 : 0.137105   --if 10個 loop
        所要時間2 : 0.093598   --switch 10個 loop
        所要時間3 : 0.200701   --if 20個 loop
        所要時間4 : 0.094756   --switch 20個 loop
        ]]











    elseif phase == "did" then
    end 
end

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if event.phase == "will" then
    elseif phase == "did" then
    end 
end


function scene:destroy( event )
    local sceneGroup = self.view

    -- Called prior to the removal of scene's "view" (sceneGroup)
    -- 
    -- INSERT code here to cleanup the scene
    -- e.g. remove display objects, remove touch listeners, save state, etc
end

-------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-------------------------------------------------------------------------------

return scene
