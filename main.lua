local KEY_RUHEIURHEIR = _G.WHITELIST_KEY
local DATABASEURL = "https://sheets.googleapis.com/v4/spreadsheets/1T3ADvsjd_TQuh859GujOMHcDKnDXHhVm9xtD89-gc6w/values/Sheet1!C1:C10000?key=AIzaSyDLdFilXrAeI8sZrLJwEzCXoX4fAIGXFcQ"
print("DM ME ON DISCORD IF U SEE THIS")

response = game:HttpGet(DATABASEURL , true)
data = game.HttpService:JSONDecode(response)

function CheckKey()
  for _, a in pairs(unpack(data.values)) do
    if KEY_RUHEIURHEIR == a then
       return true
    else
       return false
    end
 end

if (CheckKey() == true) then
    print("XD")
end
