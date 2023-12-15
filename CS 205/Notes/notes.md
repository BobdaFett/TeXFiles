# CS 205 Final Exam Notes

## Metadata
 - This is literally data about data.
 - Generally this is something like your logical schema, where you may tell your overall database where your
   data is stored or what it is storing.

## Program Data Independence
 - The data is separate from the program that creates and/or reads it.

## Schema
 - Generally referred to as the "blueprint" of a database.
 - This is usually used to design your database and how it all connects together.
 - We generally use the logical schema, however there are also the conceptual schemas and physical database schemas.

## SPARC Model (3 tiers)
 - This stands for Scalable Processor Architecture.
 - External Tier/User Views
 - - Shows the part of the database that is relevant to the user.
 - - Excludes irrelevant data as well as data that the user is not allowed to see.
 - Conceptual Tier
 - - This is a way of describing what data is stored in the database and how the data is related to each user.
 - - Only the DBA works at this level, as it offers a global view of the database.
 - - It is completely independent of the hardware *and* software.
 - Internal Tier
 - - This represents the actual physical implementation of the database.
 - - Deals with the amount of space that is being used, and directly relates to the data storage hardware.
 - - Describes how the data is actually being stored.

## ER Diagrams
  - What are they/what do they mean?
  - - They're a graphical way of representing the logical form of a database.
  - Weak entities
  - - These are relational entities that would not be present if a different table was altered slightly.
  - - Generally they are created to store singleton data - these could be unnecessary and sometimes may be stored within the parent entity.
  - Relationships
  - - Every entity should relate to another.
  - - If they do not relate to each other, then neither should exist.
  - Cardinalities
  - - Cardinality generally relates to the size of something.
  - - In databases, this refers to the number of unique values in a column relative to the number of rows in the same table.
  - - This is generally stored by the database client for when the DBA runs statistics.
  - Associative Entities
  - - These are used to simplify a many-to-many relationship within an ER diagram.
  - - They are inserted within this relationship and serve as a bridge (one-to-many) to the related entities.
  - Keys
  - - These are what make individual rows of data unique within a given table.
  - - Primary keys ensure that the row is a unique data entry, and foreign keys create relations.
  - - Candidate keys generally look like primary keys, and usually tend to be blended together in concept with them.
  - - Primary keys are compared within a relation to ensure that the data entry is unique. There may be no duplicate primary keys.
  - Attributes
  - - Attributes are the columns within the database.
  - - Multi-value attributes generally create very painful queries that cannot function on them. They are not designed for additional queries.
  - - Composite attributes are created using multiple "simple" attributes.

## Rules of Relations
  - Entity integrity for relations - there may be no duplicate row entries and data should not be corrupted.

## Operations on Relations
  - UNION: A set containing the data of two or more relations.
  - JOIN: A cross product with extra rules.
  - PROJECTION: A subset of a relation, containing only specific columns.
  - SELECTION: A subset of a relation.
  - CROSSPRODUCT: The cross product of sets.
  - PRODUCT: Like CROSS PRODUCT, but there is a restriction on the number of sets.

## Types of JOIN
  - Natural JOIN
  - - Creates a JOIN based on the common columns within the two tables being joined.
  - Equijoin
  - - These are done when there is an equality/boolean clause in the WHERE section of a SELECT.
  - Inner join
  - - Joins tables together but only returns the rows that have matching values between both tables.
  - Outer join
  - - Joins tables but returns more of one table as compared to the other, with bias toward a specific side.
  - - Left outer joins create a response that returns all values from the left table in the query, regardless of the right.
  - - Right outer joins create a table that returns all values from the right table in the query, regardless of the left.
  - - These can be thought of as Venn diagrams, and how the left join will return the left circle, etc.

## Normalization
  - Normalization is the process of removing redundancies in data by adding extra relations.
  - Generally used to organize the data within the database.
  - We only go over the first 3 forms:
  - - 1NF: Eliminate repeating groups - Must contain only atmoic values.
  - - 2NF: Eliminate Partial Functional Dependencies - All non-key attributes are functionally dependent upon the primary key.
  - - 3NF: Eliminate Transitive Dependencies - There should not be any non-key attributes that are dependent upon a primary key from a separate relation.

## Data Volume Analysis
  - Data takes up a specific amount of size, along with an extra 4 bytes for memory addresses.
  - INT: 4B
  - CHAR: 1B each, statically. Padding added for whitespace. Good for static length strings.
  - FLOAT: 8B
  - REAL: 8B
  - VARCHAR: 1B each, however variably. No additional padding for whitespace. Good for strings of different lengths.

## Extra
  - Should understand how to use SELECT statements to get a required result.
  - SELECT includes FROM, WHERE, ORDER BY, and LIMIT.
  - Denormalization - if data isn't a problem, then store everything in less tables for a speed boost.
  - Transactions - from start to end, creation and deletion of data along with atomicity.
  - ACID - Atomicity, Consistency, Isolation, Durability. Required for proper data handling.
  - - Atomicity: Transactions are either finished or rolled back. Nothing partial.
  - - Consistency: Changes made within a transaction are consistent with the database constraints. Entity integrity.
  - - Isolation: All transactions should run within an isolated environment. Ensures atomicity and consistency due to no interference.
  - - Durability: Written data stays written. Data will persist even after physical issues with the database, such as power outages.
