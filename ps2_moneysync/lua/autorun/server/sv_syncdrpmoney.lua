hook.Add( "playerWalletChanged", "SynMoneyPoints", function( ply, amount, money )
    if IsValid( ply ) then
        ply:PS2_AddStandardPoints( amount )
    end
end )

hook.Add( "Think", "SynMoneyPoints2", function()
    for _,v in pairs( player.GetAll() ) do
        if IsValid( v ) and v.PS2_Wallet and v.PS2_Wallet.points then
            if v:getDarkRPVar( "money" ) ~= v.PS2_Wallet.points then
                v:setDarkRPVar( "money", v.PS2_Wallet.points )
            end
        end
    end
end )