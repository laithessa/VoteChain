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

