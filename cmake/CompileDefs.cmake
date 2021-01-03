if (MSVC)
    set(COMPILE_FLAGS
        /std:c++17
        /W0
        /WX-
        /MP
        /GF
        /EHsc
        /fp:except
        /fp:precise
        /bigobj
        /Y-
        /experimental:external
        /external:anglebrackets
        /external:W0
    )

    set(COMPILE_FLAGS_DEBUG
        ${COMPILE_FLAGS}
        /JMC
        /ZI
        /Od
        /RTC1
        /MTd
        /GS
        /GR
        /sdl
    )

    set(COMPILE_FLAGS_RELEASE
        ${COMPILE_FLAGS}
        /O2
        /Oi
        /Ot
        /GL
        /MT
        /GS-
        /Gy
        /GR-
    )
else()
    set(COMPILE_FLAGS
        -frtti
        -fvisibility-ms-compat
        -fexceptions
        -pthread
    )

    set(COMPILE_FLAGS_DEBUG
        ${COMPILE_FLAGS}
        -Wall
        -Wextra
        -fanalyzer
        -g3
        -Og
    )

    set(COMPILE_FLAGS_RELEASE
        ${COMPILE_FLAGS}
        -w
        -O3
    )
endif()