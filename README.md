# FCC PostgreSQL Universe Database

## Overview

This project is part of the FreeCodeCamp curriculum, focusing on creating and managing a PostgreSQL database named `universe`. The database encompasses tables for various celestial entities, including galaxies, stars, planets, and moons, along with their interrelations.

## Features

- **Database Schema:** Defines tables for galaxies, stars, planets, and moons.
- **Data Relationships:** Establishes foreign key constraints to represent hierarchical relationships.
- **Sample Data:** Populates tables with sample records for testing and demonstration.

## Prerequisites

- **PostgreSQL:** Ensure you have PostgreSQL installed. [Download PostgreSQL](https://www.postgresql.org/download/)
- **psql:** Command-line tool for interacting with PostgreSQL.

## Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/sndyjy/fcc-postgres-universedb.git
   cd fcc-postgres-universedb
   ```

2. **Create the Database:**
   ```bash
   createdb universe
   ```

3. **Initialize the Database Schema and Insert Data:**
   ```bash
   psql -d universe -f universe.sql
   ```

## Usage

After setting up the database:

- **Connect to the Database:**
  ```bash
  psql -d universe
  ```

- **Run Queries:** Execute SQL queries to explore the data, such as retrieving all planets in a specific galaxy or listing moons orbiting a particular planet.

## Example Queries

- **List All Galaxies:**
  ```sql
  SELECT * FROM galaxies;
  ```

- **Find Stars in a Specific Galaxy:**
  ```sql
  SELECT * FROM stars WHERE galaxy_id = [galaxy_id];
  ```

- **Retrieve Planets Orbiting a Star:**
  ```sql
  SELECT * FROM planets WHERE star_id = [star_id];
  ```

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request with your enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

