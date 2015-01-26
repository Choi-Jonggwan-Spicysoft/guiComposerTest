-------------------------------------------------------------------------------
-- 共通アクション
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- ボタンクリック時の動き
-- obj : 対象オブジェクト
-- act : アクション
-------------------------------------------------------------------------------
local function divideParam(...)
	local selects, param
	for i = 1, select("#", ...) do
		local x = select(i, ...)
		if x[1] then
			selects = x
		else
			param = x
		end
	end
	return param
end


-------------------------------------------------------------------------------
-- ポップアップを開く
-- obj 		: クリックに使用したボタンオブジェクト
-- composer : composer
-- target   : targetファイル名
-------------------------------------------------------------------------------
function clickBtnPopupOpen(obj, composer, target, ...)

	local param = divideParam(...)

	if param.effect == nil then param.effect = "zoomInOut" end
	if param.time   == nil then param.time   = 100 end

    return function(event)
        if event.phase == "began" then
			--obj ボタンアニメモーションを入れる予定

        	local options = {
        		effect = param.effect,
        		time   = param.time,
        		isModal= true
        	}
        	composer.showOverlay( target, options )

            print("CLICK BUTTON")
        end
    end	
end

-------------------------------------------------------------------------------
-- ポップアップを閉じる
-- obj 		: クリックに使用したボタンオブジェクト
-- composer : composer
-- target   : targetファイル名
-------------------------------------------------------------------------------
function clickBtnPopupClose(obj, composer, ...)

	local param = divideParam(...)

	if param.effect == nil then param.effect = "zoomInOutFade" end
	if param.time   == nil then param.time   = 100 end

    return function(event)
        if event.phase == "began" then

        	composer.hideOverlay( param.effect, param.time )

            print("CLICK CLOSED BUTTON")
        end
    end	

end





function clickBtn(obj, act)
    return function(event)    
        if event.phase == "began" then
            print("CLICK BUTTON")
            obj.xScale = 0.45; obj.yScale = 0.45
        end
    end
end

function closeBtn(obj, composer)
    return function(event)    
        if event.phase == "began" then
            print("CLICK BUTTON")

            obj.xScale = 0.45; obj.yScale = 0.45
            --composer.hideOverlay( "zoomInOutFade", 200 )
        end
    end
end
