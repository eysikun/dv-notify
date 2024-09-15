----------------------------------------------QBCORE-----------------------------------------------------

qb-core/client/function   ---  Somewhere around line 80, you will find the function that needs to be replaced. ---

    >>>------->>>> function QBCore.Functions.Notify(text, textype, length)  <<<---------------  this need to be replaced  ---------<<<<
    
    function QBCore.Functions.Notify(text, texttype, length)
        if type(text) == "table" then
            local ttext = text.text or 'Placeholder'
            local caption = text.caption or 'Placeholder'
            texttype = texttype or 'primary'
            length = length or 5000
    
            local color
            if texttype == 'error' then
                color = 2 -- Error
            elseif texttype == 'warning' then
                color = 3 -- Warning
            else
                color = 1 -- Normal / Primary
            end
    
            exports['notifications']:sendnotify(text, color, length, caption)
        else
            texttype = texttype or 'primary'
            length = length or 5000
    
            local color
            if texttype == 'error' then
                color = 2 -- Error
            elseif texttype == 'warning' then
                color = 3 -- Warning
            else
                color = 1 -- Normal / Primary
            end
    
            exports['notifications']:sendnotify(text, color, length)
        end
    end
        
    ---------------------------------------------------------EXPORT------------------------------------------------------
    
    exports['notifications']:sendnotify('De-V-aLtu!', 2, 5000)
    
    