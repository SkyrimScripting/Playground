#include <SKSEPluginInfo.h>

#include <format>

#include "RE/Skyrim.h"
#include "SKSE/SKSE.h"

SKSEPluginLoad(const SKSE::LoadInterface* skse) {
    SKSE::Init(skse);

    // Once all plugins and mods are loaded, then the ~ console is ready and can
    // be printed to
    SKSE::GetMessagingInterface()->RegisterListener([](SKSE::MessagingInterface::Message* message) {
        if (message->type == SKSE::MessagingInterface::kDataLoaded) {
            auto* name    = SKSEPluginInfo::GetPluginName();
            auto  version = SKSEPluginInfo::GetPluginVersion().string(".");
            auto* author  = SKSEPluginInfo::GetAuthorName();
            auto* email   = SKSEPluginInfo::GetAuthorEmail();
            RE::ConsoleLog::GetSingleton()->Print(
                std::format(
                    "NG CMake Project with PluginInfo {} {} {} <{}>", name, version, author, email
                )
                    .c_str()
            );
        }
    });

    return true;
}