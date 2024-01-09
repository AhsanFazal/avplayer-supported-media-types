/// Generated from AutoJackIn.plist
let AutoJackIn = [
    "AutoJackInOnCategoryChange": [
        "PhoneCall": [
            [
                "OnlyFirstTimeAfterConnection": true,
                "Route": "HeadsetBT",
            ],
        ],
        "Voicemail": [
            [
                "OnlyFirstTimeAfterConnection": true,
                "Route": "HeadsetBT",
            ],
        ],
    ],
    "AutoJackInOnConnection": [
        "HeadsetBT": [
            "PhoneCall",
            "Voicemail",
        ],
    ],
    "not yet implemented: AutoJackInOnConnectionToDeviceThatWasDisconnectedWhileBeingRoutedTo_SecondsAgo": [
        "HeadphonesBT": 300,
    ],
]
