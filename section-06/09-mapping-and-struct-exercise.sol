// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// EXERCISE
// 1. Create a uinque data type as a struct called Movie and give it two string properties: name and director.
// 2. Create a mapping called movies that takes a uint as a key and the struct Movie as a value.
// 3. Create a fuction called addMovie that takes three inputs, movieId (uint), name (string) and director (string) which assigns a value of an integer to a movie added to the movie mapping. It should include a title and director.
// 4. Deploy the contract and add a movie to the mapping.

contract MappingAndStruct {
    struct Movie {
        string title;
        string director;
    }

    mapping(uint => Movie) public movies;
    Movie movie1;

    function addMovie(
        uint _movieId,
        string memory _title,
        string memory _director
    ) public {
        movies[_movieId] = Movie(_title, _director);
    }
}
