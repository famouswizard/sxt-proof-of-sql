// SPDX-License-Identifier: UNLICENSED
// This is licensed under the Cryptographic Open Software License 1.0
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";

import {Errors} from "../../src/base/Constants.sol";
/* solhint-disable no-unused-import */
import {
    INVALID_EC_ADD_INPUTS,
    INVALID_EC_MUL_INPUTS,
    INVALID_EC_PAIRING_INPUTS,
    ROUND_EVALUATION_MISMATCH
} from "../../src/base/Constants.sol";
/* solhint-enable no-unused-import */

contract ConstantsTest is Test {
    function testErrorFailedInvalidECAddInputs() public {
        vm.expectPartialRevert(Errors.InvalidECAddInputs.selector);
        assembly {
            mstore(0, INVALID_EC_ADD_INPUTS)
            revert(0, 4)
        }
    }

    function testErrorFailedInvalidECMulInputs() public {
        vm.expectPartialRevert(Errors.InvalidECMulInputs.selector);
        assembly {
            mstore(0, INVALID_EC_MUL_INPUTS)
            revert(0, 4)
        }
    }

    function testErrorFailedInvalidECPairingInputs() public {
        vm.expectPartialRevert(Errors.InvalidECPairingInputs.selector);
        assembly {
            mstore(0, INVALID_EC_PAIRING_INPUTS)
            revert(0, 4)
        }
    }

    function testErrorFailedRoundEvaluationMismatch() public {
        vm.expectPartialRevert(Errors.RoundEvaluationMismatch.selector);
        assembly {
            mstore(0, ROUND_EVALUATION_MISMATCH)
            revert(0, 4)
        }
    }
}
