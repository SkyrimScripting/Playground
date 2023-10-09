set_languages("c++20")

add_rules("mode.debug", "mode.releasedbg")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")

add_requires("skyrim-commonlib-ae", "skyrim-commonlib-se", "skyrim-commonlib-vr", "skyrim-commonlib-ng", "skyrim-commonlib")

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

target("NG")
    add_files("plugin.cpp")
    add_packages("skyrim-commonlib-ng")
    add_rules("@skyrim-commonlib-ng/plugin", {
        name = "Simple Plugin Custom NG",
        version = "420.1.69",
        author = "Mrowr Purr",
        email = "mrowr.purr@gmail.com",
        mods_folder = os.getenv("SKYRIM_MODS_AE")
    })

target("Default CommonLib")
    add_files("plugin.cpp")
    add_packages("skyrim-commonlib")
    add_rules("@skyrim-commonlib/plugin", {
        name = "Simple Plugin Custom Default CommonLib",
        version = "420.1.69",
        author = "Mrowr Purr",
        email = "mrowr.purr@gmail.com",
        mods_folder = os.getenv("SKYRIM_MODS_AE")
    })
