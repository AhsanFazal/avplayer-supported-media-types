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
        "ap4x",
        "ap4h",
        "apcn",
        "apch",
        "apcs",
        "apco",
    ],
    "VideoCodecProfiles": [
        "avc1": [
            "MaxLevel": 52,
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
            "MaxLevel": 153,
            "MaxTier": 1,
            "PerProfileConstraints": [
                "1": [
                    "MaxAverageMegabits": 160,
                ],
                "2": [
                    "MaxAverageMegabits": 160,
                ],
                "4": [
                    "MaxAverageMegabits": 160,
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
    "VideoMaxHeight": 8192,
    "VideoMaxPixelsPerFrame": 35_389_440,
    "VideoMaxWidth": 8192,
    "VideoNoInterlacing": true,
    "VideoTrackPresent": true,
]
