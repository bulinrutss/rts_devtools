local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")

func = {}
Tunnel.bindInterface("rts_devtools", func)

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

local webhook = "https://discord.com/api/webhooks/854771015297007626/opEslkZyzyum8ir3nUbtmUTbkP4zCTRw83PxPoXO9XYTvvG2tCdP7GnzT5BX0L_FR9on"
function func.Punicao()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
		vRP.kick(source,'! vRP_lone_wolf#1109 MANDOU BEIJINHOS PARA VOCÊ VOLTE SEMPRE xD !')
		vRP.setBanned(user_id,1)
        SendWebhookMessage(webhook, "ANTI DEVTOOLS     [ID]: "..user_id.."  [KICKADO]		[MOTIVO: ACESSANDO O DEVTOOLS]	")
    end
end