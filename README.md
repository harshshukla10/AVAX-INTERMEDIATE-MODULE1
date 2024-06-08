# Vehicle License Eligibility Checker 

An Ethereum blockchain-based age-based vehicle license eligibility checker is represented by the `VehicleLicenseEligibility` contract. Its main objective is to ascertain an individual's eligibility for a particular motor license according to age. The contract contains routines that use Solidity's error-handling techniques to handle erroneous input and verify eligibility for learning and permanent licenses.

Checking for Eligibility for a Learning License. The LearningLicense function determines the individual's eligibility for a license to learn. To be eligible, a person must be younger than 18 but at least 16 years old.
Eligibility for a Permanent License: The receipt person's eligibility for a permanent license is verified via the PermanentLicense function. To be eligible, a person must be at least eighteen years old.



## Description

Using Ethereum blockchain technology, the {VehicleLicenseEligibility} smart contract is made to assess and decide what kind of car license an individual is qualified for based on their age. The three main functions in the contract, `require()`, `assert()`, and `revert()`, implement Solidity's error-handling procedures. The `checkLearningLicense` function checks if a person meets the requirements for a learning license, which include being younger than 19 but at least 16 years old. A permanent license can only be granted to those who meet the age requirement of 19 years old, as determined by the `checkPermanentLicense` function. The all-inclusive {checkLicense} function determines if a person is eligible for any license or not based on their age and returns the relevant license type. `revert()` is a function used in this respond to age inputs that are invalid. The contract makes use of `assert()` statements for logic verification and internal consistency, and `require()` statements to impose age criteria. All things considered, the {VehicleLicenseEligibility} contract offers a reliable and safe way to establish eligibility for a vehicle license based on age, guaranteeing accurate validation and error management all along the way.



```
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

```

## Getting Started

### Installing

* You can find code.sol file in the repo. copy the code and paste into remix IDE. Update the current version of your compiler.
* Then just compile and our contract is ready to deploy. After deploy you can test our ChecklearnerLicense and CheckPermanentLicense  function.


### Executing program

* Find the solidity compiler icon section and compile the source file.
* Go to Deploy and run transactions section  and deploy the contract.


## Help

The provided code should function as intended, however in case you run into any frequent problems, below are some typical issues and solutions to try:

* Verify that you are using the correct version of the Solidity compiler (0.8.26). Using an alternate version could result in errors or compatibility problems.
*  Users might input an age that doesn't meet any license criteria.
## Authors

HARSH SHUKLA
hs.jpg1034@gmail.com



## License

This project is licensed under the [NAME HERE] License - see the LICENSE.md file for details
