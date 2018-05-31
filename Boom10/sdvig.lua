function CanClickRight( tableGame )
	for j = 1,4 do
		if tableGame[4][j] == 0 then
			if tableGame[3][j] ~= 0 then
				return true
			elseif tableGame[2][j] ~= 0 then
				return true
			elseif  tableGame[1][j] ~= 0 then
				return true
			end
		end
		if tableGame[3][j] == 0 then
			if tableGame[2][j] ~= 0 then
				return true
			elseif tableGame[1][j] ~= 0 then
				return true
			end
		end
		if tableGame[2][j] == 0 then
			if tableGame[1][j] ~= 0 then
				return true
			end
		end
	end

	for j = 1,4 do
		if tableGame[4][j] == tableGame[3][j] and tableGame[4][j] > 0 then
			return true
		end
		--число - звезда
		if tableGame[3][j] == -2 and tableGame[4][j] > 0 then
			return true
		end 

		if tableGame[4][j] == -2 and tableGame[3][j] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[4][j] == -2 and tableGame[3][j] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[3][j] == -1 and (tableGame[4][j] > 0 or tableGame[4][j] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[4][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
			return true
		end
		-- бомба - бомба
		if tableGame[4][j] == -1 and tableGame[3][j] == -1 then
			return true
		end
		
		if tableGame[2][j] == tableGame[1][j] and tableGame[2][j] > 0 then
			return true
		end
		--число - звезда
		if tableGame[1][j] == -2 and tableGame[2][j] > 0 then
			return true
		end 

		if tableGame[2][j] == -2 and tableGame[1][j] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[2][j] == -2 and tableGame[1][j] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[1][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
			return true
		end

		-- бомба - что-то
		if tableGame[2][j] == -1 and (tableGame[1][j] > 0 or tableGame[1][j] == -2) then
			return true
		end

		-- бомба - бомба
		if tableGame[2][j] == -1 and tableGame[1][j] == -1 then
			return true
		end
		
		if tableGame[3][j] == tableGame[2][j] and tableGame[2][j] > 0 then
			return true
		end
		--число - звезда
		if tableGame[2][j] == -2 and tableGame[3][j] > 0 then
			return true
		end 

		if tableGame[3][j] == -2 and tableGame[2][j] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[2][j] == -2 and tableGame[3][j] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[3][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
			return true
		end

		-- бомба - что-то
		if tableGame[2][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
			return true
		end

		-- бомба - бомба
		if tableGame[2][j] == -1 and tableGame[3][j] == -1 then
			return true
		end
	end

	return false
end

function AddLineRight( tableGame )
	for j = 1,4 do
		local firstadd = false
		local secondadd = false 
		--число - число
		if tableGame[4][j] == tableGame[3][j] and tableGame[4][j] > 0 then
			tableGame[4][j] = tableGame[4][j] + 1
			tableGame[3][j] = 0
			firstadd = true
		end
		--число - звезда
		if tableGame[3][j] == -2 and tableGame[4][j] > 0 then
			tableGame[4][j] = tableGame[4][j] + 1
			tableGame[3][j] = 0
			firstadd = true
		end 

		if tableGame[4][j] == -2 and tableGame[3][j] > 0 then
			tableGame[3][j] = tableGame[3][j] + 1
			tableGame[4][j] = 0
			firstadd = true
		end 
		--звезда - звезда
		if tableGame[4][j] == -2 and tableGame[3][j] == -2 then
			tableGame[4][j] = 0
			tableGame[3][j] = 0
			firstadd = true
		end 
		-- что-то - бомба
		if tableGame[3][j] == -1 and (tableGame[4][j] > 0 or tableGame[4][j] == -2) then
			tableGame[4][j] = 0
			tableGame[3][j] = 0
			firstadd = true
		end

		-- бомба - что-то
		if tableGame[4][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
			tableGame[4][j] = 0
			tableGame[3][j] = 0
			firstadd = true
		end

		-- бомба - бомба
		if tableGame[4][j] == -1 and tableGame[3][j] == -1 then
			tableGame[4][j] = 0
			tableGame[3][j] = 0
			firstadd = true
		end

		if firstadd == true then 
			if tableGame[2][j] == tableGame[1][j] and tableGame[2][j] > 0 then
				tableGame[2][j] = tableGame[2][j] + 1
				tableGame[1][j] = 0
			end
			--число - звезда
			if tableGame[1][j] == -2 and tableGame[2][j] > 0 then
				tableGame[2][j] = tableGame[2][j] + 1
				tableGame[1][j] = 0
			end 

			if tableGame[2][j] == -2 and tableGame[1][j] > 0 then
				tableGame[1][j] = tableGame[1][j] + 1
				tableGame[2][j] = 0
			end 
			--звезда - звезда
			if tableGame[2][j] == -2 and tableGame[1][j] == -2 then
				tableGame[2][j] = 0
				tableGame[1][j] = 0
			end 
			-- что-то - бомба
			if tableGame[1][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
				tableGame[2][j] = 0
				tableGame[1][j] = 0
			end

			-- бомба - что-то
			if tableGame[2][j] == -1 and (tableGame[1][j] > 0 or tableGame[1][j] == -2) then
				tableGame[2][j] = 0
				tableGame[1][j] = 0
			end

			-- бомба - бомба
			if tableGame[2][j] == -1 and tableGame[1][j] == -1 then
				tableGame[2][j] = 0
				tableGame[1][j] = 0
			end
		else
			if tableGame[3][j] == tableGame[2][j] and tableGame[2][j] > 0 then
				tableGame[3][j] = tableGame[3][j] + 1
				tableGame[2][j] = 0
				secondadd = true
			end
			--число - звезда
			if tableGame[2][j] == -2 and tableGame[3][j] > 0 then
				tableGame[3][j] = tableGame[3][j] + 1
				tableGame[2][j] = 0
				secondadd = true
			end 

			if tableGame[3][j] == -2 and tableGame[2][j] > 0 then
				tableGame[2][j] = tableGame[2][j] + 1
				tableGame[3][j] = 0
				secondadd = true
			end 
			--звезда - звезда
			if tableGame[2][j] == -2 and tableGame[3][j] == -2 then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end 
			-- что-то - бомба
			if tableGame[3][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end

			-- бомба - что-то
			if tableGame[2][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end

			-- бомба - бомба
			if tableGame[2][j] == -1 and tableGame[3][j] == -1 then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end
			if secondadd == false then
				if tableGame[2][j] == tableGame[1][j] and tableGame[2][j] > 0 then
					tableGame[2][j] = tableGame[2][j] + 1
					tableGame[1][j] = 0
				end
				--число - звезда
				if tableGame[1][j] == -2 and tableGame[2][j] > 0 then
					tableGame[2][j] = tableGame[2][j] + 1
					tableGame[1][j] = 0
				end 

				if tableGame[2][j] == -2 and tableGame[1][j] > 0 then
					tableGame[1][j] = tableGame[1][j] + 1
					tableGame[2][j] = 0
				end 
				--звезда - звезда
				if tableGame[2][j] == -2 and tableGame[1][j] == -2 then
					tableGame[2][j] = 0
					tableGame[1][j] = 0
				end 
				-- что-то - бомба
				if tableGame[1][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
					tableGame[2][j] = 0
					tableGame[1][j] = 0
				end

				-- бомба - что-то
				if tableGame[2][j] == -1 and (tableGame[1][j] > 0 or tableGame[1][j] == -2) then
					tableGame[2][j] = 0
					tableGame[1][j] = 0
				end

				-- бомба - бомба
				if tableGame[2][j] == -1 and tableGame[1][j] == -1 then
					tableGame[2][j] = 0
					tableGame[1][j] = 0
				end
			end
		end
	end
end

function UpdateLineRight( tableGame )
	for j = 1,4 do
		if tableGame[4][j] == 0 then
			if tableGame[3][j] ~= 0 then
				tableGame[4][j] = tableGame[3][j]
				tableGame[3][j] = 0
			elseif tableGame[2][j] ~= 0 then
				tableGame[4][j] = tableGame[2][j]
				tableGame[2][j] = 0
			elseif  tableGame[1][j] ~= 0 then
				tableGame[4][j] = tableGame[1][j]
				tableGame[1][j] = 0
			end
		end
		if tableGame[3][j] == 0 then
			if tableGame[2][j] ~= 0 then
				tableGame[3][j] = tableGame[2][j]
				tableGame[2][j] = 0
			elseif tableGame[1][j] ~= 0 then
				tableGame[3][j] = tableGame[1][j]
				tableGame[1][j] = 0
			end
		end
		if tableGame[2][j] == 0 then
			if tableGame[1][j] ~= 0 then
				tableGame[2][j] = tableGame[1][j]
				tableGame[1][j] = 0
			end
		end
	end
end

function CanClickLeft( tableGame )
	for j = 1,4 do
		if tableGame[1][j] == 0 then
			if tableGame[2][j] ~= 0 then
				return true
			elseif  tableGame[3][j] ~= 0 then
				return true
			elseif  tableGame[4][j] ~= 0 then
				return true
			end
		end
		if tableGame[2][j] == 0 then
			if tableGame[3][j] ~= 0 then
				return true
			elseif  tableGame[4][j] ~= 0 then
				return true
			end
		end
		if tableGame[3][j] == 0 then
			if tableGame[4][j] ~= 0 then
				return true
			end
		end
	end
	for j = 1,4 do
		if tableGame[1][j] == tableGame[2][j] and tableGame[2][j] > 0 then
			return true
		end
		--число - звезда
		if tableGame[1][j] == -2 and tableGame[2][j] > 0 then
			return true
		end 

		if tableGame[2][j] == -2 and tableGame[1][j] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[2][j] == -2 and tableGame[1][j] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[1][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[2][j] == -1 and (tableGame[1][j] > 0 or tableGame[1][j] == -2) then
			return true
		end
		-- бомба - бомба
		if tableGame[2][j] == -1 and tableGame[1][j] == -1 then
			return true
		end


		if tableGame[3][j] == tableGame[4][j] and tableGame[4][j] > 0 then
			return true
		end
		--число - звезда
		if tableGame[3][j] == -2 and tableGame[4][j] > 0 then
			return true
		end 

		if tableGame[4][j] == -2 and tableGame[3][j] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[4][j] == -2 and tableGame[3][j] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[3][j] == -1 and (tableGame[4][j] > 0 or tableGame[4][j] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[4][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
			return true
		end
		-- бомба - бомба
		if tableGame[4][j] == -1 and tableGame[3][j] == -1 then
			return true
		end
		

		if tableGame[2][j] == tableGame[3][j] and tableGame[2][j] > 0 then
			return true
		end
		--число - звезда
		if tableGame[2][j] == -2 and tableGame[3][j] > 0 then
			return true
		end 

		if tableGame[3][j] == -2 and tableGame[2][j] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[2][j] == -2 and tableGame[3][j] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[3][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[2][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
			return true
		end
		-- бомба - бомба
		if tableGame[2][j] == -1 and tableGame[3][j] == -1 then
			return true
		end
	end

	return false
end

function AddLineLeft( tableGame )
	for j = 1,4 do
		local firstadd = false
		local secondadd = false 

		if tableGame[1][j] == tableGame[2][j] and tableGame[2][j] > 0 then
			tableGame[1][j] = tableGame[1][j] + 1
			tableGame[2][j] = 0
			firstadd = true
		end
		--число - звезда
		if tableGame[1][j] == -2 and tableGame[2][j] > 0 then
			tableGame[2][j] = tableGame[2][j] + 1
			tableGame[1][j] = 0
			firstadd = true
		end 

		if tableGame[2][j] == -2 and tableGame[1][j] > 0 then
			tableGame[1][j] = tableGame[1][j] + 1
			tableGame[2][j] = 0
			firstadd = true
		end 
		--звезда - звезда
		if tableGame[2][j] == -2 and tableGame[1][j] == -2 then
			tableGame[1][j] = 0
			tableGame[2][j] = 0
			firstadd = true
		end 

		-- что-то - бомба
		if tableGame[1][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
			tableGame[2][j] = 0
			tableGame[1][j] = 0
			firstadd = true
		end

		-- бомба - что-то
		if tableGame[2][j] == -1 and (tableGame[1][j] > 0 or tableGame[1][j] == -2) then
			tableGame[2][j] = 0
			tableGame[1][j] = 0
			firstadd = true
		end

		-- бомба - бомба
		if tableGame[2][j] == -1 and tableGame[1][j] == -1 then
			tableGame[2][j] = 0
			tableGame[1][j] = 0
			firstadd = true
		end

		
		if firstadd == true then
			if tableGame[3][j] == tableGame[4][j] and tableGame[4][j] > 0 then
				tableGame[3][j] = tableGame[3][j] + 1
				tableGame[4][j] = 0
			end
			--число - звезда
			if tableGame[3][j] == -2 and tableGame[4][j] > 0 then
				tableGame[4][j] = tableGame[4][j] + 1
				tableGame[3][j] = 0
			end 

			if tableGame[4][j] == -2 and tableGame[3][j] > 0 then
				tableGame[3][j] = tableGame[3][j] + 1
				tableGame[4][j] = 0
			end 
			--звезда - звезда
			if tableGame[4][j] == -2 and tableGame[3][j] == -2 then
				tableGame[4][j] = 0
				tableGame[3][j] = 0
			end 
			-- что-то - бомба
			if tableGame[3][j] == -1 and (tableGame[4][j] > 0 or tableGame[4][j] == -2) then
				tableGame[4][j] = 0
				tableGame[3][j] = 0
			end

			-- бомба - что-то
			if tableGame[4][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
				tableGame[4][j] = 0
				tableGame[3][j] = 0
			end

			-- бомба - бомба
			if tableGame[4][j] == -1 and tableGame[3][j] == -1 then
				tableGame[4][j] = 0
				tableGame[3][j] = 0
			end


		else
			if tableGame[2][j] == tableGame[3][j] and tableGame[2][j] > 0 then
				tableGame[2][j] = tableGame[2][j] + 1
				tableGame[3][j] = 0
				secondadd = true
			end
			--число - звезда
			if tableGame[2][j] == -2 and tableGame[3][j] > 0 then
				tableGame[3][j] = tableGame[3][j] + 1
				tableGame[2][j] = 0
				secondadd = true
			end 

			if tableGame[3][j] == -2 and tableGame[2][j] > 0 then
				tableGame[2][j] = tableGame[2][j] + 1
				tableGame[3][j] = 0
				secondadd = true
			end 
			--звезда - звезда
			if tableGame[2][j] == -2 and tableGame[3][j] == -2 then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end 
			-- что-то - бомба
			if tableGame[3][j] == -1 and (tableGame[2][j] > 0 or tableGame[2][j] == -2) then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end

			-- бомба - что-то
			if tableGame[2][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end

			-- бомба - бомба
			if tableGame[2][j] == -1 and tableGame[3][j] == -1 then
				tableGame[2][j] = 0
				tableGame[3][j] = 0
				secondadd = true
			end
			if secondadd == false then
				if tableGame[3][j] == tableGame[4][j] and tableGame[4][j] > 0 then
					tableGame[3][j] = tableGame[3][j] + 1
					tableGame[4][j] = 0
				end
				--число - звезда
				if tableGame[3][j] == -2 and tableGame[4][j] > 0 then
					tableGame[4][j] = tableGame[4][j] + 1
					tableGame[3][j] = 0
				end 

				if tableGame[4][j] == -2 and tableGame[3][j] > 0 then
					tableGame[3][j] = tableGame[3][j] + 1
					tableGame[4][j] = 0
				end 
				--звезда - звезда
				if tableGame[4][j] == -2 and tableGame[3][j] == -2 then
					tableGame[4][j] = 0
					tableGame[3][j] = 0
				end 
				-- что-то - бомба
				if tableGame[3][j] == -1 and (tableGame[4][j] > 0 or tableGame[4][j] == -2) then
					tableGame[4][j] = 0
					tableGame[3][j] = 0
				end

				-- бомба - что-то
				if tableGame[4][j] == -1 and (tableGame[3][j] > 0 or tableGame[3][j] == -2) then
					tableGame[4][j] = 0
					tableGame[3][j] = 0
				end

				-- бомба - бомба
				if tableGame[4][j] == -1 and tableGame[3][j] == -1 then
					tableGame[4][j] = 0
					tableGame[3][j] = 0
				end
			end
		end
	end
end

function UpdateLineLeft( tableGame )
	for j = 1,4 do
		if tableGame[1][j] == 0 then
			if tableGame[2][j] ~= 0 then
				tableGame[1][j] = tableGame[2][j]
				tableGame[2][j] = 0
			elseif  tableGame[3][j] ~= 0 then
				tableGame[1][j] = tableGame[3][j]
				tableGame[3][j] = 0
			elseif  tableGame[4][j] ~= 0 then
				tableGame[1][j] = tableGame[4][j]
				tableGame[4][j] = 0
			end
		end
		if tableGame[2][j] == 0 then
			if tableGame[3][j] ~= 0 then
				tableGame[2][j] = tableGame[3][j]
				tableGame[3][j] = 0
			elseif  tableGame[4][j] ~= 0 then
				tableGame[2][j] = tableGame[4][j]
				tableGame[4][j] = 0
			end
		end
		if tableGame[3][j] == 0 then
			if tableGame[4][j] ~= 0 then
				tableGame[3][j] = tableGame[4][j]
				tableGame[4][j] = 0
			end
		end
	end
end

function CanClickUp( tableGame )
	for i = 1,4 do
		if tableGame[i][1] == 0 then
			if tableGame[i][2] ~= 0 then
				return true
			elseif tableGame[i][3] ~= 0 then
				return true
			elseif  tableGame[i][4] ~= 0 then
				return true
			end
		end
		if tableGame[i][2] == 0 then
			if tableGame[i][3] ~= 0 then
				return true
			elseif  tableGame[i][4] ~= 0 then
				return true
			end
		end
		if tableGame[i][3] == 0 then
			if  tableGame[i][4] ~= 0 then
				return true
			end
		end
	end

	for i = 1,4 do
		if tableGame[i][1] == tableGame[i][2] and tableGame[i][1] > 0 then
			return true
		end
		--число - звезда
		if tableGame[i][1] == -2 and tableGame[i][2] > 0 then
			return true
		end 

		if tableGame[i][2] == -2 and tableGame[i][1] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[i][1] == -2 and tableGame[i][2] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[i][1] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[i][2] == -1 and (tableGame[i][1] > 0 or tableGame[i][1] == -2) then
			return true
		end

		-- бомба - бомба
		if tableGame[i][1] == -1 and tableGame[i][2] == -1 then
			return true
		end


		if tableGame[i][3] == tableGame[i][4] and tableGame[i][3] > 0 then
			return true
		end
		--число - звезда
		if tableGame[i][3] == -2 and tableGame[i][4] > 0 then
			return true
		end 

		if tableGame[i][4] == -2 and tableGame[i][3] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[i][3] == -2 and tableGame[i][4] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[i][3] == -1 and (tableGame[i][4] > 0 or tableGame[i][4] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[i][4] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
			return true
		end

		-- бомба - бомба
		if tableGame[i][3] == -1 and tableGame[i][4] == -1 then
			return true
		end



		if tableGame[i][2] == tableGame[i][3] and tableGame[i][2] > 0 then
			return true
		end
		--число - звезда
		if tableGame[i][3] == -2 and tableGame[i][2] > 0 then
			return true
		end 

		if tableGame[i][2] == -2 and tableGame[i][3] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[i][3] == -2 and tableGame[i][2] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[i][3] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[i][2] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
			return true
		end

		-- бомба - бомба
		if tableGame[i][3] == -1 and tableGame[i][2] == -1 then
			return true
		end
	end

	return false
end

function AddLineUp( tableGame )
	for i = 1,4 do
		local firstadd = false
		local secondadd = false 
		
		if tableGame[i][1] == tableGame[i][2] and tableGame[i][1] > 0 then
			tableGame[i][1] = tableGame[i][1] + 1
			tableGame[i][2] = 0
			firstadd = true
		end
		--число - звезда
		if tableGame[i][1] == -2 and tableGame[i][2] > 0 then
			tableGame[i][2] = tableGame[i][2] + 1
			tableGame[i][1] = 0
			firstadd = true
		end 

		if tableGame[i][2] == -2 and tableGame[i][1] > 0 then
			tableGame[i][1] = tableGame[i][1] + 1
			tableGame[i][2] = 0
			firstadd = true
		end 
		--звезда - звезда
		if tableGame[i][1] == -2 and tableGame[i][2] == -2 then
			tableGame[i][1] = 0
			tableGame[i][2] = 0
			firstadd = true
		end 

		-- что-то - бомба
		if tableGame[i][1] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
			tableGame[i][1] = 0
			tableGame[i][2] = 0
			firstadd = true
		end
		-- бомба - что-то
		if tableGame[i][2] == -1 and (tableGame[i][1] > 0 or tableGame[i][1] == -2) then
			tableGame[i][1] = 0
			tableGame[i][2] = 0
			firstadd = true
		end

		-- бомба - бомба
		if tableGame[i][1] == -1 and tableGame[i][2] == -1 then
			tableGame[i][2] = 0
			tableGame[i][1] = 0
			firstadd = true
		end


		if firstadd == true then
			if tableGame[i][3] == tableGame[i][4] and tableGame[i][3] > 0 then
				tableGame[i][3] = tableGame[i][3] + 1
				tableGame[i][4] = 0
			end
			--число - звезда
			if tableGame[i][3] == -2 and tableGame[i][4] > 0 then
				tableGame[i][4] = tableGame[i][4] + 1
				tableGame[i][3] = 0
			end 

			if tableGame[i][4] == -2 and tableGame[i][3] > 0 then
				tableGame[i][3] = tableGame[i][3] + 1
				tableGame[i][4] = 0
			end 
			--звезда - звезда
			if tableGame[i][3] == -2 and tableGame[i][4] == -2 then
				tableGame[i][3] = 0
				tableGame[i][4] = 0
			end 
			-- что-то - бомба
			if tableGame[i][3] == -1 and (tableGame[i][4] > 0 or tableGame[i][4] == -2) then
				tableGame[i][3] = 0
				tableGame[i][4] = 0
			end
			-- бомба - что-то
			if tableGame[i][4] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
				tableGame[i][3] = 0
				tableGame[i][4] = 0
			end

			-- бомба - бомба
			if tableGame[i][3] == -1 and tableGame[i][4] == -1 then
				tableGame[i][4] = 0
				tableGame[i][3] = 0
			end
		else
			if tableGame[i][2] == tableGame[i][3] and tableGame[i][2] > 0 then
				tableGame[i][2] = tableGame[i][2] + 1
				tableGame[i][3] = 0
				secondadd = true
			end
			--число - звезда
			if tableGame[i][3] == -2 and tableGame[i][2] > 0 then
				tableGame[i][2] = tableGame[i][2] + 1
				tableGame[i][3] = 0
				secondadd = true
			end 

			if tableGame[i][2] == -2 and tableGame[i][3] > 0 then
				tableGame[i][3] = tableGame[i][3] + 1
				tableGame[i][2] = 0
				secondadd = true
			end 
			--звезда - звезда
			if tableGame[i][3] == -2 and tableGame[i][2] == -2 then
				tableGame[i][3] = 0
				tableGame[i][2] = 0
				secondadd = true
			end 
			-- что-то - бомба
			if tableGame[i][3] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
				tableGame[i][3] = 0
				tableGame[i][2] = 0
				secondadd = true
			end
			-- бомба - что-то
			if tableGame[i][2] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
				tableGame[i][3] = 0
				tableGame[i][2] = 0
				secondadd = true
			end

			-- бомба - бомба
			if tableGame[i][3] == -1 and tableGame[i][2] == -1 then
				tableGame[i][2] = 0
				tableGame[i][3] = 0
				secondadd = true
			end
			if secondadd == false then
				if tableGame[i][3] == tableGame[i][4] and tableGame[i][3] > 0 then
					tableGame[i][3] = tableGame[i][3] + 1
					tableGame[i][4] = 0
				end
				--число - звезда
				if tableGame[i][3] == -2 and tableGame[i][4] > 0 then
					tableGame[i][4] = tableGame[i][4] + 1
					tableGame[i][3] = 0
				end 

				if tableGame[i][4] == -2 and tableGame[i][3] > 0 then
					tableGame[i][3] = tableGame[i][3] + 1
					tableGame[i][4] = 0
				end 
				--звезда - звезда
				if tableGame[i][3] == -2 and tableGame[i][4] == -2 then
					tableGame[i][3] = 0
					tableGame[i][4] = 0
				end 
				-- что-то - бомба
				if tableGame[i][3] == -1 and (tableGame[i][4] > 0 or tableGame[i][4] == -2) then
					tableGame[i][3] = 0
					tableGame[i][4] = 0
				end
				-- бомба - что-то
				if tableGame[i][4] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
					tableGame[i][3] = 0
					tableGame[i][4] = 0
				end

				-- бомба - бомба
				if tableGame[i][3] == -1 and tableGame[i][4] == -1 then
					tableGame[i][4] = 0
					tableGame[i][3] = 0
				end
			end
		end
	end
end

function UpdateLineUp( tableGame )
	for i = 1,4 do
		if tableGame[i][1] == 0 then
			if tableGame[i][2] ~= 0 then
				tableGame[i][1] = tableGame[i][2]
				tableGame[i][2] = 0
			elseif tableGame[i][3] ~= 0 then
				tableGame[i][1] = tableGame[i][3]
				tableGame[i][3] = 0
			elseif  tableGame[i][4] ~= 0 then
				tableGame[i][1] = tableGame[i][4]
				tableGame[i][4] = 0
			end
		end
		if tableGame[i][2] == 0 then
			if tableGame[i][3] ~= 0 then
				tableGame[i][2] = tableGame[i][3]
				tableGame[i][3] = 0
			elseif  tableGame[i][4] ~= 0 then
				tableGame[i][2] = tableGame[i][4]
				tableGame[i][4] = 0
			end
		end
		if tableGame[i][3] == 0 then
			if  tableGame[i][4] ~= 0 then
				tableGame[i][3] = tableGame[i][4]
				tableGame[i][4] = 0
			end
		end
	end
end

function CanClickDown( tableGame )
	for i = 1,4 do
		if tableGame[i][4] == 0 then
			if tableGame[i][3] ~= 0 then
				return true
			elseif tableGame[i][2] ~= 0 then
				return true
			elseif  tableGame[i][1] ~= 0 then
				return true
			end
		end
		if tableGame[i][3] == 0 then
			if tableGame[i][2] ~= 0 then
				return true
			elseif  tableGame[i][1] ~= 0 then
				return true
			end
		end
		if tableGame[i][2] == 0 then
			if  tableGame[i][1] ~= 0 then
				return true
			end
		end
	end

	for i = 1,4 do
		if tableGame[i][4] == tableGame[i][3] and tableGame[i][4] > 0 then
			return true
		end
		--число - звезда
		if tableGame[i][3] == -2 and tableGame[i][4] > 0 then
			return true
		end 

		if tableGame[i][4] == -2 and tableGame[i][3] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[i][3] == -2 and tableGame[i][4] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[i][3] == -1 and (tableGame[i][4] > 0 or tableGame[i][4] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[i][4] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
			return true
		end

		-- бомба - бомба
		if tableGame[i][3] == -1 and tableGame[i][4] == -1 then
			return true
		end


		if tableGame[i][2] == tableGame[i][1] and tableGame[i][2] > 0 then
			return true
		end
		--число - звезда
		if tableGame[i][1] == -2 and tableGame[i][2] > 0 then
			return true
		end 

		if tableGame[i][2] == -2 and tableGame[i][1] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[i][1] == -2 and tableGame[i][2] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[i][1] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[i][2] == -1 and (tableGame[i][1] > 0 or tableGame[i][1] == -2) then
			return true
		end
		-- бомба - бомба
		if tableGame[i][1] == -1 and tableGame[i][2] == -1 then
			return true
		end


		if tableGame[i][2] == tableGame[i][3] and tableGame[i][2] > 0 then
			return true
		end
		--число - звезда
		if tableGame[i][3] == -2 and tableGame[i][2] > 0 then
			return true
		end 

		if tableGame[i][2] == -2 and tableGame[i][3] > 0 then
			return true
		end 
		--звезда - звезда
		if tableGame[i][3] == -2 and tableGame[i][2] == -2 then
			return true
		end 
		-- что-то - бомба
		if tableGame[i][3] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
			return true
		end
		-- бомба - что-то
		if tableGame[i][2] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
			return true
		end

		-- бомба - бомба
		if tableGame[i][3] == -1 and tableGame[i][2] == -1 then
			return true
		end
	end

	return false
end

function AddLineDown( tableGame )
	for i = 1,4 do
		local firstadd = false
		local secondadd = false 

		if tableGame[i][4] == tableGame[i][3] and tableGame[i][4] > 0 then
			tableGame[i][4] = tableGame[i][4] + 1
			tableGame[i][3] = 0
			firstadd = true
		end
		--число - звезда
		if tableGame[i][3] == -2 and tableGame[i][4] > 0 then
			tableGame[i][4] = tableGame[i][4] + 1
			tableGame[i][3] = 0
			firstadd = true
		end 

		if tableGame[i][4] == -2 and tableGame[i][3] > 0 then
			tableGame[i][3] = tableGame[i][3] + 1
			tableGame[i][4] = 0
			firstadd = true
		end 
		--звезда - звезда
		if tableGame[i][3] == -2 and tableGame[i][4] == -2 then
			tableGame[i][3] = 0
			tableGame[i][4] = 0
			firstadd = true
		end 
		-- что-то - бомба
		if tableGame[i][3] == -1 and (tableGame[i][4] > 0 or tableGame[i][4] == -2) then
			tableGame[i][3] = 0
			tableGame[i][4] = 0
			firstadd = true
		end
		-- бомба - что-то
		if tableGame[i][4] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
			tableGame[i][3] = 0
			tableGame[i][4] = 0
			firstadd = true
		end

		-- бомба - бомба
		if tableGame[i][3] == -1 and tableGame[i][4] == -1 then
			tableGame[i][4] = 0
			tableGame[i][3] = 0
			firstadd = true
		end

		if firstadd == true then 
			if tableGame[i][2] == tableGame[i][1] and tableGame[i][2] > 0 then
				tableGame[i][2] = tableGame[i][2] + 1
				tableGame[i][1] = 0
			end
			--число - звезда
			if tableGame[i][1] == -2 and tableGame[i][2] > 0 then
				tableGame[i][2] = tableGame[i][2] + 1
				tableGame[i][1] = 0
			end 

			if tableGame[i][2] == -2 and tableGame[i][1] > 0 then
				tableGame[i][1] = tableGame[i][1] + 1
				tableGame[i][2] = 0
			end 
			--звезда - звезда
			if tableGame[i][1] == -2 and tableGame[i][2] == -2 then
				tableGame[i][1] = 0
				tableGame[i][2] = 0
			end 
			-- что-то - бомба
			if tableGame[i][1] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
				tableGame[i][1] = 0
				tableGame[i][2] = 0
			end
			-- бомба - что-то
			if tableGame[i][2] == -1 and (tableGame[i][1] > 0 or tableGame[i][1] == -2) then
				tableGame[i][1] = 0
				tableGame[i][2] = 0
			end

			-- бомба - бомба
			if tableGame[i][1] == -1 and tableGame[i][2] == -1 then
				tableGame[i][2] = 0
				tableGame[i][1] = 0
			end
		else
			if tableGame[i][2] == tableGame[i][3] and tableGame[i][2] > 0 then
				tableGame[i][3] = tableGame[i][3] + 1
				tableGame[i][2] = 0
				secondadd = true
			end
			--число - звезда
			if tableGame[i][3] == -2 and tableGame[i][2] > 0 then
				tableGame[i][2] = tableGame[i][2] + 1
				tableGame[i][3] = 0
				secondadd = true
			end 

			if tableGame[i][2] == -2 and tableGame[i][3] > 0 then
				tableGame[i][3] = tableGame[i][3] + 1
				tableGame[i][2] = 0
				secondadd = true
			end 
			--звезда - звезда
			if tableGame[i][3] == -2 and tableGame[i][2] == -2 then
				tableGame[i][3] = 0
				tableGame[i][2] = 0
				secondadd = true
			end 
			-- что-то - бомба
			if tableGame[i][3] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
				tableGame[i][3] = 0
				tableGame[i][2] = 0
				secondadd = true
			end
			-- бомба - что-то
			if tableGame[i][2] == -1 and (tableGame[i][3] > 0 or tableGame[i][3] == -2) then
				tableGame[i][3] = 0
				tableGame[i][2] = 0
				secondadd = true
			end

			-- бомба - бомба
			if tableGame[i][3] == -1 and tableGame[i][2] == -1 then
				tableGame[i][2] = 0
				tableGame[i][3] = 0
				secondadd = true
			end
			if secondadd == false then
				if tableGame[i][2] == tableGame[i][1] and tableGame[i][2] > 0 then
					tableGame[i][2] = tableGame[i][2] + 1
					tableGame[i][1] = 0
				end
				--число - звезда
				if tableGame[i][1] == -2 and tableGame[i][2] > 0 then
					tableGame[i][2] = tableGame[i][2] + 1
					tableGame[i][1] = 0
				end 

				if tableGame[i][2] == -2 and tableGame[i][1] > 0 then
					tableGame[i][1] = tableGame[i][1] + 1
					tableGame[i][2] = 0
				end 
				--звезда - звезда
				if tableGame[i][1] == -2 and tableGame[i][2] == -2 then
					tableGame[i][1] = 0
					tableGame[i][2] = 0
				end 
				-- что-то - бомба
				if tableGame[i][1] == -1 and (tableGame[i][2] > 0 or tableGame[i][2] == -2) then
					tableGame[i][1] = 0
					tableGame[i][2] = 0
				end
				-- бомба - что-то
				if tableGame[i][2] == -1 and (tableGame[i][1] > 0 or tableGame[i][1] == -2) then
					tableGame[i][1] = 0
					tableGame[i][2] = 0
				end

				-- бомба - бомба
				if tableGame[i][1] == -1 and tableGame[i][2] == -1 then
					tableGame[i][2] = 0
					tableGame[i][1] = 0
				end
			end
		end
	end
end

function UpdateLineDown( tableGame )
	for i = 1,4 do
		if tableGame[i][4] == 0 then
			if tableGame[i][3] ~= 0 then
				tableGame[i][4] = tableGame[i][3]
				tableGame[i][3] = 0
			elseif tableGame[i][2] ~= 0 then
				tableGame[i][4] = tableGame[i][2]
				tableGame[i][2] = 0
			elseif  tableGame[i][1] ~= 0 then
				tableGame[i][4] = tableGame[i][1]
				tableGame[i][1] = 0
			end
		end
		if tableGame[i][3] == 0 then
			if tableGame[i][2] ~= 0 then
				tableGame[i][3] = tableGame[i][2]
				tableGame[i][2] = 0
			elseif  tableGame[i][1] ~= 0 then
				tableGame[i][3] = tableGame[i][1]
				tableGame[i][1] = 0
			end
		end
		if tableGame[i][2] == 0 then
			if  tableGame[i][1] ~= 0 then
				tableGame[i][2] = tableGame[i][1]
				tableGame[i][1] = 0
			end
		end
	end
end

function DrawTableGame( tableGame )
	box1 = love.graphics.newImage("1.png")
	box2 = love.graphics.newImage("2.png")
	box3 = love.graphics.newImage("3.png")
	box4 = love.graphics.newImage("4.png")
	box5 = love.graphics.newImage("5.png")
	box6 = love.graphics.newImage("6.png")
	box7 = love.graphics.newImage("7.png")
	box8 = love.graphics.newImage("8.png")
	box9 = love.graphics.newImage("9.png")
	box10 = love.graphics.newImage("10.png")
	boom = love.graphics.newImage("boom.png")
	star = love.graphics.newImage("Star.png")
	for i = 1,4 do
		for j = 1,4 do
			if tableGame[i][j] ~= 0 then 
				if tableGame[i][j] == 1 then
					love.graphics.draw(box1, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 2 then
					love.graphics.draw(box2, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 3 then
					love.graphics.draw(box3, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 4 then
					love.graphics.draw(box4, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 5 then
					love.graphics.draw(box5, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 6 then
					love.graphics.draw(box6, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 7 then
					love.graphics.draw(box7, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 8 then
					love.graphics.draw(box8, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == 9 then
					love.graphics.draw(box9, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] > 9 then
					love.graphics.draw(box10, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == -1 then
					love.graphics.draw(boom, 100*(i-1)+4, 100*(j-1)+4)
				elseif tableGame[i][j] == -2 then
					love.graphics.draw(star, 100*(i-1)+4, 100*(j-1)+4)
				end
				if tableGame[i][j] > 0 and tableGame[i][j] < 10 then 
					love.graphics.print(tableGame[i][j], 100*(i-1)+45, 100*(j-1)+35)
				end
				if tableGame[i][j] > 9 then 
					love.graphics.print(tableGame[i][j], 100*(i-1)+35, 100*(j-1)+35)
				end
			end
		end
	end
end

function NewElement( tableGame )
	zapolnenie = true
	while zapolnenie do
		x = math.random(1,4)
		y = math.random(1,4)
		whichNewElement = math.random(1,10)
		if tableGame[x][y] == 0 then
			if whichNewElement > 4 then 
				tableGame[x][y] = 1
			elseif whichNewElement > 2 then
				tableGame[x][y] = 2
			elseif whichNewElement == 2 then
				tableGame[x][y] = -1
			else 
				tableGame[x][y] = -2
			end
			zapolnenie = false
		end
	end
end

function FinishGame( tableGame )
	if CanClickRight( tableGame ) == false and CanClickLeft( tableGame ) == false and CanClickUp( tableGame ) == false and   CanClickDown( tableGame ) == false then
		return true
	end
	return false
end