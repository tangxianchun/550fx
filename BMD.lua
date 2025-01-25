-- 定义白名单表
local whitelist = {
    -- 开发者白名单
    "tangxianchu",
    "TANGXIANCHUN",
    "FENGCROSS",
    "123fa98",
    -- 普通白名单
    "010Zachary_MNB",
    "cmhehebeb",
    "SunjunyuSSS",
    "xwzz123456aq",
    "plmnkoijbvhuygcxfty",
    "mymyaaa9",
    "XHT147",
    "you5z7",
    "dss3144",
    "dulianhui",
    "jfjefaj",
    "qazazure",
    "Bluewitchme",
    "gghjsydhhsijrjdjsfdj",
    "whddnb_boors",
    "as30326",
    "ikunzhyfd",
    "ks_yangnb6666",
    "zkosjsiw",
    "114514phz129",
    "jinitaimei1y55555",
    "a2023742",
    "CN_dyc265",
    "SDjdkskes",
    "CN_sakara",
    "1235yangTianyu",
    "fhscnxdznxgz",
    "ymym999a",
    "fengwenshuopp",
    "6331nhdi",
    "doCj2158",
    "cnmlgbdpgt",
    "shiIbushiKUN",
    "ty13725038308",
    "rtyyydshahaha",
    "951357nvjn",
    "gfj233958",
    "qwrtuiplkjhgfdsa",
    "shadiao_yazi",
    "BBB989898988",
    "QMPW147258",
    "gamemode12678643",
    "roblox_qwq7",
    "0997ikun",
    "cclb_123xh",
    "Harry_Bert",
    "6fhg51",
    "moyingyo",
    "567yydc",
    "qjddie4514",
    "Zsjcb1005",
    "function963",
    "yuihghghg",
    "yuihuiniao",
    "QMQQAQQ",
    "zyzqwp",
    "gvgggcfftfrreww",
    "Qfcwnnz",
    "spring654188",
    "jntmngm114514",
    "widbwibb",
    "jntmngm114514qwq",
    "chinayyds29"
}

-- 示例函数：检查某个用户是否在白名单中
local function checkInWhitelist(user)
    for _, v in ipairs(whitelist) do
        if v == user then
            return true
        end
    end
    return false
end
