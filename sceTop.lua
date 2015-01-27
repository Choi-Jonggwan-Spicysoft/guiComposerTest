local sceneName = ...
local composer  = require( "composer" )
local scene     = composer.newScene( sceneName )

--共通で使える動きを読み込む
require("includeAction")
-------------------------------------------------------------------------------

function scene:create( event )
    local sceneGroup = self.view

    --タイトルテキスト-----------------------------------------------------------
    local txtTitle = self:getObjectByTag( "txtTitle" )
    txtTitle.text = "トップシーン"

    --画像の入れ替え-------------------------------------------------------------
    local img1 = self:getObjectByTag( "img1" )
    local img2 = display.newImage( "drawable/player2.png" )
    img2.x, img2.y = img1.x, img1.y
    img1:removeSelf()
    img1 = nil

    --画面遷移ボタン設定----------------------------------------------------------
    --テキスト
    local textBtnLeft   = self:getObjectByTag( "txtLeft" )
    textBtnLeft.anchorX = 0
    textBtnLeft.anchorY = 0
    textBtnLeft.text    = "画面遷移テスト"

    --ボタン
    local btnLeftTop = self:getObjectByTag( "groupLeftBtn" )
    btnLeftTop:addEventListener("touch",
        function( event )
            if event.phase == "began" then
                local options = {
                    effect = "fade",
                    time = 300,
                    isModal = true
                }
                composer.gotoScene( "sceOne", options )
            end
        end
    )

    --ポップアップボタン設定-------------------------------------------------------
    --テキスト
    local textBtnRight   = self:getObjectByTag( "txtRight" )
    textBtnRight.anchorX = 0
    textBtnRight.anchorY = 0
    textBtnRight.text    = "ポップアップテスト"

    --ボタン
    local btnRightTop = self:getObjectByTag( "groupBtnRight" )
    btnRightTop:addEventListener("touch",
        function( event )
            if event.phase == "began" then
                local options = {
                    effect = "fade",
                    time = 300,
                    isModal = true
                }
                composer.showOverlay( "sceTwo", options )
            end
        end
    )
    --textBtnRight:addEventListener("touch", clickBtnPopupOpen(testSetButton2, composer, "ranking2", {effect="fade",time=1000}))
    --textBtnRight:addEventListener("touch", clickBtnPopupOpen(testSetButton2, composer, "ranking2", {}))


    --[[
    "fade"
    "crossFade"
    "zoomOutIn"
    "zoomOutInFade"
    "zoomInOut"
    "zoomInOutFade"
    "flip"
    "flipFadeOutIn"
    "zoomOutInRotate"
    "zoomOutInFadeRotate"
    "zoomInOutRotate"
    "zoomInOutFadeRotate"
    "fromRight" — over current scene
    "fromLeft" — over current scene
    "fromTop" — over current scene
    "fromBottom" — over current scene
    "slideLeft" — pushes current scene off
    "slideRight" — pushes current scene off
    "slideDown" — pushes current scene off
    "slideUp" — pushes current scene off
    --]]

end

function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase

    if phase == "will" then
        -- Called when the scene is off screen and is about to move on screen

    elseif phase == "did" then
        -- Called when the scene is now on screen
        -- 
        -- INSERT code here to make the scene come alive
        -- e.g. start timers, begin animation, play audio, etc
    end 
end

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if event.phase == "will" then
        -- Called when the scene is on screen and is about to move off screen
        --
        -- INSERT code here to pause the scene
        -- e.g. stop timers, stop animation, unload sounds, etc.)
    elseif phase == "did" then
        -- Called when the scene is now off screen
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
