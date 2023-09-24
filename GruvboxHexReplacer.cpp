#include <iostream>
#include <fstream>
#include <string>
#include <regex>
#include <map>

// Function to replace hex codes in a string
std::string ReplaceHexCodes(const std::string &input) {
    std::string output = input;

    // Define the replacements for Gruvbox Dark color scheme
    std::map<std::string, std::string> colorReplacements = {
        {"#1d2021", "#211d13"}, // DarkHard
        {"#282828", "#272316"}, // Dark1 / BG
        {"#3c3836", "#3A3124"}, // Dark2
        {"#504945", "#4D3F32"}, // Dark3 
        {"#665c54", "#5F4E41"}, // Dark4
        {"#7c6f64", "#725C4F"}, // Dark5
        {"#928374", "#856a5d"}, // Dark6 / DarkGrey

        {"#a89984", "#9F8875"}, // Light5 / LightGrey
        {"#bdae93", "#B8A58C"}, // Light4
        {"#d5c4a1", "#D2C3A4"}, // Light3
        {"#ebdbb2", "#ebe0bb"}, // Light2 / FG
        {"#fbf1c7", "#F1E9D0"}, // Light1

        {"#d65d0e", "#F87C2A"}, // DarkOrange
        {"#fe8019", "#F9883D"}, // Orange

        {"#d79921", "#ec9f0d"}, // DarkYellow
        {"#fabd2f", "#fbb323"}, // Yellow

        {"#458588", "#48b8d0"}, // DarkBlue
        {"#83a598", "#7dccde"}, // Blue

        {"#98971a", "#c1c544"}, // DarkGreen
        {"#b8bb26", "#acbb4f"}, // Green

        {"#b16286", "#f76f8e"}, // DarkMagenta
        {"#d3869b", "#bc4e78"}, // Magenta

        {"#cc241d", "#b33951"}, // DarkRed
        {"#fb4934", "#cc005c"}, // Red

        {"#689d6a", "#65f69c"}, // DarkCyan
        {"#8ec07c", "#8bf8b5"}, // Cyan
    };

    // Iterate through the map and replace hex codes
    for (const auto &entry : colorReplacements) {
        std::regex pattern(entry.first);
        output = std::regex_replace(output, pattern, entry.second);
    }

    return output;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        std::cerr << "Usage: " << argv[0] << " input_file output_file" << std::endl;
        return 1;
    }

    std::string input_filename = argv[1];
    std::string output_filename = argv[2];

    std::ifstream input_file(input_filename);

    if (!input_file) {
        std::cerr << "Error: Unable to open input file: " << input_filename << std::endl;
        return 1;
    }

    std::ofstream output_file(output_filename);

    if (!output_file) {
        std::cerr << "Error: Unable to open output file: " << output_filename << std::endl;
        return 1;
    }

    std::string line;
    while (std::getline(input_file, line)) {
        std::string replaced_line = ReplaceHexCodes(line);
        output_file << replaced_line << '\n';
    }

    input_file.close();
    output_file.close();

    std::cout << "Hexcode replacement completed." << std::endl;

    return 0;
}

