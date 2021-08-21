<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Built With](#built-with)
- [Usage](#usage)
- [Contributors](#contributors)
- [Acknowledgements](#acknowledgements)
- [License](#license)

<!-- ABOUT THE PROJECT -->

## About The Project

This is the Microverse API part of the Final project. 
The API provides the backend for the two part project.
It was built with Rails.

## Live API Base URL

[Heroku Demo](https://final-capstone-johnherncode.herokuapp.com/) v 1.0

### Built With

Technologies used.

- Rails

### Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Postman (for testing externally)
- Ruby 3.0.0
- Rails 6.1.4
- A terminal

### Clone

- [download zip link](https://github.com/JohnHernCode/capstone-api/archive/refs/heads/develop.zip) 
  or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:JohnHernCode/Final-Capstone-Rails-API.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/JohnHernCode/capstone-api.git
  ```

### Usage
1. cd the location you cloned/unzipped the file to.
2. Run ```bundle``` to bundle install all gems.
3. Run ```rails db:migrate``` to create and migrate your database.
4. Run ```rails db:seed``` to add database seed.

### How to use the api
Open Postman

Before anything, go to the Body tab and insert
- key: name value: admin
- key: password value: admin 

Then go to 
- ```http://127.0.0.1:3000/login```
- Be sure that your parameter is POST and click Send

Once complete you will be able to copy your token.
- Click on the Authorization tab and select Bearer token.
- Be sure to paste your token if it is not already there.

Auto login happens after you have the auth token copied. Go to 
- ```http://127.0.0.1:3000/auto_login```
- Be sure that your parameter is POST and click Send
- It should auto log you in.

Retrieve all subjects
- Using GET as a parameter, go to
- ```http://127.0.0.1:3000/subjects```
- This will return all subjects.

Retrieve individual subjects 
- Using GET as a parameter, go to
- ```http://127.0.0.1:3000/subjects/1```
- Note the number, if you change it, you will see a different subject.
- This will return subjects only belonging to the user


### How to run tests
In the console, run ```rspec```. The tests will start.

<!-- CONTACT -->

## Contributors

👤 **John Hernandez**

- GitHub: [@johnhernandez-code](https://github.com/johnhernandez-code)
- Twitter: [@JohnHernCode](https://twitter.com/JohnHernCode)
- LinkedIn: [John Hernandez](https://www.linkedin.com/in/john-hernandez-56a7821b8/)

## :handshake: Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/JohnHernCode/React-Redux-Capstone/issues).

## Show your support

Give a :star: if you like this project!

<!-- ACKNOWLEDGEMENTS -->

## Acknowledgements

- [Microverse](https://www.microverse.org/)
- [React](https://github.com/facebook/create-react-app)
- [HEROKU](https://heroku.com)

## Credits

## License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
