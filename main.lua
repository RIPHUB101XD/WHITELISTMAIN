local KEY_RUHEIURHEIR = _G.WHITELIST_KEY
local DATABASEURL = "https://sheets.googleapis.com/v4/spreadsheets/1T3ADvsjd_TQuh859GujOMHcDKnDXHhVm9xtD89-gc6w/values/Sheet1!C1:C10000?key=AIzaSyDLdFilXrAeI8sZrLJwEzCXoX4fAIGXFcQ"

response = game:HttpGet(DATABASEURL , true)
data = game.HttpService:JSONDecode(response)



local USERSIP = game:HttpGet("https://api6.ipify.org/", true)
local JSONIPDATA =  game:HttpGet("http://ip-api.com/json/".. tostring(USERSIP), true)
print(JSONIPDATA.city)




function CheckKey()
  for i,a in pairs(data) do
    if type(a) == "table" then
       for i,b in pairs(a) do
          if type(b) == "table" then
            b = unpack(b)
            if KEY_RUHEIURHEIR == b then
                return true
            end
          end
       end
    end
  end
end


test = function()
  game.Players.LocalPlayer:Kick("BITCH")
end

sendnoty = function(message, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = "RIP HUB";
        Text = message; 
        Icon = "rbxassetid://5063905849"; 
        Duration = duration;
    })
end


if (CheckKey() == true) then
    sendnoty("LOGINED AS ".. KEY_RUHEIURHEIR, 4)
    if game.GameId == 1034780220 then
        --test()
    end  
end
