import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  const factory AppException.fileNotFound(String path) = FileNotFoundException;
  const factory AppException.fileReadError(String path) = FileReadErrorException;
  const factory AppException.fileWriteError(String path) = FileWriteErrorException;
  const factory AppException.invalidJson(String path) = InvalidJsonException;
  const factory AppException.episodeNotFound(String episodeId) = EpisodeNotFoundException;
  const factory AppException.locationNotFound(String locationId) = LocationNotFoundException;
  const factory AppException.characterNotFound(int characterId) = CharacterNotFoundException;
  const factory AppException.clueNotFound(int clueId) = ClueNotFoundException;
  const factory AppException.enigmaNotFound(int enigmaId) = EnigmaNotFoundException;
  const factory AppException.invalidQrCode(String code) = InvalidQrCodeException;
  const factory AppException.permissionDenied(String permission) = PermissionDeniedException;
  const factory AppException.networkError(String message) = NetworkErrorException;
  const factory AppException.unknown(String message) = UnknownException;
}

extension AppExceptionMessage on AppException {
  String get message {
    return when(
      fileNotFound: (path) => 'File not found: $path',
      fileReadError: (path) => 'Failed to read file: $path',
      fileWriteError: (path) => 'Failed to write file: $path',
      invalidJson: (path) => 'Invalid JSON format in: $path',
      episodeNotFound: (id) => 'Episode not found: $id',
      locationNotFound: (id) => 'Location not found: $id',
      characterNotFound: (id) => 'Character not found: $id',
      clueNotFound: (id) => 'Clue not found: $id',
      enigmaNotFound: (id) => 'Enigma not found: $id',
      invalidQrCode: (code) => 'Invalid QR code: $code',
      permissionDenied: (permission) => 'Permission denied: $permission',
      networkError: (message) => 'Network error: $message',
      unknown: (message) => 'Unknown error: $message',
    );
  }
}