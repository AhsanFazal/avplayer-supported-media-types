/// Generated from CloudTranscodeValidator.plist
let CloudTranscodeValidator: [String: Any] = [
    "AllowedFormatReaders": [
        "com.apple.coremedia.formatreader.quicktime-iso",
    ],
    "AllowNonSelfContained": true,
    "AudioCodecs": [
        "aac ",
    ],
    "text": [
        "wvtt",
        "svtt",
    ],
    "TimecodeMustBeInvisible": true,
    "TrackTypes": [
        "vide",
        "soun",
        "clcp",
        "sbtl",
        "text",
        "meta",
    ],
    "ValidationType": "IgnoreUnrecognized",
    "VideoCodecProfiles": [
        "avc1": [
            "MaxLevel": 99,
            "SupportedProfiles": [
                66,
                77,
                100,
            ],
        ],
        "hvc1": [
            "MaxLevel": 153,
            "MaxTier": 1,
            "PerProfileConstraints": [
                "1": [
                    "MaxAverageMegabits": 160,
                ],
                "2": [
                    "MaxAverageMegabits": 160,
                ],
            ],
            "SupportedProfiles": [
                1,
                2,
            ],
        ],
    ],
    "VideoCodecs": [
        "avc1",
        "hvc1",
    ],
    "VideoNoFrameReordering": false,
    "VideoNoInterlacing": false,
]
