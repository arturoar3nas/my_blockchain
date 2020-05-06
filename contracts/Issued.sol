pragma solidity ^0.6.4;

contract Issued
{
     //Set of States
    enum StateType { Signed, Stored, IPFS, SmartAddress }

    //List of properties
    StateType public  State;
    address public  Signer;
    address public  Stocker;
    address public  Hasher;
    address public  SmarterAddress;

    string public SignedMessage;
    string public StoredMessage;
    string public HashMessage;
    string public SmartAddressMessage;

    event StateChanged(string stateData);

    // constructor function
    constructor(string memory message) public
    {
        SignedMessage = message;
        State = StateType.Signer;

        emit StateChanged('Signed');
    }

    // call this function to send a request
    function SignDocument(string memory message) public
    {
        // keep the state checking, message sender, and device checks separate
        // to not get cloberred by the order of evaluation for logical OR
        if ( State == StateType.Completed )
        {
            revert();
        }

        if ( State == StateType.OutOfCompliance )
        {
            revert();
        }

        Stocker = msg.sender;

        StoredMessage = SignedMessage;
        State = StateType.Stored;
    }

    function StoreDocument(string memory message) public
    {
                // keep the state checking, message sender, and device checks separate
        // to not get cloberred by the order of evaluation for logical OR
        if ( State == StateType.Completed )
        {
            revert();
        }

        if ( State == StateType.OutOfCompliance )
        {
            revert();
        }

        Stocker = msg.sender;

        StoredMessage = SignedMessage;
        State = StateType.Stored;
    }

    function HashDocument(string memory message) public
    {
                // keep the state checking, message sender, and device checks separate
        // to not get cloberred by the order of evaluation for logical OR
        if ( State == StateType.Completed )
        {
            revert();
        }

        if ( State == StateType.OutOfCompliance )
        {
            revert();
        }

        Stocker = msg.sender;

        StoredMessage = SignedMessage;
        State = StateType.Stored;
    }

    function AddressDocument(string memory message) public
    {
        // keep the state checking, message sender, and device checks separate
        // to not get cloberred by the order of evaluation for logical OR
        if ( State == StateType.Completed )
        {
            revert();
        }

        if ( State == StateType.OutOfCompliance )
        {
            revert();
        }

        Stocker = msg.sender;

        StoredMessage = SignedMessage;
        State = StateType.Stored;
    }

}