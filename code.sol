// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract vehicleLicenseEligibility {

    // this function will check  if eligible for learning license or not 
    function checkLearningLicense(uint age) public pure {
        require(age >= 16, "age should be atleast 16 for a learning license");
        require(age < 18, "age must be less than 19 for a learning license");
        assert(age >= 16 && age < 18);
    }

    // this will check if eligible for permanent license or not 
    function checkPermanentLicense(uint age) public pure {
        require(age >= 18, "Age must be at least 19 for a permanent license");
        assert(age >= 18);   
    }

    // Function to check license eligibility and revert if not eligible
    function checkLicense(uint age) public pure returns (string memory) {
        if (age >= 18) {
            return "Eligible for permanent license";
        } else if (age >= 16) {
            return "Eligible for learning license";
        } else {
            revert("Not eligible for any license");
        }
    }
}
