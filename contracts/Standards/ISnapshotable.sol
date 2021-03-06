pragma solidity 0.4.25;


/// @title advances snapshot id on demand
/// @dev see Snapshot folder for implementation examples ie. DailyAndSnapshotable contract
contract ISnapshotable {

    ////////////////////////
    // Events
    ////////////////////////

    /// @dev should log each new snapshot id created, including snapshots created automatically via MSnapshotPolicy
    event LogSnapshotCreated(uint256 snapshotId);

    ////////////////////////
    // Public functions
    ////////////////////////

    /// always creates new snapshot id which gets returned
    /// however, there is no guarantee that any snapshot will be created with this id, this depends on the implementation of MSnaphotPolicy
    function createSnapshot()
        public
        returns (uint256);

    /// upper bound of series snapshotIds for which there's a value
    function currentSnapshotId()
        public
        constant
        returns (uint256);
}
