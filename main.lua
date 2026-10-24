local mod = RegisterMod("FluttersCube", 1)

local COLLECTIBLE_ABSOLUTEY_HORRIDDARLING = Isaac.GetItemIdByName("FluttersCube")

local COLLECTIBLE_ABSOLUTEY_HORRIDDARLING_STATS = {
    DamageMultiplier = 0.4,
    TEARS = 0.8,
    SPEED = 0.5
}

function mod.onGameStart(fromsave)
   if not fromsave then
    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, COLLECTIBLE_ABSOLUTEY_HORRIDDARLING, Isaac.GetFreeNearPosition(Vector(0, 0), player.Position), Vector(0, 0), nil)
    end
end

mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.onGameStart)

function mod:onEvaluateCache(player, cacheFlag)
    if player:HasCollectible(COLLECTIBLE_ABSOLUTEY_HORRIDDARLING) then
        if cacheFlag == CacheFlag.CACHE_DAMAGE then
            player.Damage = player.Damage + COLLECTIBLE_ABSOLUTEY_HORRIDDARLING_STATS.DamageMultiplier
        elseif cacheFlag == CacheFlag.CACHE_FIREDELAY then
            player.MaxFireDelay = player.MaxFireDelay * COLLECTIBLE_ABSOLUTEY_HORRIDDARLING_STATS.TEARS
        elseif cacheFlag == CacheFlag.CACHE_SPEED then
            player.MoveSpeed = player.MoveSpeed + COLLECTIBLE_ABSOLUTEY_HORRIDDARLING_STATS.SPEED
        end
    end
end

mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.onEvaluateCache)

function mod:onPlayerUpdate(player)
    local data = player:GetData()
    local itemCount = player:GetCollectibleNum(COLLECTIBLE_ABSOLUTEY_HORRIDDARLING)

    if data.horridDarlingCount ~= itemCount then
        data.horridDarlingCount = itemCount

        player:AddCacheFlags(CacheFlag.CACHE_DAMAGE)
        player:AddCacheFlags(CacheFlag.CACHE_FIREDELAY)
        player:AddCacheFlags(CacheFlag.CACHE_SPEED)

        player:EvaluateItems()
    end
end

mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, mod.onPlayerUpdate)