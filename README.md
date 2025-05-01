<<<<<<< HEAD
# Decentralized-Voting-System-Using-Ethereum-Blockchain

#### The Decentralized Voting System using Ethereum Blockchain is a secure and transparent solution for conducting elections. Leveraging Ethereum's blockchain technology, this system ensures tamper-proof voting records, enabling users to cast their votes remotely while maintaining anonymity and preventing fraud. Explore this innovative project for trustworthy and decentralized voting processes.
#### For a cool demo of this project watch this [YouTube video](https://www.youtube.com/watch?v=a5CJ70D2P-E).
#### For more details checkout [Project Report](https://github.com/Krish-Depani/Decentralized-Voting-System-Using-Ethereum-Blockchain/blob/main/Project%20Report%20github.pdf).
#### PS: This project is not maintained anymore.

## Features
-  Implements JWT for secure voter authentication and authorization.
-  Utilizes Ethereum blockchain for tamper-proof and transparent voting records.
-  Removes the need for intermediaries, ensuring a trustless voting process.
-  Admin panel to manage candidates, set voting dates, and monitor results.
-  Intuitive UI for voters to cast votes and view candidate information.

## Requirements
- Node.js (version – 18.14.0)
- Metamask
- Python (version – 3.9)
- FastAPI
- MySQL Database (port – 3306)

## Screenshots

