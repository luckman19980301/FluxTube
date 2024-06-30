import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:fluxtube/domain/core/failure/main_failure.dart';
import 'package:fluxtube/domain/saved/models/local_store.dart';
import 'package:fluxtube/domain/settings/models/settings_db.dart';
import 'package:fluxtube/domain/settings/settings_service.dart';
import 'package:fluxtube/domain/subscribes/models/subscribe.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../core/settings.dart';

@LazySingleton(as: SettingsService)
class SettingImpliment implements SettingsService {
  static late Isar isar;

  // Initialize the database
  static Future<void> initializeDB() async {
    final dir = await getApplicationCacheDirectory();
    isar = await Isar.open(
        [SettingsDBValueSchema, LocalStoreVideoInfoSchema, SubscribeSchema],
        directory: dir.path);
  }

  // Common setting fetch code
  Future<Map<String, String>> _getOrDefault(
      String settingName, String defaultValue) async {
    final setting = await isar.settingsDBValues
        .filter()
        .nameEqualTo(settingName)
        .findFirst();

    if (setting == null) {
      final newSetting = SettingsDBValue()
        ..name = settingName
        ..value = defaultValue;
      await isar.writeTxn(() async {
        await isar.settingsDBValues.put(newSetting);
      });
      return {settingName: defaultValue};
    } else {
      return {settingName: setting.value ?? defaultValue};
    }
  }

  // Initialize settings state during app startup
  @override
  Future<List<Map<String, String>>> initializeSettings() async {
    // Define your settings and their default values
    final settingsDefaults = [
      {"name": selectedDefaultLanguage, "default": "en"},
      {"name": selectedDefaultQuality, "default": "720p"},
      {"name": selectedDefaultRegion, "default": "IN"},
      {"name": selectedTheme, "default": "dark"},
      {"name": historyVisibility, "default": "true"},
      {"name": dislikeVisibility, "default": "false"},
      {"name": hlsPlayer, "default": "false"},
      // Add more settings here
    ];

    // Initialize settings list
    List<Map<String, String>> settingsList = [];

    // Iterate over settingsDefaults and initialize each setting
    for (var setting in settingsDefaults) {
      settingsList
          .add(await _getOrDefault(setting["name"]!, setting["default"]!));
    }

    return settingsList;
  }

// DEFAULT LANGUAGE SET
  @override
  Future<Either<MainFailure, String>> selectDefaultLanguage(
      {required String language}) async {
    try {
      // Begin a write transaction
      await isar.writeTxn(() async {
        // Check if selectedDefaultLanguage exists in the database
        final existingLanguageSetting = await isar.settingsDBValues
            .filter()
            .nameEqualTo(selectedDefaultLanguage)
            .findFirst();

        if (existingLanguageSetting == null) {
          // If it doesn't exist, create a new entry with the default value "en"
          final newLanguageSetting = SettingsDBValue()
            ..name = selectedDefaultLanguage
            ..value = language;
          await isar.settingsDBValues.put(newLanguageSetting);
        } else {
          // If it exists, update it with the provided language
          existingLanguageSetting.value = language;
          await isar.settingsDBValues.put(existingLanguageSetting);
        }
      });

      // Return the selected language
      return Right(language);
    } catch (e) {
      // Handle errors and return a failure
      return const Left(MainFailure.serverFailure());
    }
  }

  // DEFAULT QUALITY SET

  @override
  Future<Either<MainFailure, String>> selectDefaultQuality(
      {required String quality}) async {
    try {
      // Begin a write transaction
      await isar.writeTxn(() async {
        // Check if selectedDefaultQuality exists in the database
        final existingQualitySetting = await isar.settingsDBValues
            .filter()
            .nameEqualTo(selectedDefaultQuality)
            .findFirst();

        if (existingQualitySetting == null) {
          // If it doesn't exist, create a new entry with the default value "360p"
          final newQualitySetting = SettingsDBValue()
            ..name = selectedDefaultQuality
            ..value = quality;
          await isar.settingsDBValues.put(newQualitySetting);
        } else {
          // If it exists, update it with the provided quality
          existingQualitySetting.value = quality;
          await isar.settingsDBValues.put(existingQualitySetting);
        }
      });

      // Return the selected quality
      return Right(quality);
    } catch (e) {
      // Handle errors and return a failure
      return const Left(MainFailure.serverFailure());
    }
  }

  // CONTENT REGION SET

  @override
  Future<Either<MainFailure, String>> selectRegion(
      {required String region}) async {
    try {
      // Begin a write transaction
      await isar.writeTxn(() async {
        // Check if selectedDefaultQuality exists in the database
        final existingRegionSetting = await isar.settingsDBValues
            .filter()
            .nameEqualTo(selectedDefaultRegion)
            .findFirst();

        if (existingRegionSetting == null) {
          // If it doesn't exist, create a new entry with the default value "360p"
          final newRegionSetting = SettingsDBValue()
            ..name = selectedDefaultRegion
            ..value = region;
          await isar.settingsDBValues.put(newRegionSetting);
        } else {
          // If it exists, update it with the provided quality
          existingRegionSetting.value = region;
          await isar.settingsDBValues.put(existingRegionSetting);
        }
      });

      // Return the selected quality
      return Right(region);
    } catch (e) {
      // Handle errors and return a failure
      return const Left(MainFailure.serverFailure());
    }
  }

