{ pkgs, config, libs, ... }:
{
services.ollama = {
  enable = true;
  acceleration = "rocm";
  # “ollama serve” to check CPU/GPU
  # https://ollama.ai/library - Use       “ollama run [MODEL]* for models
  # http://localhost:11434/ web api

  # Optional: preload models, see https://ollama.com/library
  loadModels = [ "llama3.2:3b" "deepseek-r1:1.5b"];
};
services.open-webui.enable = true;

}
