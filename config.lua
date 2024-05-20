Config = {}

Config.Coords = vector3(xx.xx, xx.xx, xx.xx, xx.xx) --  Vector 4 al kral yoksa sv editlemen lazım

Config.Kartitemadi = "gdevsiker"

Config.Itemlist = {
    [1] = {
        ['label'] = "Zırh", 
        ['item'] = "armor", 
        ['count'] = "1", 
        ['price'] = 75000, 
    }, 
    [2] = {
        ['label'] = "Walter Pistol", 
        ['item'] = "weapon_pistol", 
        ['count'] = "1", 
        ['price'] = 1500000, 
    }, 
    [3] = {
        ['label'] = "Vintage Pistol", 
        ['item'] = "weapon_vintagepitol", 
        ['count'] = "1", 
        ['price'] = 2555000, 
    }, 
    [4] = {
        ['label'] = "Maymuncuk", 
        ['item'] = "lockpick", 
        ['count'] = "1", 
        ['price'] = 15000, 
    }, 
    [5] = {
        ['label'] = "Sallama", 
        ['item'] = "weapon_switchblade",
        ['count'] = "1", 
        ['price'] = 250000, 
    }, 
    [6] = {
        ['label'] = "Laptop", 
        ['item'] = "laptop", 
        ['count'] = "1", 
        ['price'] = 150, 
    }, 
    [7] = {
        ['label'] = "Kelepçe Anahtarı", 
        ['item'] = "pkelepceanahtar", 
        ['count'] = "1", 
        ['price'] = 150, 
    }, 
    [8] = {
        ['label'] = "Termit", 
        ['item'] = "thermite", 
        ['count'] = "1", 
        ['price'] = 150, 
    }, 
    [9] = {
        ['label'] = "Aseton", 
        ['item'] = "aseton", 
        ['count'] = "1", 
        ['price'] = 500, 
    }, 
    [10] = {
        ['label'] = "Meth Tepsisi", 
        ['item'] = "methtray", 
        ['count'] = "1", 
        ['price'] = 1500, 
    }, 
    [11] = {
        ['label'] = "Poşet", 
        ['item'] = "poset", 
        ['count'] = "10", 
        ['price'] = 150,
    }, 
    [12] = {
        ['label'] = "Silah Mermisi", 
        ['item'] = "pistol_ammo", 
        ['count'] = "1", 
        ['price'] = 100000,
    }, 
    [13] = {
        ['label'] = "SMG Mermisi", 
        ['item'] = "smg_ammo", 
        ['count'] = "1", 
        ['price'] = 100000,
    }, 
    

}

 Config.bm = vector3(2806.0888671875, 5978.3481445312, 350.70483398438)
 Config.markerboyutu = 1.5

--ped system
Config.pedaq = {

	[1] = { handle = nil, model ="a_c_chimp", coords = vector3(2806.498046875, 5978.8955078125, 350.88192749023), heading = 140.77,  anim = { type = 1, name = "CODE_HUMAN_CROSS_ROAD_WAIT"} }, -- scene
	
}


--discord log
Config.discord = {
    ['webhook'] = 'https://discord.com/api/webhooks/1205915670441893888/_4D1_QLho966iRe8CnJ4XWb6nSJZOd_4o87hKrNDF6_yaaQH8CseneD4P3vUWJaP_VIR', --create webhook link
    ['name'] = 'faruG Blackmarket', -- webhook name
    ['image'] = 'https://cdn.discordapp.com/attachments/987115001078755359/1205915773307060295/image_1.png?ex=65da1b95&is=65c7a695&hm=975d804932efe5d76a9b835fb1052c86ab63f52a7d0a995bcf518402b0c62749&' -- webhook profile photo
}
