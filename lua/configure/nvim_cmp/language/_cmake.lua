return {
    -- cmake={
    command = "cmake-language-server",
    filetypes = {"cmake", "txt"},
    rootPatterns = {"build/"},
    initializationOptions = {
        buildDirectory = "build"
    }
    -- }
}