  // THEME TOGGLE

  @override
  Future<Either<MainFailure, bool>> toggleTheme({required String theme}) async {
    try {
      // Begin a write transaction
      await isar.writeTxn(() async {
        // Check if selectedDefaultQuality exists in the database
        final existingThemeSetting = await isar.settingsDBValues
            .filter()
            .nameEqualTo(selectedTheme)
            .findFirst();

        if (existingThemeSetting == null) {
          // If it doesn't exist, create a new entry with the default value "light"
          final newThemeSetting = SettingsDBValue()
            ..name = selectedTheme
            ..value = theme;
          await isar.settingsDBValues.put(newThemeSetting);
        } else {
          // If it exists, update it with the provided theme
          existingThemeSetting.value = theme;
          await isar.settingsDBValues.put(existingThemeSetting);
        }
      });

      // Return the selected theme
      return Right(theme == "dark");
    } catch (e) {
      // Handle errors and return a failure
      return const Left(MainFailure.serverFailure());
    }
  }

  // HISTORY VISIBILITY TOGGLE SETTING
  @override
  Future<Either<MainFailure, bool>> toggleHistoryVisibility(
      {required bool isHistoryVisible}) async {
    try {
      // Begin a write transaction
      await isar.writeTxn(() async {
        // Check if historyVisibility exists in the database
        final existingHistoryVisibilitySetting = await isar.settingsDBValues
            .filter()
            .nameEqualTo(historyVisibility)
            .findFirst();

        if (existingHistoryVisibilitySetting == null) {
          // If it doesn't exist, create a new entry with the default value "false"
          final newHistoryVisibilitySetting = SettingsDBValue()
            ..name = historyVisibility
            ..value = isHistoryVisible.toString();
          await isar.settingsDBValues.put(newHistoryVisibilitySetting);
        } else {
          // If it exists, update it with the provided settings
          existingHistoryVisibilitySetting.value = isHistoryVisible.toString();
          await isar.settingsDBValues.put(existingHistoryVisibilitySetting);
        }
      });

      // Return the selected settings
      return Right(isHistoryVisible);
    } catch (e) {
      // Handle errors and return a failure
      return const Left(MainFailure.serverFailure());
    }
  }

  // DISLIKE VISIBILITY TOGGLE SETTING
  @override
  Future<Either<MainFailure, bool>> toggleDislikeVisibility(
      {required bool isDislikeVisible}) async {
    try {
      // Begin a write transaction
      await isar.writeTxn(() async {
        // Check if dislikeVisibility exists in the database
        final existingDislikeVisibilitySetting = await isar.settingsDBValues
            .filter()
            .nameEqualTo(dislikeVisibility)
            .findFirst();

        if (existingDislikeVisibilitySetting == null) {
          // If it doesn't exist, create a new entry with the default value "false"
          final newDislikeVisibilitySetting = SettingsDBValue()
            ..name = dislikeVisibility
            ..value = isDislikeVisible.toString();
          await isar.settingsDBValues.put(newDislikeVisibilitySetting);
        } else {
          // If it exists, update it with the provided settings
          existingDislikeVisibilitySetting.value = isDislikeVisible.toString();
          await isar.settingsDBValues.put(existingDislikeVisibilitySetting);
        }
      });

      // Return the selected settings
      return Right(isDislikeVisible);
    } catch (e) {
      // Handle errors and return a failure
      return const Left(MainFailure.serverFailure());
    }
  }

  // HLS PLAYER TOGGLE SETTING
  @override
  Future<Either<MainFailure, bool>> toggleHlsPlayer(
      {required bool isHlsPlayer}) async {
    try {
      // Begin a write transaction
      await isar.writeTxn(() async {
        // Check if tlsPlayer exists in the database
        final existingHlsPlayerSetting = await isar.settingsDBValues
            .filter()
            .nameEqualTo(hlsPlayer)
            .findFirst();

        if (existingHlsPlayerSetting == null) {
          // If it doesn't exist, create a new entry with the default value "false"
          final newHlsPlayerSetting = SettingsDBValue()
            ..name = hlsPlayer
            ..value = isHlsPlayer.toString();
          await isar.settingsDBValues.put(newHlsPlayerSetting);
        } else {
          // If it exists, update it with the provided settings
          existingHlsPlayerSetting.value = isHlsPlayer.toString();
          await isar.settingsDBValues.put(existingHlsPlayerSetting);
        }
      });

      // Return the selected settings
      return Right(isHlsPlayer);
    } catch (e) {
      // Handle errors and return a failure
      return const Left(MainFailure.serverFailure());
    }
  }
}