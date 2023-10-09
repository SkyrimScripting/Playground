set_languages("c++20")

add_rules("mode.debug", "mode.releasedbg")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")

add_requires("skyrim-commonlib-ae")

target("Simplest_Plugin_AE")
    add_files("plugin.cpp")
    add_packages("skyrim-commonlib-ae")
    add_rules("@skyrim-commonlib-ae/plugin", {
        name = "Simple Plugin Custom AE",
        version = "420.1.69",
        author = "Mrowr Purr",
        email = "mrowr.purr@gmail.com",
        mods_folder = os.getenv("SKYRIM_MODS_AE")
    })
