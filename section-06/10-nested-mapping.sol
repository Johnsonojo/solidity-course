// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// Nested Mapping (Mapping of Mappings or mapping within a mapping)
// Nested mappings are used to create key-value pairs and are declared outside of a function.
// Nested mappings are similar to hash tables or dictionaries in other programming languages.
// Nested mappings can be declared as public, internal or private and can be used to create arrays.
// What is a nested mapping?
// A nested mapping is a mapping that has another mapping as a value.
// Whar if you wanted to store a list of movies that belongs to a certain director, thing or address?
// Another use case for nested mappings is allow one address to spend tokens on behalf of another address just like ERC20 tokens.
// ex. mapping(key => mapping(key2 => value2)) allowances;
// mapping(address => mapping(address => uint)) public allowances;

contract LearnNestedMapping {
    struct Movie {
        string title;
        string director;
    }

    mapping(uint => Movie) movie;
    mapping(address => mapping(uint => Movie)) public myMovies;

    function addMovie(
        uint _movieId,
        string memory _title,
        string memory _director
    ) public {
        movie[_movieId] = Movie(_title, _director);
    }

    function addMyMovie(
        uint _movieId,
        string memory _title,
        string memory _director
    ) public {
        myMovies[msg.sender][_movieId] = Movie(_title, _director); // msg.sender is the address of the person calling the function (the owner of the movie)
    }

    function getMyMovie(uint _movieId) public view returns (string memory) {
        return myMovies[msg.sender][_movieId].title;
    }
}
