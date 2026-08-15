Starseeker = {
    runtime = {
        profile = "dev",

        game = "auto",
        game_version = "auto",
        console_enabled = true,
        exception_first_chance_log = true,

        unsafe_exception_recovery = true,
        min_log_level = "info",
        scripting_enabled = true,
        allow_unsafe_scripts = true,
        mods_path = "scripts",
        log_path = "starseeker.log",

        log_sound_diag = false,
        log_imgui = false,
        log_axafile = true,
        log_axa_debug = false,
        log_bindings = true,
        log_scripting = true,
        log_collision_debug = false,
        log_buffers = true,
        log_buffer_hooks = true,
    },

    native_modules = {
        enabled = {
            "runtime_settings",
            "command_compat",
            "imgui_overlay",
            "headless_event_player",
        },
        disabled = {},
    },

    khcom = {
        hostdev_path = "hostdev/khcom",
    },

    kingdom1 = {
        hostdev_path = "hostdev/kingdom1",
    },

    steam = {
        hostdev_path = "hostdev/STEAM",
    },

    kingdom2 = {
        bind_all_known_functions = true,
        title_skip = true,
        headless_test_trigger_enabled = false,
        axa_dev_path = "hostdev",
        hostdev_path = "C:/Users/neal1/OneDrive/KH2 Modding/nmc/kh2",
    },

    ipc = {
        enabled = false,
        command_region_name = [[Global\PAXDataSharedMemory]],
        cache_region_name = [[Global\CacheBufferSharedMemory]],
        command_region_size = 655360,
        cache_region_size = 26214400,
    },
}

Settings = {
    MenuHotkey = false,
    Hotkeys = {
        GamePause = "F7",
        RoomObjPause = false,
        ResetFieldInit = "F5",
        ResetClearBuffers = "F4",
        ResetToTitle = "F3",
        ToggleMuteBGM = "F2",
        StopPlayedSEs = false,
        RecoverHpMp = "F6",
    },

    ExternalOverlayWindow = true,

    kingdom2 = {
        AutoLoadSaveSlot = nil,

        AutoLoadDelaySeconds = 5.0,

        AutoLoadBypassMenu = false,

        ExtractedGamePath = [[C:\Users\neal1\OneDrive\KH2 Modding\openkh2\openkh\data\kh2]],
		
        PreferHostdevReplacements = true,
        AutoDisableBGM = false,

        LargeOmdBuffers = {
            Enabled = false,
            PacketBufferSize = 0x200000,
            EffectWorkMemorySize = 0x200000,
            EffectPacketMemorySize = 0x200000,
        },

        MenuAllocators = {
            Enabled = false,
            MenuAllocatorSize = 0x400000,
            MenuObjectAllocatorSize = 0x8000000,
        },

        CacheBuffer = {
            Enabled = false,
            SizeKiB = 524288,

            Blocks = {
                -- MagicKiB = 0,
                PlayerKiB = 32768,
                -- FriendKiB = 0,
                -- DriveKiB = 0,
                -- MenuKiB = 0,
            },
        },
        DataBuffer = {
            Enabled = false,
            SizeKiB = 131072,
        },

        RuntimeFixes = {
            -- ScdPriority = 1,
        },
    },
}
