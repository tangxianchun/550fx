local originalWhitelist = {
    --开发者白名单
    ["tangxianch"] = true,
    ["TANGXIANCHUN"] = true,
    ["FENGCROSS"] = true,
    ["123fa98"] = true,
    --普通白名单
    ["010Zachary_MNB"] = true,
    ["cmhehebeb"] = true,
    ["SunjunyuSSS"] = true,
    ["xwzz123456aq"] = true,
    ["plmnkoijbvhuygcxfty"] = true,
    ["mymyaaa9"] = true,
    ["XHT147"] = true,
    ["you5z7"] = true,
    ["dss3144"] = true,
    ["dulianhui"] = true,
    ["jfjefaj"] = true,
    ["qazazure"] = true,
    ["Bluewitchme"] = true,
    ["gghjsydhhsijrjdjsfdj"] = true,
    ["whddnb_boors"] = true,
    ["as30326"] = true,
    ["ikunzhyfd"] = true,
    ["ks_yangnb6666"] = true,
    ["zkosjsiw"] = true,
    ["114514phz129"] = true,
    ["jinitaimei1y55555"] = true,
    ["a2023742"] = true,
    ["CN_dyc265"] = true,
    ["SDjdkskes"] = true,
    ["CN_sakara"] = true,
    ["1235yangTianyu"] = true,
    ["fhscnxdznxgz"] = true,
    ["ymym999a"] = true,
    ["fengwenshuopp"] = true,
    ["6331nhdi"] = true,
    ["xwzz123456aq"] = true,
    ["doCj2158"] = true,
    ["cnmlgbdpgt"] = true,
    ["shiIbushiKUN"] = true,
    ["ty13725038308"] = true,
    ["rtyyydshahaha"] = true,
    ["951357nvjn"] = true,
    ["gfj233958"] = true,
    ["qwrtuiplkjhgfdsa"] = true,
    ["shadiao_yazi"] = true,
    ["BBB989898988"] = true,
    ["QMPW147258"] = true,
    ["gamemode12678643"] = true,
    ["roblox_qwq7"] = true,
    ["0997ikun"] = true,
    ["cclb_123xh"] = true,
    ["Harry_Bert"] = true,
    ["6fhg51"] = true,
    ["moyingyo"] = true,
    ["567yydc"] = true,
    ["qjddie4514"] = true,
    ["Zsjcb1005"] = true,
    ["xwzz123456aq"] = true,
    ["SunjunyuSSS"] = true,
    ["cmhehebeb"] = true,
    ["plmnkoijbvhuygcxfty"] = true,
    ["function963"] = true,
    ["Bluewitchme"] = true,
    ["yuihghghg"] = true,
    ["yuihuiniao"] = true,
    ["QMQQAQQ"] = true,
    ["zyzqwp"] = true,
    ["as30326"] = true,
    ["gvgggcfftfrreww"] = true,
    ["XHT147"] = true,
    ["dss3144"] = true,
    ["you5z7"] = true,
    ["dulianhui"] = true,
    ["jfjefaj"] = true,
    ["qazazure"] = true,
    ["gghjsydhhsijrjdjsfdj"] = true,
    ["whddnb_boors"] = true,
    ["Qfcwnnz"] = true,
    --["lyklsans"] = true,
    ["spring654188"] = true,
    ["jntmngm114514"] = true,
    ["widbwibb"] = true,
    ["jntmngm114514qwq"] = true,
    ["chinayyds29"] = true
}
else
-- 定义用户ID白名单表
local userIdWhitelist = {
    [3779526437] = true, -- 请将这些示例ID替换为实际的用户ID
    [987654321] = true
}

--[[定义检查用户ID是否在白名单的函数]]
local function checkUserIdInWhitelist()
    local player = game.Players.LocalPlayer
    if not player then
        return false
    end
    local userId = player.UserId
    return userIdWhitelist[userId] ~= nil
end

--[[ 示例使用，假设在某个需要检查的地方调用
if checkUserIdInWhitelist() then
    print("该玩家在用户ID白名单中，可以执行相关操作")
    -- 在这里添加允许执行的游戏逻辑代码，例如解锁特殊功能、进入特定区域等
else
    print("该玩家不在用户ID白名单中，限制相关操作")
    -- 在这里添加限制操作的代码，例如禁止使用某些道具、禁止访问特定场景等
ended]]
