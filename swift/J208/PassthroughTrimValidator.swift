/// Generated from PassthroughTrimValidator.plist
let PassthroughTrimValidator: [String: Any] = [
    "AllowMultipleEdits": false,
    "AudioMaxSampleRate": 192_000,
    "soun": [
        "lpcm",
        "ima4",
        "aac ",
        "paac",
        "aaac",
        "usac",
        "alac",
        ".mp3",
        "samr",
        "ulaw",
        "alaw",
        "ac-3",
    ],
    "text": [
        "wvtt",
    ],
    "TrackTypes": [
        "vide",
        "soun",
        "clcp",
        "sbtl",
        "text",
        "scen",
    ],
    "ValidationType": "RequireOneRecognized",
    "vide": [
        "hvc1",
        "avc1",
        "mp4v",
        "SVQ3",
        "ipb ",
        "h263",
        "dmb1",
        "jpeg",
        "drmi",
    ],
    "VideoCodecProfiles": [
        "avc1": [
            "MaxLevel": 51,
            "PerProfileConstraints": [
                "66": [
                    "MaxAverageMegabits": 240,
                ],
                "77": [
                    "MaxAverageMegabits": 240,
                ],
                "100": [
                    "MaxAverageMegabits": 240,
                ],
            ],
            "SupportedProfiles": [
                66,
                77,
                100,
            ],
        ],
        "h263": [
            "MaxLevel": 45,
            "MaxProfile": 0,
        ],
        "hvc1": [
            "MaxLevel": 150,
            "MaxTier": 1,
            "PerProfileConstraints": [
                "1": [
                    "MaxAverageMegabits": 100,
                ],
                "2": [
                    "MaxAverageMegabits": 100,
                ],
                "4": [
                    "MaxAverageMegabits": 100,
                ],
            ],
            "SupportedProfiles": [
                1,
                2,
                4,
            ],
        ],
        "mp4v": [
            "MaxLevel": 5,
            "MaxProfile": 1,
        ],
        "SVQ3": [
            "VideoMaxPixelsPerFrame": 76800,
        ],
    ],
    "VideoMaxHeight": 4096,
    "VideoMaxPixelsPerFrame": 8_847_360,
    "VideoMaxWidth": 4096,
    "VideoNoInterlacing": true,
    "VideoTrackPresent": true,
]
