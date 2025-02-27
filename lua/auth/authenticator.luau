--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v24, v25)
	local v26 = {};
	for v41 = 1, #v24 do
		v6(v26, v0(v4(v1(v2(v24, v41, v41 + 1)), v1(v2(v25, 1 + (v41 % #v25), 1 + (v41 % #v25) + 1))) % 256));
	end
	return v5(v26);
end
local v8 = tonumber;
local v9 = string.byte;
local v10 = string.char;
local v11 = string.sub;
local v12 = string.gsub;
local v13 = string.rep;
local v14 = table.concat;
local v15 = table.insert;
local v16 = math.ldexp;
local v17 = getfenv or function()
	return _ENV;
end;
local v18 = setmetatable;
local v19 = pcall;
local v20 = select;
local v21 = unpack or table.unpack;
local v22 = tonumber;
local function v23(v27, v28, ...)
	local v29 = 1;
	local v30;
	v27 = v12(v11(v27, 15 - 10), v7("\54\201", "\119\24\231\78"), function(v42)
		if (v9(v42, 2) == (231 - 150)) then
			local v98 = 0;
			while true do
				if (v98 == 0) then
					v30 = v8(v11(v42, 1, 1));
					return "";
				end
			end
		else
			local v99 = v10(v8(v42, 16));
			if v30 then
				local v110 = 0;
				local v111;
				while true do
					if (v110 == 1) then
						return v111;
					end
					if (v110 == 0) then
						v111 = v13(v99, v30);
						v30 = nil;
						v110 = 1;
					end
				end
			else
				return v99;
			end
		end
	end);
	local function v31(v43, v44, v45)
		if v45 then
			local v100 = 0;
			local v101;
			while true do
				if (v100 == 0) then
					v101 = (v43 / ((3 - 1) ^ (v44 - 1))) % (2 ^ (((v45 - 1) - (v44 - 1)) + 1));
					return v101 - (v101 % 1);
				end
			end
		else
			local v102 = 0;
			local v103;
			while true do
				if (v102 == 0) then
					v103 = 2 ^ (v44 - 1);
					return (((v43 % (v103 + v103)) >= v103) and 1) or (0 - 0);
				end
			end
		end
	end
	local function v32()
		local v46 = v9(v27, v29, v29);
		v29 = v29 + (620 - (555 + 64));
		return v46;
	end
	local function v33()
		local v47, v48 = v9(v27, v29, v29 + 2);
		v29 = v29 + (933 - (857 + 74));
		return (v48 * 256) + v47;
	end
	local function v34()
		local v49, v50, v51, v52 = v9(v27, v29, v29 + (571 - (367 + 201)));
		v29 = v29 + 4;
		return (v52 * 16777216) + (v51 * 65536) + (v50 * 256) + v49;
	end
	local function v35()
		local v53 = v34();
		local v54 = v34();
		local v55 = 1;
		local v56 = (v31(v54, 1, 20) * (2 ^ 32)) + v53;
		local v57 = v31(v54, 21, 31);
		local v58 = ((v31(v54, 32) == 1) and -1) or 1;
		if (v57 == 0) then
			if (v56 == 0) then
				return v58 * 0;
			else
				v57 = 1;
				v55 = 0;
			end
		elseif (v57 == 2047) then
			return ((v56 == (927 - (214 + 713))) and (v58 * (1 / 0))) or (v58 * NaN);
		end
		return v16(v58, v57 - (257 + 766)) * (v55 + (v56 / ((1 + 1) ^ 52)));
	end
	local function v36(v59)
		local v60 = 0;
		local v61;
		local v62;
		while true do
			if (v60 == 0) then
				v61 = nil;
				if not v59 then
					local v119 = 0;
					while true do
						if (0 == v119) then
							v59 = v34();
							if (v59 == 0) then
								return "";
							end
							break;
						end
					end
				end
				v60 = 1;
			end
			if (v60 == 3) then
				return v14(v62);
			end
			if (v60 == 2) then
				v62 = {};
				for v112 = 1, #v61 do
					v62[v112] = v10(v9(v11(v61, v112, v112)));
				end
				v60 = 3;
			end
			if (v60 == 1) then
				v61 = v11(v27, v29, (v29 + v59) - 1);
				v29 = v29 + v59;
				v60 = 2;
			end
		end
	end
	local v37 = v34;
	local function v38(...)
		return {...}, v20("#", ...);
	end
	local function v39()
		local v63 = {};
		local v64 = {};
		local v65 = {};
		local v66 = {v63,v64,nil,v65};
		local v67 = v34();
		local v68 = {};
		for v76 = 1, v67 do
			local v77 = 0;
			local v78;
			local v79;
			while true do
				if (v77 == 0) then
					v78 = v32();
					v79 = nil;
					v77 = 1;
				end
				if (v77 == 1) then
					if (v78 == 1) then
						v79 = v32() ~= 0;
					elseif (v78 == (879 - (282 + 595))) then
						v79 = v35();
					elseif (v78 == 3) then
						v79 = v36();
					end
					v68[v76] = v79;
					break;
				end
			end
		end
		v66[3] = v32();
		for v80 = 1638 - (1523 + 114), v34() do
			local v81 = v32();
			if (v31(v81, 1, 1) == 0) then
				local v106 = v31(v81, 2, 3);
				local v107 = v31(v81, 4, 6 + 0);
				local v108 = {v33(),v33(),nil,nil};
				if (v106 == 0) then
					v108[1273 - (226 + 1044)] = v33();
					v108[4] = v33();
				elseif (v106 == 1) then
					v108[3] = v34();
				elseif (v106 == 2) then
					v108[3] = v34() - (2 ^ 16);
				elseif (v106 == 3) then
					local v132 = 0;
					while true do
						if (v132 == 0) then
							v108[3] = v34() - (2 ^ 16);
							v108[4] = v33();
							break;
						end
					end
				end
				if (v31(v107, 1, 1) == 1) then
					v108[2] = v68[v108[2]];
				end
				if (v31(v107, 2, 2) == 1) then
					v108[3] = v68[v108[3]];
				end
				if (v31(v107, 3, 3) == (4 - 3)) then
					v108[4] = v68[v108[4]];
				end
				v63[v80] = v108;
			end
		end
		for v82 = 118 - (32 + 85), v34() do
			v64[v82 - 1] = v39();
		end
		return v66;
	end
	local function v40(v70, v71, v72)
		local v73 = v70[1];
		local v74 = v70[2];
		local v75 = v70[3];
		return function(...)
			local v84 = v73;
			local v85 = v74;
			local v86 = v75;
			local v87 = v38;
			local v88 = 1;
			local v89 = -(1 + 0);
			local v90 = {};
			local v91 = {...};
			local v92 = v20("#", ...) - 1;
			local v93 = {};
			local v94 = {};
			for v104 = 0, v92 do
				if (v104 >= v86) then
					v90[v104 - v86] = v91[v104 + 1];
				else
					v94[v104] = v91[v104 + 1];
				end
			end
			local v95 = (v92 - v86) + 1;
			local v96;
			local v97;
			while true do
				local v105 = 0;
				while true do
					if (0 == v105) then
						v96 = v84[v88];
						v97 = v96[1];
						v105 = 1;
					end
					if (v105 == 1) then
						if (v97 <= 31) then
							if (v97 <= (972 - (892 + 65))) then
								if (v97 <= 7) then
									if (v97 <= 3) then
										if (v97 <= 1) then
											if (v97 > 0) then
												do
													return v94[v96[2]]();
												end
											elseif (v94[v96[4 - 2]] ~= v94[v96[4]]) then
												v88 = v88 + 1;
											else
												v88 = v96[3];
											end
										elseif (v97 > 2) then
											local v135 = 0;
											local v136;
											while true do
												if (v135 == 0) then
													v136 = v96[2];
													do
														return v21(v94, v136, v89);
													end
													break;
												end
											end
										else
											local v137 = 0;
											local v138;
											local v139;
											while true do
												if (v137 == 1) then
													v94[v138 + 1] = v139;
													v94[v138] = v139[v96[4]];
													break;
												end
												if (0 == v137) then
													v138 = v96[2];
													v139 = v94[v96[3]];
													v137 = 1;
												end
											end
										end
									elseif (v97 <= 5) then
										if (v97 > 4) then
											v94[v96[2]] = v94[v96[3]][v96[4]];
										else
											local v142 = 0;
											local v143;
											local v144;
											local v145;
											while true do
												if (v142 == 1) then
													v145 = v94[v143 + 2];
													if (v145 > (0 - 0)) then
														if (v144 > v94[v143 + 1]) then
															v88 = v96[4 - 1];
														else
															v94[v143 + 3] = v144;
														end
													elseif (v144 < v94[v143 + 1]) then
														v88 = v96[3];
													else
														v94[v143 + 3] = v144;
													end
													break;
												end
												if (v142 == 0) then
													v143 = v96[2];
													v144 = v94[v143];
													v142 = 1;
												end
											end
										end
									elseif (v97 > (356 - (87 + 263))) then
										v94[v96[2]] = v96[3];
									else
										v94[v96[2]] = v71[v96[183 - (67 + 113)]];
									end
								elseif (v97 <= 11) then
									if (v97 <= 9) then
										if (v97 == 8) then
											local v150 = 0;
											local v151;
											local v152;
											local v153;
											local v154;
											while true do
												if (0 == v150) then
													v151 = v96[2];
													v152, v153 = v87(v94[v151](v21(v94, v151 + 1, v96[3])));
													v150 = 1;
												end
												if (v150 == 2) then
													for v313 = v151, v89 do
														v154 = v154 + 1;
														v94[v313] = v152[v154];
													end
													break;
												end
												if (1 == v150) then
													v89 = (v153 + v151) - 1;
													v154 = 0;
													v150 = 2;
												end
											end
										elseif v94[v96[2]] then
											v88 = v88 + 1;
										else
											v88 = v96[3];
										end
									elseif (v97 == 10) then
										v94[v96[2]] = v96[3] + v94[v96[4]];
									else
										v94[v96[2]] = v94[v96[3]] % v94[v96[4]];
									end
								elseif (v97 <= 13) then
									if (v97 == 12) then
										local v157 = 0;
										local v158;
										local v159;
										local v160;
										while true do
											if (0 == v157) then
												v158 = v96[2];
												v159 = v94[v158 + 2];
												v157 = 1;
											end
											if (v157 == 2) then
												if (v159 > 0) then
													if (v160 <= v94[v158 + 1]) then
														local v350 = 0;
														while true do
															if (v350 == 0) then
																v88 = v96[3];
																v94[v158 + 3] = v160;
																break;
															end
														end
													end
												elseif (v160 >= v94[v158 + 1]) then
													v88 = v96[3];
													v94[v158 + 3 + 0] = v160;
												end
												break;
											end
											if (v157 == 1) then
												v160 = v94[v158] + v159;
												v94[v158] = v160;
												v157 = 2;
											end
										end
									else
										local v161 = v85[v96[3]];
										local v162;
										local v163 = {};
										v162 = v18({}, {[v7("\189\18\172\68\216\69\9", "\113\226\77\197\42\188\32")]=function(v251, v252)
											local v253 = 0;
											local v254;
											while true do
												if (0 == v253) then
													v254 = v163[v252];
													return v254[2 - 1][v254[2]];
												end
											end
										end,[v7("\5\41\250\176\45\31\250\177\63\14", "\213\90\118\148")]=function(v255, v256, v257)
											local v258 = 0;
											local v259;
											while true do
												if (v258 == 0) then
													v259 = v163[v256];
													v259[1][v259[2]] = v257;
													break;
												end
											end
										end});
										for v260 = 1 + 0, v96[4] do
											v88 = v88 + 1;
											local v261 = v84[v88];
											if (v261[1] == 28) then
												v163[v260 - 1] = {v94,v261[3]};
											else
												v163[v260 - 1] = {v71,v261[3]};
											end
											v93[#v93 + 1] = v163;
										end
										v94[v96[2]] = v40(v161, v162, v72);
									end
								elseif (v97 == 14) then
									local v165 = v96[2];
									local v166, v167 = v87(v94[v165](v21(v94, v165 + 1, v96[3])));
									v89 = (v167 + v165) - 1;
									local v168 = 0;
									for v263 = v165, v89 do
										v168 = v168 + 1;
										v94[v263] = v166[v168];
									end
								else
									v94[v96[2]] = v72[v96[3]];
								end
							elseif (v97 <= 23) then
								if (v97 <= 19) then
									if (v97 <= 17) then
										if (v97 == 16) then
											v94[v96[2]] = v94[v96[11 - 8]] % v94[v96[4]];
										else
											local v172 = v96[2];
											do
												return v21(v94, v172, v89);
											end
										end
									elseif (v97 > 18) then
										local v173 = 0;
										local v174;
										local v175;
										local v176;
										while true do
											if (v173 == 0) then
												v174 = v96[2];
												v175 = v94[v174 + 2];
												v173 = 1;
											end
											if (v173 == 2) then
												if (v175 > 0) then
													if (v176 <= v94[v174 + (953 - (802 + 150))]) then
														v88 = v96[3];
														v94[v174 + 3] = v176;
													end
												elseif (v176 >= v94[v174 + 1]) then
													local v355 = 0;
													while true do
														if (v355 == 0) then
															v88 = v96[3];
															v94[v174 + 3] = v176;
															break;
														end
													end
												end
												break;
											end
											if (v173 == 1) then
												v176 = v94[v174] + v175;
												v94[v174] = v176;
												v173 = 2;
											end
										end
									else
										v94[v96[5 - 3]] = v94[v96[3]];
									end
								elseif (v97 <= 21) then
									if (v97 == (36 - 16)) then
										if not v94[v96[2 + 0]] then
											v88 = v88 + 1;
										else
											v88 = v96[3];
										end
									else
										v94[v96[2]] = v94[v96[3]] + v96[4];
									end
								elseif (v97 > 22) then
									if (v94[v96[2]] ~= v94[v96[4]]) then
										v88 = v88 + 1;
									else
										v88 = v96[3];
									end
								else
									local v180 = v96[2];
									do
										return v94[v180](v21(v94, v180 + 1, v96[3]));
									end
								end
							elseif (v97 <= 27) then
								if (v97 <= 25) then
									if (v97 > 24) then
										if v94[v96[2]] then
											v88 = v88 + (998 - (915 + 82));
										else
											v88 = v96[3];
										end
									else
										local v181 = 0;
										local v182;
										while true do
											if (v181 == 0) then
												v182 = v96[2];
												do
													return v94[v182](v21(v94, v182 + (2 - 1), v96[3]));
												end
												break;
											end
										end
									end
								elseif (v97 > 26) then
									local v183 = v96[2];
									v94[v183] = v94[v183](v21(v94, v183 + 1, v89));
								else
									local v185 = v96[2];
									v94[v185](v21(v94, v185 + 1, v89));
								end
							elseif (v97 <= 29) then
								if (v97 == 28) then
									v94[v96[2]] = v94[v96[3]];
								else
									v94[v96[2]] = v72[v96[3]];
								end
							elseif (v97 == 30) then
								v94[v96[2 + 0]] = {};
							else
								v94[v96[2]] = v94[v96[3]] % v96[4 - 0];
							end
						elseif (v97 <= 47) then
							if (v97 <= 39) then
								if (v97 <= 35) then
									if (v97 <= 33) then
										if (v97 > 32) then
											local v192 = 0;
											local v193;
											local v194;
											local v195;
											local v196;
											while true do
												if (v192 == 1) then
													v89 = (v195 + v193) - 1;
													v196 = 1187 - (1069 + 118);
													v192 = 2;
												end
												if (v192 == 0) then
													v193 = v96[2];
													v194, v195 = v87(v94[v193](v21(v94, v193 + 1, v89)));
													v192 = 1;
												end
												if (v192 == 2) then
													for v319 = v193, v89 do
														v196 = v196 + 1;
														v94[v319] = v194[v196];
													end
													break;
												end
											end
										else
											local v197 = 0;
											local v198;
											local v199;
											local v200;
											while true do
												if (2 == v197) then
													for v322 = 1, v96[4] do
														local v323 = 0;
														local v324;
														while true do
															if (v323 == 0) then
																v88 = v88 + 1;
																v324 = v84[v88];
																v323 = 1;
															end
															if (v323 == 1) then
																if (v324[1 - 0] == 28) then
																	v200[v322 - 1] = {v94,v324[1 + 2]};
																else
																	v200[v322 - 1] = {v71,v324[3]};
																end
																v93[#v93 + 1] = v200;
																break;
															end
														end
													end
													v94[v96[2]] = v40(v198, v199, v72);
													break;
												end
												if (1 == v197) then
													v200 = {};
													v199 = v18({}, {[v7("\100\17\189\88\73\94\54", "\45\59\78\212\54")]=function(v325, v326)
														local v327 = 0;
														local v328;
														while true do
															if (v327 == 0) then
																v328 = v200[v326];
																return v328[1][v328[2]];
															end
														end
													end,[v7("\47\105\141\142\145\39\163\244\21\78", "\144\112\54\227\235\230\78\205")]=function(v329, v330, v331)
														local v332 = 0;
														local v333;
														while true do
															if (v332 == 0) then
																v333 = v200[v330];
																v333[1][v333[2]] = v331;
																break;
															end
														end
													end});
													v197 = 2;
												end
												if (v197 == 0) then
													v198 = v85[v96[6 - 3]];
													v199 = nil;
													v197 = 1;
												end
											end
										end
									elseif (v97 > 34) then
										v94[v96[2]] = v71[v96[3]];
									elseif (v94[v96[2]] == v96[4]) then
										v88 = v88 + 1;
									else
										v88 = v96[3];
									end
								elseif (v97 <= 37) then
									if (v97 > 36) then
										v94[v96[3 - 1]] = v96[3] + v94[v96[4]];
									else
										v94[v96[2]] = {};
									end
								elseif (v97 == 38) then
									local v205 = 0;
									local v206;
									while true do
										if (v205 == 0) then
											v206 = v96[2];
											v94[v206] = v94[v206](v21(v94, v206 + 1, v96[3]));
											break;
										end
									end
								else
									local v207 = v96[2];
									local v208 = v94[v96[3]];
									v94[v207 + 1] = v208;
									v94[v207] = v208[v96[4]];
								end
							elseif (v97 <= 43) then
								if (v97 <= 41) then
									if (v97 == 40) then
										if not v94[v96[2]] then
											v88 = v88 + 1;
										else
											v88 = v96[3];
										end
									else
										local v212 = 0;
										local v213;
										while true do
											if (v212 == 0) then
												v213 = v96[2 + 0];
												v94[v213] = v94[v213](v21(v94, v213 + 1, v96[3]));
												break;
											end
										end
									end
								elseif (v97 == 42) then
									v94[v96[2]] = #v94[v96[3]];
								else
									local v215 = 0;
									local v216;
									local v217;
									local v218;
									local v219;
									while true do
										if (0 == v215) then
											v216 = v96[2];
											v217, v218 = v87(v94[v216](v21(v94, v216 + 1, v89)));
											v215 = 1;
										end
										if (v215 == 2) then
											for v334 = v216, v89 do
												local v335 = 0;
												while true do
													if (v335 == 0) then
														v219 = v219 + 1;
														v94[v334] = v217[v219];
														break;
													end
												end
											end
											break;
										end
										if (v215 == 1) then
											v89 = (v218 + v216) - 1;
											v219 = 791 - (368 + 423);
											v215 = 2;
										end
									end
								end
							elseif (v97 <= (141 - 96)) then
								if (v97 > 44) then
									v94[v96[2]] = v96[3];
								else
									do
										return v94[v96[2]]();
									end
								end
							elseif (v97 > 46) then
								local v222 = 0;
								local v223;
								local v224;
								local v225;
								local v226;
								while true do
									if (0 == v222) then
										v223 = v96[2];
										v224, v225 = v87(v94[v223](v94[v223 + 1]));
										v222 = 1;
									end
									if (v222 == 1) then
										v89 = (v225 + v223) - 1;
										v226 = 0;
										v222 = 2;
									end
									if (v222 == 2) then
										for v336 = v223, v89 do
											v226 = v226 + 1;
											v94[v336] = v224[v226];
										end
										break;
									end
								end
							else
								for v266 = v96[2], v96[21 - (10 + 8)] do
									v94[v266] = nil;
								end
							end
						elseif (v97 <= 55) then
							if (v97 <= 51) then
								if (v97 <= 49) then
									if (v97 == 48) then
										do
											return;
										end
									else
										local v227 = 0;
										local v228;
										local v229;
										while true do
											if (v227 == 0) then
												v228 = v96[2];
												v229 = v94[v228];
												v227 = 1;
											end
											if (v227 == 1) then
												for v339 = v228 + 1, v89 do
													v15(v229, v94[v339]);
												end
												break;
											end
										end
									end
								elseif (v97 == 50) then
									v94[v96[2]] = v94[v96[3]] + v96[4];
								else
									do
										return;
									end
								end
							elseif (v97 <= 53) then
								if (v97 > (199 - 147)) then
									local v231 = 0;
									local v232;
									local v233;
									local v234;
									local v235;
									while true do
										if (v231 == 2) then
											for v340 = v232, v89 do
												local v341 = 0;
												while true do
													if (0 == v341) then
														v235 = v235 + 1;
														v94[v340] = v233[v235];
														break;
													end
												end
											end
											break;
										end
										if (v231 == 0) then
											v232 = v96[444 - (416 + 26)];
											v233, v234 = v87(v94[v232](v94[v232 + 1]));
											v231 = 1;
										end
										if (v231 == 1) then
											v89 = (v234 + v232) - 1;
											v235 = 0 - 0;
											v231 = 2;
										end
									end
								else
									v94[v96[2]] = v94[v96[3]][v96[2 + 2]];
								end
							elseif (v97 > 54) then
								local v238 = 0;
								local v239;
								while true do
									if (v238 == 0) then
										v239 = v96[3 - 1];
										v94[v239](v21(v94, v239 + (439 - (145 + 293)), v89));
										break;
									end
								end
							else
								local v240 = 0;
								local v241;
								while true do
									if (v240 == 0) then
										v241 = v96[2];
										v94[v241] = v94[v241](v21(v94, v241 + 1, v89));
										break;
									end
								end
							end
						elseif (v97 <= 59) then
							if (v97 <= 57) then
								if (v97 == 56) then
									v94[v96[2]] = #v94[v96[3]];
								else
									local v243 = v96[2];
									local v244 = v94[v243];
									for v268 = v243 + (431 - (44 + 386)), v89 do
										v15(v244, v94[v268]);
									end
								end
							elseif (v97 == 58) then
								v88 = v96[3];
							elseif (v94[v96[2]] == v96[1490 - (998 + 488)]) then
								v88 = v88 + 1;
							else
								v88 = v96[3];
							end
						elseif (v97 <= 61) then
							if (v97 == 60) then
								v94[v96[2]] = v94[v96[3]] % v96[4];
							else
								for v269 = v96[1 + 1], v96[3] do
									v94[v269] = nil;
								end
							end
						elseif (v97 > (51 + 11)) then
							local v247 = v96[2];
							local v248 = v94[v247];
							local v249 = v94[v247 + 2];
							if (v249 > 0) then
								if (v248 > v94[v247 + 1]) then
									v88 = v96[3];
								else
									v94[v247 + 3] = v248;
								end
							elseif (v248 < v94[v247 + 1]) then
								v88 = v96[3];
							else
								v94[v247 + 3] = v248;
							end
						else
							v88 = v96[3];
						end
						v88 = v88 + 1;
						break;
					end
				end
			end
		end;
	end
	return v40(v39(), {}, v28)(...);
end
return v23("LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q00121D3Q00013Q0020055Q000200121D000100013Q00200500010001000300121D000200013Q00200500020002000400121D000300053Q0006140003000A0001000100043A3Q000A000100121D000300063Q00200500040003000700121D000500083Q00200500050005000900121D000600083Q00200500060006000A00062000073Q000100062Q001C3Q00064Q001C8Q001C3Q00044Q001C3Q00014Q001C3Q00024Q001C3Q00053Q00121D000800013Q00200500080008000B00121D0009000C3Q00121D000A000D3Q000620000B0001000100052Q001C3Q00074Q001C3Q00094Q001C3Q00084Q001C3Q000A4Q001C3Q000B4Q0012000C000B4Q0001000C00014Q0011000C6Q00303Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q001E00025Q00122D000300014Q003800045Q00122D000500013Q00043F0003002100012Q000600076Q0012000800024Q0006000900014Q0006000A00024Q0006000B00034Q0006000C00044Q0012000D6Q0012000E00063Q002015000F000600012Q0008000C000F4Q0036000B3Q00022Q0006000C00034Q0006000D00044Q0012000E00014Q0038000F00014Q0010000F0006000F001025000F0001000F2Q0038001000014Q00100010000600100010250010000100100020150010001000012Q0008000D00104Q0021000C6Q0036000A3Q000200203C000A000A00022Q002F0009000A4Q003700073Q00010004130003000500012Q0006000300054Q0012000400024Q0016000300044Q001100036Q00303Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q0006205Q000100012Q00238Q0006000100014Q0006000200024Q0006000300024Q001E00046Q0006000500034Q001200066Q002E000700074Q0008000500074Q003100043Q000100200500040004000100122D000500024Q002600030005000200122D000400034Q0008000200044Q003600013Q0002002622000100180001000400043A3Q001800012Q001200016Q001E00026Q0016000100024Q001100015Q00043A3Q001B00012Q0006000100044Q0001000100014Q001100016Q00303Q00013Q00013Q000B3Q0003023Q005F472Q033Q004B657903243Q00D39BDA71B3E8941F9CC7DD77B5F69347D0919624B6E29353869A8272B5B9961F80C58F7C03083Q007EB1A3BB4586DBA703043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203043Q004B69636B03353Q0009C223CBBC2BD93ED5EF798265C1F530CE25D7F86DCA2D8AE91A9802D3AF14DC78DFBC37C26AC2F9378D2B85FA31C82F85F726D46403053Q009C43AD4AA5026Q00F03F01163Q0006193Q001400013Q00043A3Q0014000100121D000100013Q0020050001000100022Q000600025Q00122D000300033Q00122D000400044Q002600020004000200062Q000100150001000200043A3Q0015000100121D000100053Q0020050001000100060020050001000100070020270001000100082Q000600035Q00122D000400093Q00122D0005000A4Q0008000300054Q003700013Q000100043A3Q0015000100200500013Q000B2Q00303Q00017Q00", v17(), ...);
