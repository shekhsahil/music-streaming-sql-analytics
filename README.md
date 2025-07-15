# 🎧 Music Streaming Data Analytics (SQL Project)

This project simulates a **music streaming platform** with a structured PostgreSQL database. It analyzes user listening behavior, popular tracks, artists, and engagement metrics using real-world SQL queries.

---

## 📌 Objective

Build and query a relational database to:

- Track song plays by users
- Analyze artist popularity and skipped songs
- Find peak usage trends
- Showcase data insights using **intermediate to advanced SQL**

---

## 🗃️ Database Schema

There are **four main tables**:

### `USERS`
Stores user details.

| Column       | Type         |
|--------------|--------------|
| user_id      | SERIAL (PK)  |
| name         | VARCHAR(100) |
| city         | VARCHAR(100) |
| signup_date  | DATE         |

---

### `ARTISTS`
Stores music artist info.

| Column       | Type         |
|--------------|--------------|
| artist_id    | SERIAL (PK)  |
| artist_name  | VARCHAR(100) |
| genre        | VARCHAR(50)  |

---

### `TRACKS`
Stores song information.

| Column       | Type         |
|--------------|--------------|
| track_id     | SERIAL (PK)  |
| title        | VARCHAR(100) |
| artist_id    | INT (FK)     |
| duration_sec | INT          |

---

### `LISTENING_HISTORY`
Tracks song plays by users.

| Column           | Type         |
|------------------|--------------|
| listen_id        | SERIAL (PK)  |
| user_id          | INT (FK)     |
| track_id         | INT (FK)     |
| listen_date      | DATE         |
| device           | VARCHAR(50)  |
| play_duration_sec| INT          |

---

## 📊 Insights via SQL Queries

| No. | Description |
|-----|-------------|
| 1️⃣ | **Top 3 most played songs** |
| 2️⃣ | **Top 5 artists by play count** |
| 3️⃣ | **Total listening time by each user (in minutes)** |
| 4️⃣ | **Monthly play trends** |
| 5️⃣ | **Skipped songs** – where play duration < 60% of track |
| 6️⃣ | **Users who fully completed songs** with track titles |
| 7️⃣ | **Users who listened to all songs by an artist** |
| 8️⃣ | **Peak listening day** (max plays on a date) |

