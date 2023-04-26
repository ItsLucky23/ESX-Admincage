RegisterNetEvent('admincage:handler')
AddEventHandler('admincage:handler', function(args)

    local _source = source

    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.getGroup() == 'admin' then

        if args[1] == 'true' then

            SetPlayerRoutingBucket(_source, 1)

        elseif args[1] == 'false' then

            SetPlayerRoutingBucket(_source, 0)

        end

        if #args > 0 then

            for i = 1, #args do

                if i ~= 1 then

                    if GetPlayerRoutingBucket(args[i]) ~= 0 then

                        SetPlayerRoutingBucket(args[i], 0)

                    else

                        SetPlayerRoutingBucket(args[i], 1)

                    end

                end

            end

        end

    end

end)