// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// STRUCTS
// Structs are used to create custom data types that can be used to store data in a contract and they are declared outside of a function
// Structs are similar to classes in object-oriented languages and can be used to create more complex data types that have multiple properties and methods associated with them.
// Structs can be declared as public, internal or private and can be used to create arrays.

contract LearnStructs {
    // Movie Struct
    struct Movie {
        string title;
        string director;
        uint256 movieId;
    }
    Movie movie1;
    // Movie movie2;
    // Movie movie3;

    // create a dynamic array of structs to store a list of movies.
    Movie[] moviesList;

    // Function to set a movie
    function setMovies() public {
        movie1 = Movie("The Dark Knight", "Christopher Nolan", 1);

        // movie2 = Movie("Inception", "Christopher Nolan", 2);

        // movie3 = Movie("Interstellar", "Christopher Nolan", 3);

        // // Add movies to the array
        // moviesList.push(movie1);
        // moviesList.push(movie2);
        // moviesList.push(movie3);
    }

    // // Get movie
    function getMovieId() public view returns (uint) {
        return movie1.movieId;
    }

    // // Get all movies
    // function getMovies() public view returns (Movie[] memory) {
    //     return moviesList;
    // }

    // // Get movie by id
    // function getMovieById(uint256 id) public view returns (Movie memory) {
    //     return moviesList[id];
    // }

    // // Get movie by title
    // function getMovieByTitle(
    //     string memory title
    // ) public view returns (Movie memory) {
    //     for (uint256 i = 0; i < moviesList.length; i++) {
    //         if (
    //             keccak256(bytes(moviesList[i].title)) == keccak256(bytes(title))
    //         ) {
    //             return moviesList[i];
    //         }
    //     }
    // }
}
