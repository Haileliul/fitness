//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation


import assets_audio_player
import assets_audio_player_web

import firebase_auth
import firebase_core
import path_provider_foundation
import shared_preferences_foundation

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {

  AssetsAudioPlayerPlugin.register(with: registry.registrar(forPlugin: "AssetsAudioPlayerPlugin"))
  AssetsAudioPlayerWebPlugin.register(with: registry.registrar(forPlugin: "AssetsAudioPlayerWebPlugin"))

  FLTFirebaseAuthPlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseAuthPlugin"))
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))
  PathProviderPlugin.register(with: registry.registrar(forPlugin: "PathProviderPlugin"))
  SharedPreferencesPlugin.register(with: registry.registrar(forPlugin: "SharedPreferencesPlugin"))
}
