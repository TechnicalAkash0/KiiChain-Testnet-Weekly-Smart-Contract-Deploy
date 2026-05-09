// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Week5Contract {

    address public owner;
    uint public totalNotes;

    struct Note {
        string title;
        string description;
        address creator;
        uint createdAt;
    }

    Note[] public notes;

    event NoteAdded(
        string title,
        address indexed creator,
        uint createdAt
    );

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function addNote(
        string memory _title,
        string memory _description
    ) public {

        notes.push(
            Note(
                _title,
                _description,
                msg.sender,
                block.timestamp
            )
        );

        totalNotes++;

        emit NoteAdded(
            _title,
            msg.sender,
            block.timestamp
        );
    }

    function getNote(uint index)
        public
        view
        returns (
            string memory,
            string memory,
            address,
            uint
        )
    {
        Note memory n = notes[index];

        return (
            n.title,
            n.description,
            n.creator,
            n.createdAt
        );
    }

    function getTotalNotes() public view returns (uint) {
        return notes.length;
    }

    function deleteLastNote() public onlyOwner {

        require(notes.length > 0, "No notes");

        notes.pop();

        totalNotes--;
    }
}
