return {
  cmake={
    "command":"cmake-language-server",
    "filetypes": ["cmake"],
    "rootPatterns": [
        "build/"
      ],
      "initializationOptions": {
        "buildDirectory": "build"
      }
  }
}