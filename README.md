# `AVPlayer` Supported Media Types

This repository contains the files that Apple uses in their `MediaToolbox.framework` to determine the supported media types on a per-device level. The specific files in this repository extracted from the iOS 17.2 simulator runtime.

For convenience, I have converted the orignal `.plist` and `.strings` files to:

- `.json` files. These are located in the `json` directory.
- `.swift` files. These are located in the `swift` directory.

The original files are located in the `source` directory.

## Directory Structure

The directory structure of the `MediaToolbox.framework` is:

```bash
MediaToolbox.framework
├── [LANGUAGE].lproj # e.g. `en`
│   └── MediaAndSubtypes.strings
├── [DEVICE] # e.g. `D63p`
│   └── AVAssetExportPresets.plist
│   └── AVExportBitRate.plist
│   └── CameraRollValidator.plist
│   └── Checkpoint.plist
│   └── MediaValidator.plist
│   └── PassThroughTrimValidator.plist
│   └── SubServerConfiguration.plist
│   └── VideoComposition.plist
├── AutoJackIn.plist
├── AVAssetExportPresetsBase.plist
├── CheckpointBase.plist
├── CheckpointHEVC8kAdditions.plist
├── CheckpointHEVCAdditions.plist
├── CheckpointProResAdditions.plist
├── CloudTranscodeValidator.plist
├── DiagnosticPresets.plist
├── Info.plist
├── MediaToolbox # not included in this repository
├── PowerMitigationForStreaming.plist
```

## Why?

My goal was to playback media on iOS and tvOS devices from a [Jellyfin](https://jellyfin.org/) server using the `AVPlayer` from `AVFoundation`.

One of the aims of Jellyfin is to support as many media types as possible (ideally to be media type agnostic), while minimizing the amount of transcoding that needs to be done. This is a win-win for the server and the client.

However, in order to do this, the server needs to know what media types are supported by the client. Jellyfin uses this information to compare it with the output of `ffprobe` to determine if the media type is supported by the client.

The object that Jellyfin expects to receive from the client device is `MediaBrowser.Model.Dlna.DeviceProfile`. The [Jellyfin API Documentation](https://api.jellyfin.org/) states the following brief description of this object:

> *"A **MediaBrowser.Model.Dlna.DeviceProfile** represents a set of metadata which determines which content a certain device is able to play. Specifically, it defines the supported containers and codecs (video and/or audio, including codec profiles and levels) the device is able to direct play (without transcoding or remuxing), as well as which containers/codecs to transcode to in case it isn't."*

So in order to determine what media types are supported by a device, Jellyfin needs to know what media types are supported by the `AVPlayer` on that device.

To determine what `AVPlayer` (the player used in `AVKit`) is capable of playing, I needed to find a primary source of truth. The first obvious place to look was the [`AVFoundation.framework`](https://developer.apple.com/documentation/avfoundation) documentation. The heading "Determining Supported Media Types" lists a few methods that can be used to determine what media types are supported by the device.

These methods use the `MediaToolbox.framework` to determine what media types are supported by the device. The `MediaToolbox.framework` is a private framework that is not documented by Apple.

After some digging, it turns out that the `MediaToolbox.framework` contains static files which contain all the information needed to determine what media types are supported by the device.

## Source Files

The files in this repository are copied from the iOS 17.2 simulator runtime. The directory is on any MacOS machine that has Xcode installed and has built the an iOS  simulator runtime. The source directory path depends on the following parameters:

- `VOLUME_NAME`: The name of the volume that the simulator runtime is installed on. (e.g. iOS_21C62)
- `RUNTIME_NAME`: The name of the simulator runtime. (e.g. iOS 17.2.simruntime)

The volume can be found at the following path:

```bash
/Library/Developer/CoreSimulator/Volumes/${VOLUME_NAME}
```

The simulator runtime can be found within the volume at the following path:

```bash
/Library/Developer/CoreSimulator/Profiles/Runtimes/${RUNTIME_NAME}/Contents/Resources/RuntimeRoot/System/Library/Frameworks/MediaToolbox.framework
```
