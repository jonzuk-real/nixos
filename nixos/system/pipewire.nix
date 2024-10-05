{ pkgs, config, libs, ... }:
{
  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    jack.enable = true;
  };

#Pipewire Low Latency
services.pipewire.extraConfig.pipewire."92-high-quality" = {
  context.properties = {
    default.clock.rate = 192000;
    default.clock.quantum = 1024;
    default.clock.min-quantum = 1024;
    default.clock.max-quantum = 8192;
  };
};

#PulseAudio Low Latency
services.pipewire.extraConfig.pipewire-pulse."92-high-quality" = {
  context.modules = [
    {
      name = "libpipewire-module-protocol-pulse";
      args = {
        pulse.min.req = "256/44100";
        pulse.default.req = "256/48000";
        pulse.max.req = "1024/192000";
        pulse.min.quantum = "256/44100";
        pulse.max.quantum = "1024/192000";
      };
    }
  ];
  stream.properties = {
    node.latency = "256/48000";
    resample.quality = 14;
  };
};

#ALSA Low Latency
services.pipewire.wireplumber.configPackages = [
  (pkgs.writeTextDir "share/wireplumber/main.lua.d/99-alsa-highquality.lua" ''
    alsa_monitor.rules = {
      {
        matches = {{{ "node.name", "matches", "alsa_output.*" }}};
        apply_properties = {
          ["audio.format"] = "S24LE",
          ["audio.rate"] = "192000", -- for USB soundcards it should be twice your desired rate
          ["api.alsa.period-size"] = 1024, -- defaults to 1024, tweak by trial-and-error
          -- ["api.alsa.disable-batch"] = true, -- generally, USB soundcards use the batch mode
          ["api.alsa.headroom"] = 1024,
        },
      },
    }
  '')
];

}
