set_languages("c++20")

add_rules("mode.debug", "mode.releasedbg")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")

add_requires("skyrim-commonlib-ae", "skyrim-commonlib-se", "skyrim-commonlib-vr")

-- TODO: don't forget skyrim-commonlib and skyrim-commonlib-ng

target("AE")
    add_files("plugin.cpp")
    add_packages("skyrim-commonlib-ae")
    add_rules("@skyrim-commonlib-ae/plugin", {
        name = "Simple Plugin Custom AE",
        version = "420.1.69",
        author = "Mrowr Purr",
        email = "mrowr.purr@gmail.com",
        mods_folder = os.getenv("SKYRIM_MODS_AE")
    })

target("SE")
    add_files("plugin.cpp")
    add_packages("skyrim-commonlib-se")
    add_rules("@skyrim-commonlib-se/plugin", {
        name = "Simple Plugin Custom SE",
        version = "420.1.69",
        author = "Mrowr Purr",
        email = "mrowr.purr@gmail.com",
        mods_folder = os.getenv("SKYRIM_MODS_SE")
    })


target("VR")
    add_files("plugin.cpp")
    add_packages("skyrim-commonlib-vr")
    add_rules("@skyrim-commonlib-vr/plugin", {
        name = "Simple Plugin Custom VR",
        version = "420.1.69",
        author = "Mrowr Purr",
        email = "mrowr.purr@gmail.com",
        mods_folder = os.getenv("SKYRIM_MODS_VR")
    })
