#include <SKSE/SKSE.h>
// Include SKSE/SKSE first

#include <RE/Skyrim.h>
#include <SKSEPluginInfo.h>

#include <format>

extern "C" __declspec(dllexport) bool SKSEPlugin_Load(const SKSE::LoadInterface* skse) {
    SKSE::Init(skse);

    SKSE::GetMessagingInterface()->RegisterListener(
        "SKSE",
        [](SKSE::MessagingInterface::Message* msg) {
            if (msg->type == SKSE::MessagingInterface::kDataLoaded) {
                auto* pluginName    = SKSEPluginInfo::GetPluginName();
                auto  pluginVersion = SKSEPluginInfo::GetPluginVersion().string();
                auto* authorName    = SKSEPluginInfo::GetAuthorName();
                auto* authorEmail   = SKSEPluginInfo::GetAuthorEmail();
                RE::ConsoleLog::GetSingleton()->Print(std::format(
                                                          "Plugin {} Version {} Author {} <{}>",
                                                          pluginName, pluginVersion, authorName,
                                                          authorEmail
                )
                                                          .c_str());
            }
        }
    );

    return true;
}