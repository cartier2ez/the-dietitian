# Welcome to Dietitian 👋🍃

The Dietitian App is designed to help consumers make informed choices about the food products they
buy. Users can access ratings based on nutritional value and ingredient safety by scanning barcodes.

## Prerequisites

- The app requires a MySQL server to be running
  - If you don't have MySQL, then you can install it with homebrew (MAC ONLY), Windows users can install it on MySQL website here https://dev.mysql.com/downloads/mysql/
- Set up the correct environment variables in .env files for the server and app
	- We provide some default values in .env.example files, but it's your responsibility to make sure they match your
	  setup
	- Copy the contents of both .env.example file into a .env file in their respective folders (server folder and expo_app folder) and then fill the new
	  files out
## Notes

- You can find relevant commands for running the server and app in the server/package.json and expo_app/package.json files respectively


## Setting Up

1. Set up the MySQL database (make sure to change the values to your mysql user)

    ```bash
    cd expo-app/data/database
    mysql -u YOUR_MYSQL_USERNAME -p -e "source user.sql;source item.sql;source Paul.sql;source WTRMLNWTR.sql;"
    ```

2. Start the server (Change 'npm run server' to 'npm run server-nodemon' while developing to see changes reflected on
   save)

   ```bash
   cd server
   npm install
   npm run server
   ```

3. Start the app (change 'npm run start' to 'npm run tunnel' if facing connectivity issues or while at USF)

   ```bash
   cd expo-app
   npm install
   npm run start
   ```

4. Click on the link in the expo terminal or open "localhost:8081" in your browser

## Contributing

- NOTE: When contributing to the project, pick issues you feel you can complete, we have a large team with a variety of
  skillsets.
  Do what you can!
- Push your changes frequently!
- Have meaningful commit messages.
- When contributing to the project, we will always use a unique "feature" branch
- Always create a branch of the project to work on an issue.
- If your changes will be somewhat significant, create an issue before branching the project.
- Try to only have one branch per issue!
- When creating an issue, add the appropriate tags to it.
- If you need extra help with your issue, tag [Dante](https://github.com/dante-data-science)
  and [Paul](https://github.com/PixenKnight), so we can delegate extra help on the task.

### PR Best Practices

- When contributing to the project, pull requests must be approved by project leads.
- When merging back to master, make sure to make a pull request before actually merging.
- To merge, always Squash & Merge your approved pull requests.

If you have questions, please reach out to **Dante Thomas**
([@dante-data-science](https://github.com/dante-data-science))
