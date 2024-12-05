// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Introduction {
    string public name = "@0xdave1";
    string[] public interests = ["web3 development", "blockchain technology", "decentralized applications (dApps)"];
    string[] public learning = ["Solidity", "Ethereum", "advanced JavaScript techniques"];
    string[] public lookingToCollaborateOn = ["innovative blockchain projects", "dApps"];
    string public contactEmail = "josephtaiwodavid@gmail.com";
    string public linkedinProfile = "http://www.linkedin.com/in/david-joseph-a29702221";
    string public twitterHandle = "https://x.com/web3fluxx";
    string public pronouns = "He/Him";
    string public funFact = "I love combining my passion for technology with my interest in solving real-world problems through code!";

    function getIntroduction() public view returns (string memory) {
        return string(abi.encodePacked(
            "👋 Hi, I’m ", name, "\n",
            "👀 I’m interested in ", concatenateArray(interests), ".\n",
            "🌱 I’m currently learning ", concatenateArray(learning), ".\n",
            "💞️ I’m looking to collaborate on ", concatenateArray(lookingToCollaborateOn), ".\n",
            "📫 How to reach me: Email - ", contactEmail, ", LinkedIn - ", linkedinProfile, ", Twitter - ", twitterHandle, "\n",
            "😄 Pronouns: ", pronouns, "\n",
            "⚡ Fun fact: ", funFact
        ));
    }

    function concatenateArray(string[] memory array) internal pure returns (string memory) {
        string memory result = "";
        for (uint i = 0; i < array.length; i++) {
            result = string(abi.encodePacked(result, array[i], i < array.length - 1 ? ", " : ""));
        }
        return result;
    }
}
