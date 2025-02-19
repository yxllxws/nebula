local v0 = string.char
local v1 = string.byte
local v2 = string.sub
local v3 = bit32 or bit
local v4 = v3.bxor
local v5 = table.concat
local v6 = table.insert
local function v7(v24, v25)
    local v26 = {}
    for v41 = 1, #v24 do
        v6(v26, v0(v4(v1(v2(v24, v41, v41 + 1)), v1(v2(v25, 1 + (v41 % #v25), 1 + (v41 % #v25) + 1))) % 256))
    end
    return v5(v26)
end
local v8 = tonumber
local v9 = string.byte
local v10 = string.char
local v11 = string.sub
local v12 = string.gsub
local v13 = string.rep
local v14 = table.concat
local v15 = table.insert
local v16 = math.ldexp
local v17 = getfenv or function()
        return _ENV
    end
local v18 = setmetatable
local v19 = pcall
local v20 = select
local v21 = unpack or table.unpack
local v22 = tonumber
local function v23(v27, v28, ...)
    local v29 = 1
    local v30
    v27 =
        v12(
        v11(v27, 5),
        v7("\26\248", "\218\52\214\209"),
        function(v42)
            if (v9(v42, 2) == 81) then
                local v101 = 0
                while true do
                    if (v101 == 0) then
                        v30 = v8(v11(v42, 1, 1))
                        return ""
                    end
                end
            else
                local v102 = 0
                local v103
                while true do
                    if (v102 == 0) then
                        v103 = v10(v8(v42, 16))
                        if v30 then
                            local v123 = v13(v103, v30)
                            v30 = nil
                            return v123
                        else
                            return v103
                        end
                        break
                    end
                end
            end
        end
    )
    local function v31(v43, v44, v45)
        if v45 then
            local v104 = 0
            local v105
            while true do
                if (v104 == 0) then
                    v105 = (v43 / (2 ^ (v44 - 1))) % (2 ^ (((v45 - (2 - 1)) - (v44 - 1)) + 1))
                    return v105 - (v105 % 1)
                end
            end
        else
            local v106 = 0
            local v107
            while true do
                if (v106 == 0) then
                    v107 = (5 - 3) ^ (v44 - 1)
                    return (((v43 % (v107 + v107)) >= v107) and 1) or 0
                end
            end
        end
    end
    local function v32()
        local v46 = 0
        local v47
        while true do
            if (v46 == 1) then
                return v47
            end
            if (v46 == 0) then
                v47 = v9(v27, v29, v29)
                v29 = v29 + 1
                v46 = 1
            end
        end
    end
    local function v33()
        local v48 = 0
        local v49
        local v50
        while true do
            if (v48 == 1) then
                return (v50 * 256) + v49
            end
            if (v48 == 0) then
                v49, v50 = v9(v27, v29, v29 + 2)
                v29 = v29 + 2
                v48 = 1
            end
        end
    end
    local function v34()
        local v51, v52, v53, v54 = v9(v27, v29, v29 + 3)
        v29 = v29 + 4
        return (v54 * 16777216) + (v53 * 65536) + (v52 * 256) + v51
    end
    local function v35()
        local v55 = 0
        local v56
        local v57
        local v58
        local v59
        local v60
        local v61
        while true do
            if (v55 == 0) then
                v56 = v34()
                v57 = v34()
                v55 = 1
            end
            if (v55 == 1) then
                v58 = 1
                v59 = (v31(v57, 1, 20) * (2 ^ 32)) + v56
                v55 = 2
            end
            if (v55 == 2) then
                v60 = v31(v57, 21, 31)
                v61 = ((v31(v57, 61 - 29) == 1) and -1) or 1
                v55 = 3
            end
            if (3 == v55) then
                if (v60 == 0) then
                    if (v59 == 0) then
                        return v61 * 0
                    else
                        v60 = 2 - 1
                        v58 = 0
                    end
                elseif (v60 == 2047) then
                    return ((v59 == 0) and (v61 * (1 / 0))) or (v61 * NaN)
                end
                return v16(v61, v60 - 1023) * (v58 + (v59 / (2 ^ (671 - (555 + 64)))))
            end
        end
    end
    local function v36(v62)
        local v63 = 0
        local v64
        local v65
        while true do
            if (v63 == 1) then
                v64 = v11(v27, v29, (v29 + v62) - 1)
                v29 = v29 + v62
                v63 = 2
            end
            if (v63 == 0) then
                v64 = nil
                if not v62 then
                    v62 = v34()
                    if (v62 == 0) then
                        return ""
                    end
                end
                v63 = 1
            end
            if (2 == v63) then
                v65 = {}
                for v114 = 932 - (857 + 74), #v64 do
                    v65[v114] = v10(v9(v11(v64, v114, v114)))
                end
                v63 = 3
            end
            if (v63 == 3) then
                return v14(v65)
            end
        end
    end
    local v37 = v34
    local function v38(...)
        return {...}, v20("#", ...)
    end
    local function v39()
        local v66 = {}
        local v67 = {}
        local v68 = {}
        local v69 = {v66, v67, nil, v68}
        local v70 = v34()
        local v71 = {}
        for v79 = 1, v70 do
            local v80 = v32()
            local v81
            if (v80 == 1) then
                v81 = v32() ~= (0 + 0)
            elseif (v80 == 2) then
                v81 = v35()
            elseif (v80 == 3) then
                v81 = v36()
            end
            v71[v79] = v81
        end
        v69[3] = v32()
        for v83 = 1, v34() do
            local v84 = v32()
            if (v31(v84, 1, 1) == 0) then
                local v110 = 0
                local v111
                local v112
                local v113
                while true do
                    if (v110 == 3) then
                        if (v31(v112, 3, 3) == 1) then
                            v113[4] = v71[v113[4]]
                        end
                        v66[v83] = v113
                        break
                    end
                    if (v110 == 1) then
                        v113 = {v33(), v33(), nil, nil}
                        if (v111 == 0) then
                            local v126 = 0
                            while true do
                                if (v126 == 0) then
                                    v113[3] = v33()
                                    v113[4] = v33()
                                    break
                                end
                            end
                        elseif (v111 == 1) then
                            v113[3] = v34()
                        elseif (v111 == 2) then
                            v113[3] = v34() - (2 ^ 16)
                        elseif (v111 == 3) then
                            local v135 = 0
                            while true do
                                if (v135 == 0) then
                                    v113[3] = v34() - (2 ^ 16)
                                    v113[4] = v33()
                                    break
                                end
                            end
                        end
                        v110 = 2
                    end
                    if (0 == v110) then
                        v111 = v31(v84, 1 + 1, 3)
                        v112 = v31(v84, 4, 6)
                        v110 = 1
                    end
                    if (v110 == 2) then
                        if (v31(v112, 1, 1) == 1) then
                            v113[2] = v71[v113[2]]
                        end
                        if (v31(v112, 2, 2) == (878 - (282 + 595))) then
                            v113[3] = v71[v113[1640 - (1523 + 114)]]
                        end
                        v110 = 3
                    end
                end
            end
        end
        for v85 = 1, v34() do
            v67[v85 - 1] = v39()
        end
        return v69
    end
    local function v40(v73, v74, v75)
        local v76 = v73[1]
        local v77 = v73[2]
        local v78 = v73[3]
        return function(...)
            local v87 = v76
            local v88 = v77
            local v89 = v78
            local v90 = v38
            local v91 = 1
            local v92 = -1
            local v93 = {}
            local v94 = {...}
            local v95 = v20("#", ...) - 1
            local v96 = {}
            local v97 = {}
            for v108 = 0, v95 do
                if (v108 >= v89) then
                    v93[v108 - v89] = v94[v108 + 1]
                else
                    v97[v108] = v94[v108 + 1]
                end
            end
            local v98 = (v95 - v89) + 1
            local v99
            local v100
            while true do
                local v109 = 0
                while true do
                    if (v109 == 0) then
                        v99 = v87[v91]
                        v100 = v99[1 + 0]
                        v109 = 1
                    end
                    if (v109 == 1) then
                        if (v100 <= 31) then
                            if (v100 <= 15) then
                                if (v100 <= 7) then
                                    if (v100 <= (3 - 0)) then
                                        if (v100 <= (1066 - (68 + 997))) then
                                            if (v100 == 0) then
                                                if v97[v99[2]] then
                                                    v91 = v91 + 1
                                                else
                                                    v91 = v99[3]
                                                end
                                            else
                                                local v138 = v99[2]
                                                local v139 = v97[v138 + (1272 - (226 + 1044))]
                                                local v140 = v97[v138] + v139
                                                v97[v138] = v140
                                                if (v139 > (0 - 0)) then
                                                    if (v140 <= v97[v138 + 1]) then
                                                        v91 = v99[120 - (32 + 85)]
                                                        v97[v138 + 3] = v140
                                                    end
                                                elseif (v140 >= v97[v138 + 1 + 0]) then
                                                    local v309 = 0
                                                    while true do
                                                        if (v309 == 0) then
                                                            v91 = v99[3]
                                                            v97[v138 + 3] = v140
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        elseif (v100 == 2) then
                                            v97[v99[2]] = v97[v99[3]]
                                        else
                                            local v144 = 0
                                            local v145
                                            while true do
                                                if (v144 == 0) then
                                                    v145 = v99[2]
                                                    do
                                                        return v21(v97, v145, v92)
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    elseif (v100 <= 5) then
                                        if (v100 > 4) then
                                            v97[v99[2]] = v75[v99[3]]
                                        else
                                            local v148 = 0
                                            local v149
                                            while true do
                                                if (v148 == 0) then
                                                    v149 = v99[2]
                                                    do
                                                        return v97[v149](v21(v97, v149 + 1, v99[3]))
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    elseif (v100 == 6) then
                                        local v150 = 0
                                        local v151
                                        while true do
                                            if (v150 == 0) then
                                                v151 = v99[2]
                                                v97[v151] = v97[v151](v21(v97, v151 + 1, v99[1 + 2]))
                                                break
                                            end
                                        end
                                    else
                                        v97[v99[2]] = v97[v99[3]] + v99[961 - (892 + 65)]
                                    end
                                elseif (v100 <= 11) then
                                    if (v100 <= (21 - 12)) then
                                        if (v100 > 8) then
                                            local v153 = 0
                                            local v154
                                            local v155
                                            local v156
                                            local v157
                                            while true do
                                                if (v153 == 2) then
                                                    for v310 = v154, v92 do
                                                        local v311 = 0
                                                        while true do
                                                            if (v311 == 0) then
                                                                v157 = v157 + 1
                                                                v97[v310] = v155[v157]
                                                                break
                                                            end
                                                        end
                                                    end
                                                    break
                                                end
                                                if (v153 == 1) then
                                                    v92 = (v156 + v154) - 1
                                                    v157 = 0
                                                    v153 = 2
                                                end
                                                if (0 == v153) then
                                                    v154 = v99[2]
                                                    v155, v156 = v90(v97[v154](v97[v154 + 1]))
                                                    v153 = 1
                                                end
                                            end
                                        else
                                            v97[v99[2]] = {}
                                        end
                                    elseif (v100 == 10) then
                                        local v159 = 0
                                        local v160
                                        while true do
                                            if (v159 == 0) then
                                                v160 = v99[2]
                                                v97[v160](v21(v97, v160 + 1, v92))
                                                break
                                            end
                                        end
                                    elseif (v97[v99[2]] ~= v97[v99[4]]) then
                                        v91 = v91 + 1
                                    else
                                        v91 = v99[3]
                                    end
                                elseif (v100 <= 13) then
                                    if (v100 == (21 - 9)) then
                                        v97[v99[2]] = v99[3]
                                    else
                                        v97[v99[2]] = v99[3]
                                    end
                                elseif (v100 > 14) then
                                    v97[v99[2]] = v75[v99[3]]
                                else
                                    local v167 = v99[2]
                                    local v168, v169 = v90(v97[v167](v97[v167 + 1]))
                                    v92 = (v169 + v167) - 1
                                    local v170 = 0
                                    for v257 = v167, v92 do
                                        local v258 = 0
                                        while true do
                                            if (v258 == 0) then
                                                v170 = v170 + 1
                                                v97[v257] = v168[v170]
                                                break
                                            end
                                        end
                                    end
                                end
                            elseif (v100 <= 23) then
                                if (v100 <= 19) then
                                    if (v100 <= 17) then
                                        if (v100 > 16) then
                                            local v171 = v99[3 - 1]
                                            local v172 = v97[v99[3]]
                                            v97[v171 + 1] = v172
                                            v97[v171] = v172[v99[4]]
                                        else
                                            local v176 = 0
                                            local v177
                                            while true do
                                                if (v176 == 0) then
                                                    v177 = v99[352 - (87 + 263)]
                                                    do
                                                        return v21(v97, v177, v92)
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    elseif (v100 > 18) then
                                        v97[v99[2]] = v97[v99[3]] % v97[v99[4]]
                                    else
                                        for v259 = v99[182 - (67 + 113)], v99[3] do
                                            v97[v259] = nil
                                        end
                                    end
                                elseif (v100 <= 21) then
                                    if (v100 > 20) then
                                        v97[v99[2]] = v99[3] + v97[v99[4]]
                                    else
                                        local v180 = 0
                                        local v181
                                        local v182
                                        local v183
                                        while true do
                                            if (0 == v180) then
                                                v181 = v88[v99[3]]
                                                v182 = nil
                                                v180 = 1
                                            end
                                            if (v180 == 1) then
                                                v183 = {}
                                                v182 =
                                                    v18(
                                                    {},
                                                    {
                                                        [v7("\40\14\161\64\19\52\176", "\46\119\81\200")] = function(
                                                            v314,
                                                            v315)
                                                            local v316 = 0
                                                            local v317
                                                            while true do
                                                                if (v316 == 0) then
                                                                    v317 = v183[v315]
                                                                    return v317[1][v317[2 + 0]]
                                                                end
                                                            end
                                                        end,
                                                        [v7(
                                                            "\122\243\56\46\155\185\75\200\51\51",
                                                            "\208\37\172\86\75\236"
                                                        )] = function(v318, v319, v320)
                                                            local v321 = v183[v319]
                                                            v321[2 - 1][v321[2]] = v320
                                                        end
                                                    }
                                                )
                                                v180 = 2
                                            end
                                            if (v180 == 2) then
                                                for v323 = 1, v99[4] do
                                                    local v324 = 0
                                                    local v325
                                                    while true do
                                                        if (v324 == 1) then
                                                            if (v325[1 + 0] == 42) then
                                                                v183[v323 - 1] = {v97, v325[3]}
                                                            else
                                                                v183[v323 - 1] = {v74, v325[11 - 8]}
                                                            end
                                                            v96[#v96 + (953 - (802 + 150))] = v183
                                                            break
                                                        end
                                                        if (0 == v324) then
                                                            v91 = v91 + 1
                                                            v325 = v87[v91]
                                                            v324 = 1
                                                        end
                                                    end
                                                end
                                                v97[v99[2]] = v40(v181, v182, v75)
                                                break
                                            end
                                        end
                                    end
                                elseif (v100 > 22) then
                                    if (v97[v99[2]] ~= v97[v99[4]]) then
                                        v91 = v91 + (2 - 1)
                                    else
                                        v91 = v99[3]
                                    end
                                else
                                    do
                                        return v97[v99[2]]()
                                    end
                                end
                            elseif (v100 <= 27) then
                                if (v100 <= (45 - 20)) then
                                    if (v100 == 24) then
                                        local v184 = 0
                                        local v185
                                        local v186
                                        while true do
                                            if (1 == v184) then
                                                for v326 = v185 + 1, v92 do
                                                    v15(v186, v97[v326])
                                                end
                                                break
                                            end
                                            if (v184 == 0) then
                                                v185 = v99[2]
                                                v186 = v97[v185]
                                                v184 = 1
                                            end
                                        end
                                    else
                                        v97[v99[2 + 0]] = v97[v99[3]] + v99[4]
                                    end
                                elseif (v100 == (1023 - (915 + 82))) then
                                    for v261 = v99[2], v99[3] do
                                        v97[v261] = nil
                                    end
                                else
                                    v97[v99[2]] = v74[v99[3]]
                                end
                            elseif (v100 <= 29) then
                                if (v100 > 28) then
                                    local v190 = 0
                                    local v191
                                    local v192
                                    local v193
                                    while true do
                                        if (1 == v190) then
                                            v193 = v97[v191 + (5 - 3)]
                                            if (v193 > (0 + 0)) then
                                                if (v192 > v97[v191 + 1]) then
                                                    v91 = v99[3]
                                                else
                                                    v97[v191 + 3] = v192
                                                end
                                            elseif (v192 < v97[v191 + 1]) then
                                                v91 = v99[3]
                                            else
                                                v97[v191 + 3] = v192
                                            end
                                            break
                                        end
                                        if (v190 == 0) then
                                            v191 = v99[2]
                                            v192 = v97[v191]
                                            v190 = 1
                                        end
                                    end
                                elseif v97[v99[2 - 0]] then
                                    v91 = v91 + 1
                                else
                                    v91 = v99[3]
                                end
                            elseif (v100 == 30) then
                                if not v97[v99[2]] then
                                    v91 = v91 + 1
                                else
                                    v91 = v99[3]
                                end
                            else
                                local v194 = 0
                                local v195
                                local v196
                                local v197
                                local v198
                                while true do
                                    if (v194 == 1) then
                                        v92 = (v197 + v195) - 1
                                        v198 = 0
                                        v194 = 2
                                    end
                                    if (v194 == 2) then
                                        for v327 = v195, v92 do
                                            v198 = v198 + 1
                                            v97[v327] = v196[v198]
                                        end
                                        break
                                    end
                                    if (0 == v194) then
                                        v195 = v99[2]
                                        v196, v197 = v90(v97[v195](v21(v97, v195 + (1188 - (1069 + 118)), v99[3])))
                                        v194 = 1
                                    end
                                end
                            end
                        elseif (v100 <= 47) then
                            if (v100 <= 39) then
                                if (v100 <= (79 - 44)) then
                                    if (v100 <= (72 - 39)) then
                                        if (v100 > 32) then
                                            if (v97[v99[2]] == v99[1 + 3]) then
                                                v91 = v91 + 1
                                            else
                                                v91 = v99[3]
                                            end
                                        else
                                            local v199 = 0
                                            local v200
                                            local v201
                                            while true do
                                                if (v199 == 1) then
                                                    v97[v200 + 1] = v201
                                                    v97[v200] = v201[v99[4]]
                                                    break
                                                end
                                                if (v199 == 0) then
                                                    v200 = v99[2]
                                                    v201 = v97[v99[4 - 1]]
                                                    v199 = 1
                                                end
                                            end
                                        end
                                    elseif (v100 > 34) then
                                        v97[v99[2]] = v99[3] + v97[v99[4]]
                                    else
                                        v97[v99[2]] = {}
                                    end
                                elseif (v100 <= 37) then
                                    if (v100 == 36) then
                                        local v204 = 0
                                        local v205
                                        local v206
                                        local v207
                                        local v208
                                        while true do
                                            if (0 == v204) then
                                                v205 = v99[2]
                                                v206, v207 = v90(v97[v205](v21(v97, v205 + 1, v92)))
                                                v204 = 1
                                            end
                                            if (1 == v204) then
                                                v92 = (v207 + v205) - 1
                                                v208 = 0
                                                v204 = 2
                                            end
                                            if (v204 == 2) then
                                                for v330 = v205, v92 do
                                                    local v331 = 0
                                                    while true do
                                                        if (v331 == 0) then
                                                            v208 = v208 + 1
                                                            v97[v330] = v206[v208]
                                                            break
                                                        end
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    else
                                        v97[v99[2]] = v97[v99[3]] % v99[4]
                                    end
                                elseif (v100 > 38) then
                                    do
                                        return
                                    end
                                else
                                    local v210 = 0
                                    local v211
                                    while true do
                                        if (v210 == 0) then
                                            v211 = v99[2]
                                            v97[v211](v21(v97, v211 + 1 + 0, v92))
                                            break
                                        end
                                    end
                                end
                            elseif (v100 <= 43) then
                                if (v100 <= 41) then
                                    if (v100 > 40) then
                                        if (v97[v99[2]] == v99[4]) then
                                            v91 = v91 + 1
                                        else
                                            v91 = v99[3]
                                        end
                                    else
                                        v97[v99[2]] = v97[v99[3]][v99[4]]
                                    end
                                elseif (v100 > (833 - (368 + 423))) then
                                    local v214 = 0
                                    local v215
                                    local v216
                                    local v217
                                    while true do
                                        if (v214 == 0) then
                                            v215 = v88[v99[3]]
                                            v216 = nil
                                            v214 = 1
                                        end
                                        if (2 == v214) then
                                            for v332 = 1, v99[4] do
                                                local v333 = 0
                                                local v334
                                                while true do
                                                    if (0 == v333) then
                                                        v91 = v91 + 1
                                                        v334 = v87[v91]
                                                        v333 = 1
                                                    end
                                                    if (v333 == 1) then
                                                        if (v334[1] == 42) then
                                                            v217[v332 - 1] = {v97, v334[3]}
                                                        else
                                                            v217[v332 - (19 - (10 + 8))] = {v74, v334[445 - (416 + 26)]}
                                                        end
                                                        v96[#v96 + 1] = v217
                                                        break
                                                    end
                                                end
                                            end
                                            v97[v99[6 - 4]] = v40(v215, v216, v75)
                                            break
                                        end
                                        if (v214 == 1) then
                                            v217 = {}
                                            v216 =
                                                v18(
                                                {},
                                                {
                                                    [v7("\150\130\230\133\168\172\165", "\204\201\221\143\235")] = function(
                                                        v335,
                                                        v336)
                                                        local v337 = v217[v336]
                                                        return v337[1][v337[2]]
                                                    end,
                                                    [v7("\72\186\240\68\96\140\240\69\114\157", "\33\23\229\158")] = function(
                                                        v338,
                                                        v339,
                                                        v340)
                                                        local v341 = 0
                                                        local v342
                                                        while true do
                                                            if (v341 == 0) then
                                                                v342 = v217[v339]
                                                                v342[1][v342[6 - 4]] = v340
                                                                break
                                                            end
                                                        end
                                                    end
                                                }
                                            )
                                            v214 = 2
                                        end
                                    end
                                else
                                    v97[v99[2]] = v97[v99[3]]
                                end
                            elseif (v100 <= 45) then
                                if (v100 > (19 + 25)) then
                                    v91 = v99[3]
                                else
                                    do
                                        return v97[v99[2]]()
                                    end
                                end
                            elseif (v100 > 46) then
                                v91 = v99[3]
                            else
                                v97[v99[2]] = #v97[v99[3]]
                            end
                        elseif (v100 <= 55) then
                            if (v100 <= 51) then
                                if (v100 <= 49) then
                                    if (v100 == 48) then
                                        local v223 = 0
                                        local v224
                                        local v225
                                        while true do
                                            if (v223 == 0) then
                                                v224 = v99[2]
                                                v225 = v97[v224]
                                                v223 = 1
                                            end
                                            if (1 == v223) then
                                                for v343 = v224 + 1, v92 do
                                                    v15(v225, v97[v343])
                                                end
                                                break
                                            end
                                        end
                                    else
                                        local v226 = 0
                                        local v227
                                        local v228
                                        local v229
                                        while true do
                                            if (v226 == 1) then
                                                v229 = v97[v227 + 2]
                                                if (v229 > 0) then
                                                    if (v228 > v97[v227 + 1]) then
                                                        v91 = v99[3]
                                                    else
                                                        v97[v227 + (4 - 1)] = v228
                                                    end
                                                elseif (v228 < v97[v227 + 1]) then
                                                    v91 = v99[3]
                                                else
                                                    v97[v227 + 3] = v228
                                                end
                                                break
                                            end
                                            if (v226 == 0) then
                                                v227 = v99[2]
                                                v228 = v97[v227]
                                                v226 = 1
                                            end
                                        end
                                    end
                                elseif (v100 == 50) then
                                    v97[v99[2]] = v97[v99[3]] % v97[v99[4]]
                                else
                                    v97[v99[440 - (145 + 293)]] = v74[v99[3]]
                                end
                            elseif (v100 <= 53) then
                                if (v100 > 52) then
                                    local v233 = 0
                                    local v234
                                    local v235
                                    local v236
                                    local v237
                                    while true do
                                        if (v233 == 1) then
                                            v92 = (v236 + v234) - 1
                                            v237 = 0
                                            v233 = 2
                                        end
                                        if (v233 == 2) then
                                            for v344 = v234, v92 do
                                                local v345 = 0
                                                while true do
                                                    if (0 == v345) then
                                                        v237 = v237 + 1
                                                        v97[v344] = v235[v237]
                                                        break
                                                    end
                                                end
                                            end
                                            break
                                        end
                                        if (0 == v233) then
                                            v234 = v99[432 - (44 + 386)]
                                            v235, v236 = v90(v97[v234](v21(v97, v234 + 1, v99[3])))
                                            v233 = 1
                                        end
                                    end
                                else
                                    do
                                        return
                                    end
                                end
                            elseif (v100 == 54) then
                                local v238 = v99[2]
                                do
                                    return v97[v238](v21(v97, v238 + 1, v99[3]))
                                end
                            else
                                v97[v99[2]] = v97[v99[3]] % v99[4]
                            end
                        elseif (v100 <= 59) then
                            if (v100 <= 57) then
                                if (v100 == 56) then
                                    local v240 = v99[1488 - (998 + 488)]
                                    local v241 = v97[v240 + 2]
                                    local v242 = v97[v240] + v241
                                    v97[v240] = v242
                                    if (v241 > 0) then
                                        if (v242 <= v97[v240 + 1]) then
                                            local v346 = 0
                                            while true do
                                                if (v346 == 0) then
                                                    v91 = v99[3]
                                                    v97[v240 + 3] = v242
                                                    break
                                                end
                                            end
                                        end
                                    elseif (v242 >= v97[v240 + 1]) then
                                        local v347 = 0
                                        while true do
                                            if (0 == v347) then
                                                v91 = v99[3]
                                                v97[v240 + 3] = v242
                                                break
                                            end
                                        end
                                    end
                                else
                                    local v244 = 0
                                    local v245
                                    while true do
                                        if (v244 == 0) then
                                            v245 = v99[2]
                                            v97[v245] = v97[v245](v21(v97, v245 + 1, v92))
                                            break
                                        end
                                    end
                                end
                            elseif (v100 == 58) then
                                local v246 = v99[1 + 1]
                                v97[v246] = v97[v246](v21(v97, v246 + 1, v99[3]))
                            else
                                local v248 = 0
                                local v249
                                while true do
                                    if (v248 == 0) then
                                        v249 = v99[2]
                                        v97[v249] = v97[v249](v21(v97, v249 + 1, v92))
                                        break
                                    end
                                end
                            end
                        elseif (v100 <= 61) then
                            if (v100 > 60) then
                                v97[v99[2 + 0]] = v97[v99[3]][v99[4]]
                            elseif not v97[v99[774 - (201 + 571)]] then
                                v91 = v91 + 1
                            else
                                v91 = v99[3]
                            end
                        elseif (v100 > (1200 - (116 + 1022))) then
                            v97[v99[2]] = #v97[v99[3]]
                        else
                            local v253 = v99[2]
                            local v254, v255 = v90(v97[v253](v21(v97, v253 + 1, v92)))
                            v92 = (v255 + v253) - 1
                            local v256 = 0
                            for v263 = v253, v92 do
                                local v264 = 0
                                while true do
                                    if (v264 == 0) then
                                        v256 = v256 + 1
                                        v97[v263] = v254[v256]
                                        break
                                    end
                                end
                            end
                        end
                        v91 = v91 + 1
                        break
                    end
                end
            end
        end
    end
    return v40(v39(), {}, v28)(...)
end
return v23(
    "LOL!0D3Q0003063Q00737472696E6703043Q006368617203043Q00627974652Q033Q0073756203053Q0062697433322Q033Q0062697403043Q0062786F7203053Q007461626C6503063Q00636F6E63617403063Q00696E7365727403053Q006D6174636803083Q00746F6E756D62657203053Q007063612Q6C00243Q0012053Q00013Q00203D5Q0002001205000100013Q00203D000100010003001205000200013Q00203D000200020004001205000300053Q00061E0003000A0001000100042D3Q000A0001001205000300063Q00203D000400030007001205000500083Q00203D000500050009001205000600083Q00203D00060006000A00062B00073Q000100062Q002A3Q00064Q002A8Q002A3Q00044Q002A3Q00014Q002A3Q00024Q002A3Q00053Q001205000800013Q00203D00080008000B0012050009000C3Q001205000A000D3Q00062B000B0001000100052Q002A3Q00074Q002A3Q00094Q002A3Q00084Q002A3Q000A4Q002A3Q000B4Q0002000C000B4Q002C000C00014Q0010000C6Q00273Q00013Q00023Q00023Q00026Q00F03F026Q00704002264Q002200025Q00120C000300014Q003F00045Q00120C000500013Q00041D0003002100012Q003300076Q0002000800024Q0033000900014Q0033000A00024Q0033000B00034Q0033000C00044Q0002000D6Q0002000E00063Q002019000F000600012Q0035000C000F4Q0039000B3Q00022Q0033000C00034Q0033000D00044Q0002000E00014Q003F000F00014Q0032000F0006000F001015000F0001000F2Q003F001000014Q00320010000600100010150010000100100020190010001000012Q0035000D00104Q0024000C6Q0039000A3Q0002002025000A000A00022Q000E0009000A4Q002600073Q00010004380003000500012Q0033000300054Q0002000400024Q0036000300044Q001000036Q00273Q00017Q00043Q00027Q004003053Q003A25642B3A2Q033Q0025642B026Q00F03F001C3Q00062B5Q000100012Q001B8Q0033000100014Q0033000200024Q0033000300024Q002200046Q0033000500034Q000200066Q0012000700074Q0035000500074Q001800043Q000100203D00040004000100120C000500024Q003A00030005000200120C000400034Q0035000200044Q003900013Q0002002629000100180001000400042D3Q001800012Q000200016Q002200026Q0036000100024Q001000015Q00042D3Q001B00012Q0033000100044Q002C000100014Q001000016Q00273Q00013Q00013Q000B3Q0003023Q005F472Q033Q004B6579030F3Q00FFC6D930EABAE117C3D0CF12E3BECC03083Q007EB1A3BB4586DBA703043Q0067616D6503073Q00506C6179657273030B3Q004C6F63616C506C6179657203043Q004B69636B03353Q0009C223CBBC2BD93ED5EF798265C1F530CE25D7F86DCA2D8AE91A9802D3AF14DC78DFBC37C26AC2F9378D2B85FA31C82F85F726D46403053Q009C43AD4AA5026Q00F03F01163Q00064Q001400013Q00042D3Q00140001001205000100013Q00203D0001000100022Q003300025Q00120C000300033Q00120C000400044Q003A00020004000200060B000100150001000200042D3Q00150001001205000100053Q00203D00010001000600203D000100010007002Q200001000100082Q003300035Q00120C000400093Q00120C0005000A4Q0035000300054Q002600013Q000100042D3Q0015000100203D00013Q000B2Q00273Q00017Q00",
    v17(),
    ...
)
-- ⚠️ WARNING: integrity protected!
--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]] --
