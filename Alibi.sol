// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DecentralizedAlibi {
    struct Alibi {
        address user;
        bytes32 hashedLocation;
        uint256 timestamp;
        bool verified;
    }

    struct WitnessVerification {
        address witness;
        bool approved;
    }

    mapping(address => Alibi) public alibis;
    mapping(address => WitnessVerification[]) public verifications;

    event AlibiSubmitted(
        address indexed user,
        bytes32 hashedLocation,
        uint256 timestamp
    );
    event AlibiVerified(address indexed user, address indexed witness);

    function submitAlibi(bytes32 _hashedLocation) external {
        require(alibis[msg.sender].timestamp == 0, "Alibi already submitted.");

        alibis[msg.sender] = Alibi({
            user: msg.sender,
            hashedLocation: _hashedLocation,
            timestamp: block.timestamp,
            verified: false
        });

        emit AlibiSubmitted(msg.sender, _hashedLocation, block.timestamp);
    }

    function verifyAlibi(address _user) external {
        require(alibis[_user].timestamp != 0, "No alibi found for user.");
        require(msg.sender != _user, "You cannot verify your own alibi.");

        verifications[_user].push(
            WitnessVerification({witness: msg.sender, approved: true})
        );

        // If at least 2 witnesses verify, mark alibi as verified
        if (verifications[_user].length >= 2) {
            alibis[_user].verified = true;
        }

        emit AlibiVerified(_user, msg.sender);
    }

    function getAlibi(
        address _user
    ) external view returns (bytes32, uint256, bool) {
        Alibi memory alibi = alibis[_user];
        return (alibi.hashedLocation, alibi.timestamp, alibi.verified);
    }
}