![Login Page](https://github.com/Krish-Depani/Decentralized-Voting-System-Using-Ethereum-Blockchain/blob/main/public/login%20ss.png)

![Admin Page](https://github.com/Krish-Depani/Decentralized-Voting-System-Using-Ethereum-Blockchain/blob/main/public/admin%20ss.png)

![Voter Page](https://github.com/Krish-Depani/Decentralized-Voting-System-Using-Ethereum-Blockchain/blob/main/public/index%20ss.png)

## Installation

1. Open a terminal.

2. Clone the repository by using the command
        
        git clone https://github.com/Krish-Depani/Decentralized-Voting-System-Using-Ethereum-Blockchain.git

3. Download and install [Ganache](https://trufflesuite.com/ganache/).

4. Create a workspace named <b>developement</b>, in the truffle projects section add `truffle-config.js` by clicking `ADD PROJECT` button.

5. Download [Metamask](https://metamask.io/download/) extension for the browser.

6. Now create wallet (if you don't have one), then import accounts from ganache.

7. Add network to the metamask. ( Network name - Localhost 7575, RPC URl - http://localhost:7545, Chain ID - 1337, Currency symbol - ETH)

8. Open MySQL and create database named <b>voter_db</b>. (DON'T USE XAMPP)

9. In the database created, create new table named <b>voters</b> in the given format and add some values.

           CREATE TABLE voters (
           voter_id VARCHAR(36) PRIMARY KEY NOT NULL,
           role ENUM('admin', 'user') NOT NULL,
           password VARCHAR(255) NOT NULL
           );
   <br>

        +--------------------------------------+-------+-----------+
        | voter_id                             | role  | password  |
        +--------------------------------------+-------+-----------+
        |                                      |       |           |
        +--------------------------------------+-------+-----------+

12. Install truffle globally
    
        npm install -g truffle

14. Go to the root directory of repo and install node modules

        npm install

15. Install python dependencies

        pip install fastapi mysql-connector-python pydantic python-dotenv uvicorn uvicorn[standard] PyJWT

## Usage

#### Note: Update the database credentials in the `./Database_API/.env` file.

1. Open terminal at the project directory

2. Open Ganache and it's <b>development</b> workspace.

3. open terminal in project's root directory and run the command

        truffle console
   then compile the smart contracts with command

        compile
   exit the truffle console

5. Bundle app.js with browserify
    
        browserify ./src/js/app.js -o ./src/dist/app.bundle.js

2. Start the node server server
    
        node index.js

3. Navigate to `Database_API` folder in another terminal
    
        cd Database_API
    then start the database server by following command

        uvicorn main:app --reload --host 127.0.0.1

4. In a new terminal migrate the truffle contract to local blockchain
    
        truffle migrate

You're all set! The Voting app should be up and running now at http://localhost:8080/.<br>
For more info about usage checkout [YouTube video](https://www.youtube.com/watch?v=a5CJ70D2P-E).

## Code Structure

    ├── blockchain-voting-dapp            # Root directory of the project.
        ├── build                         # Directory containing compiled contract artifacts.
        |   └── contracts                 
        |       ├── Migrations.json       
        |       └── Voting.json           
        ├── contracts                     # Directory containing smart contract source code.
        |   ├── 2_deploy_contracts.js     
        |   ├── Migrations.sol            
        |   └── Voting.sol                
        ├── Database_API                  # API code for database communication.
        |   └── main.py                   
        ├── migrations                    # Ethereum contract deployment scripts.
        |   └── 1_initial_migration.js    
        ├── node_modules                  # Node.js modules and dependencies.
        ├── public                        # Public assets like favicon.
        |   └── favicon.ico               
        ├── src                           
        |   ├── assets                    # Project images.
        |   |   └── eth5.jpg              
        |   ├── css                       # CSS stylesheets.
        |   |   ├── admin.css             
        |   |   ├── index.css             
        |   |   └── login.css             
        |   ├── dist                      # Compiled JavaScript bundles.
        |   |   ├── app.bundle.js         
        |   |   └── login.bundle.js       
        |   ├── html                      # HTML templates.
        |   |   ├── admin.html            
        |   |   ├── index.html            
        |   |   └── login.html            
        |   └── js                        # JavaScript logic files.
        |       ├── app.js                
        |       └── login.js              
        ├── index.js                      # Main entry point for Node.js application.
        ├── package.json                  # Node.js package configuration.
        ├── package-lock.json             # Lockfile for package dependencies.
        ├── README.md                     # Project documentation.
        └── truffle-config.js                    # Truffle configuration file.

## License

The code in this repository is licensed under the MIT License. This means that you are free to use, modify, and distribute the code, as long as you include the original copyright and license notice. For more information about LICENSE please click [here](https://github.com/Krish-Depani/Decentralized-Voting-System-Using-Ethereum-Blockchain/blob/main/LICENSE).

## If you like this project, please give it a 🌟.
## Thank you 😊.
=======
### VoteChain - A Decentralized Voting Platform on Ethereum Blockchain 🗳️

VoteChain is an innovative and secure decentralized voting system built on the Ethereum blockchain. This platform is designed to ensure transparency, trust, and immutability in the voting process while maintaining voter anonymity. By leveraging blockchain technology, VoteChain eliminates fraud and guarantees tamper-proof election records.

---

## Key Features ✨

- **Blockchain-Driven Transparency**: Harnesses Ethereum's blockchain for secure and immutable voting records.
- **Voter Authentication**: Implements JWT for robust voter verification and authorization.
- **Decentralized Trustless System**: Removes intermediaries to deliver a seamless and unbiased voting process.
- **Admin Controls**: Offers an admin panel to manage candidates, set voting schedules, and monitor results.
- **User-Friendly Interface**: Provides an intuitive UI for both administrators and voters.

---

## Requirements 📋

To run VoteChain, ensure the following dependencies are installed:
- **Node.js**: Version 18.14.0 or higher
- **Python**: Version 3.9
- **Metamask**: Browser extension for Ethereum wallets
- **FastAPI**: For API development
- **MySQL**: Database configuration (port 3306)
- **Ganache**: Local blockchain environment for Ethereum

---

## Installation Guide 🛠️

Follow these steps to set up the VoteChain system:

1. Clone the repository:
   ```bash
   git clone https://github.com/Kirankumarvel/VoteChain.git
   ```

2. Download and install [Ganache](https://trufflesuite.com/ganache/). Create a workspace named `development`, and add the `truffle-config.js` file to the project.

3. Install the [Metamask](https://metamask.io/download/) extension in your browser. Create a wallet, import accounts from Ganache, and configure the network:
   - **Network Name**: Localhost 7575  
   - **RPC URL**: http://localhost:7545  
   - **Chain ID**: 1337  
   - **Currency Symbol**: ETH  

4. Set up the database:
   - Open MySQL and create a database named `voter_db`.
   - Create a `voters` table with the following schema and add sample values:
     ```sql
     CREATE TABLE voters (
       voter_id VARCHAR(36) PRIMARY KEY NOT NULL,
       role ENUM('admin', 'user') NOT NULL,
       password VARCHAR(255) NOT NULL
     );
     ```

5. Install required global dependencies:
   ```bash
   npm install -g truffle
   ```

6. Navigate to the repository root and install Node.js modules:
   ```bash
   npm install
   ```

7. Install Python dependencies:
   ```bash
   pip install fastapi mysql-connector-python pydantic python-dotenv uvicorn uvicorn[standard] PyJWT
   ```

---

## Usage Instructions 🚀

1. Update the database credentials in the `./Database_API/.env` file.

2. Start the Ganache workspace and compile the smart contracts:
   ```bash
   truffle compile
   ```

3. Bundle the JavaScript files using Browserify:
   ```bash
   browserify ./src/js/app.js -o ./src/dist/app.bundle.js
   ```

4. Start the Node.js server:
   ```bash
   node index.js
   ```

5. In another terminal, navigate to the `Database_API` folder and start the FastAPI server:
   ```bash
   cd Database_API
   uvicorn main:app --reload --host 127.0.0.1
   ```

6. Deploy the smart contracts to the local blockchain:
   ```bash
   truffle migrate
   ```

7. Access the application at [http://localhost:8080/](http://localhost:8080/). 🎉

---

## Code Structure 📂

```plaintext
├── blockchain-voting-dapp            # Root directory of the project
    ├── build                         # Compiled contract artifacts
    ├── contracts                     # Smart contract source code
    ├── Database_API                  # FastAPI code for database communication
    ├── migrations                    # Ethereum contract migration scripts
    ├── node_modules                  # Node.js dependencies
    ├── public                        # Public assets
    ├── src                           
    │   ├── assets                    # Images and graphics
    │   ├── css                       # Stylesheets
    │   ├── dist                      # Compiled JavaScript bundles
    │   ├── html                      # HTML templates
    │   └── js                        # JavaScript logic files
    ├── index.js                      # Entry point for Node.js application
    ├── package.json                  # Node.js package configuration
    ├── truffle-config.js             # Truffle configuration file
    ├── README.md                     # Project documentation
```

---

## Screenshots 📸

![Login Page](#)  
![Admin Page](#)  
![Voter Page](#)

---

## License ⚖️

This project is licensed under the MIT License. Feel free to use, modify, and distribute the code while retaining the original copyright notice. For detailed licensing information, see the [LICENSE](blob/main/LICENSE) file.

---

## Support & Contributions 🤝

If you find this project useful, consider giving it a 🌟 to show your support! Contributions are welcome—feel free to fork the repository and submit pull requests.

---

Thank you for exploring VoteChain! 😊
>>>>>>> 38bd2d7077d47abfab7bb8696a181b2f696a7b38
