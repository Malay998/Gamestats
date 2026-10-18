# 🎮 GameStats — Performance Intelligence

### _Read the numbers. Find the edge._

**GameStats** is a gaming performance analytics dashboard built with Python, Pandas, Plotly and Streamlit. It transforms gaming statistics and recorded hardware metrics into interactive visualisations, player comparisons and data-driven insights — all wrapped in a customisable, futuristic interface.

Explore player performance. Investigate hardware behaviour. Discover patterns hidden in the data.

---

## ✦ The Experience

GameStats combines analytical functionality with a premium, gaming-inspired interface.

- 🎨 **32 curated themes** across four visual collections.
- 🌓 **Two customisation modes:** Palette Only and Full Experience.
- 📊 **Interactive analytics** for gaming performance and hardware metrics.
- ⚔️ **Player rankings and comparisons** across multiple performance indicators.
- 🧠 **Signal Briefing** with observations derived from the currently filtered dataset.
- 🖥️ **Hardware Lab** for exploring FPS, utilisation and temperature metrics.
- 🔬 **Correlation analysis** to investigate relationships between recorded variables.
- 🗂️ **Data Explorer** with search, data-quality checks and CSV exports.
- ✨ **Subtle micro-interactions**, refined typography and accessible motion preferences.
- 📁 **CSV support** for exploring compatible datasets.

---

## 🎨 Make It Yours

GameStats features four curated theme collections, each designed for a different visual preference.

| Collection | Visual direction | Examples |
|---|---|---|
| 🎮 Game Worlds | Iconic gaming-inspired aesthetics | GTA V, VALORANT, Counter-Strike 2, Cyberpunk |
| 🌌 Neon & Sci-Fi | Futuristic colours and cinematic interfaces | Neon Noir, Deep Space, Holographic |
| 🌿 Earth & Luxe | Muted, natural and premium palettes | Moss & Stone, Sandstone, Olive & Brass |
| ◻️ Studio & Minimal | Clean, understated and sophisticated styles | Obsidian, Ivory & Ink, Moonstone |

Each collection contains eight themes, giving you **32 curated themes** in total.

### Two ways to customise

**Palette Only**

Change the colour palette while retaining a consistent interface structure.

**Full Experience**

Change the visual character of the interface, including typography, panel styling and spacing, according to the selected collection.

The design focuses on readable text, balanced contrast, restrained highlights and subtle interactions rather than excessive glow or distracting motion.

> Themes change the presentation of the dashboard, not the underlying dataset or analytical results.

---

## 📊 Explore the Command Menu

### 01 — Command Center

Your overview of gaming performance.

- Review key performance indicators.
- Explore average FPS, KDA, win rate and score.
- Inspect player and session statistics.
- Read automatically generated observations from the filtered data.

**Purpose:** Understand the overall performance picture at a glance.

### 02 — Player Rankings

Compare player performance using different metrics.

- Rank players by score, KDA, FPS, kills, win rate or wins.
- Explore player statistics.
- Compare two players side by side.

**Purpose:** Identify performance differences and understand where players stand across selected metrics.

### 03 — Hardware Lab

Explore the hardware metrics recorded in the dataset.

- Investigate FPS distributions.
- Examine recorded GPU temperature.
- Compare CPU/GPU utilisation with frame rates.

**Purpose:** Explore how recorded hardware metrics vary alongside gaming performance.

### 04 — Intel & Correlations

Investigate statistical relationships in the data.

- Explore a correlation heatmap.
- Analyse relationships between numeric variables.
- Compare performance scores across game modes.

**Purpose:** Identify patterns worth investigating without assuming that correlation proves causation.

### 05 — Data Explorer

Inspect the underlying records.

- Search the dataset.
- Review columns and data types.
- Check missing values and potential data-quality issues.
- Export data for further analysis.

**Purpose:** Make the analysis transparent and let users inspect the records behind the charts.

---

## 🧠 Technology Stack

| Technology | Role |
|---|---|
| Python | Core application logic |
| Pandas | Data loading, filtering and analysis |
| Streamlit | Interactive web application |
| Plotly | Interactive charts and visualisations |
| CSS | Custom styling and interface polish |
| CSV | Dataset storage and input |

---

## 📂 Project Structure

```text
GameStats/
├── app.py
├── requirements.txt
├── README.md
├── .gitignore
├── run_gamestats.bat
└── data/
    ├── gta5_cleaned_data.csv
    ├── game_stats.csv
    ├── gta5_correlation_matrix.csv
    ├── gta5_descriptive_statistics.csv
    ├── gta5_game_mode_analysis.csv
    └── gta5_player_leaderboard.csv
```

---

## 🚀 Getting Started

### Prerequisites

- Python 3.10 or newer
- Git (optional, for cloning the repository)
- A web browser

### Option 1 — Run on Windows

**1. Clone the repository**

Replace `YOUR_USERNAME` with your GitHub username.

```bash
git clone https://github.com/YOUR_USERNAME/GameStats.git
cd GameStats
```

**2. Create a virtual environment**

```bash
py -m venv .venv
```

**3. Activate the environment**

```bash
.venv\Scripts\activate
```

**4. Install dependencies**

```bash
python -m pip install -r requirements.txt
```

**5. Launch GameStats**

```bash
python -m streamlit run app.py
```

The application will open in your browser. If it doesn't, open the local URL printed in your terminal.

**Alternative:** If you downloaded the project ZIP, extract it and double-click `run_gamestats.bat`.

### Option 2 — Deploy with Streamlit Community Cloud

1. Push the project to a GitHub repository.
2. Ensure `app.py`, `requirements.txt` and the complete `data/` folder are committed.
3. Open [Streamlit Community Cloud](https://share.streamlit.io/).
4. Create a new app and connect your repository.
5. Select the `main` branch and set the main file path to `app.py`.
6. Deploy and wait for the dependencies to install.

---

## 📁 Dataset & Data Integrity

The supplied dataset contains **300 records and 19 columns** in `gta5_cleaned_data.csv`.

The data includes player statistics, game modes, kills, deaths, assists, wins, match counts, playtime, FPS measurements, recorded hardware metrics, score, KDA and win rate.

GameStats attempts to load its default dataset from the `data/` directory and supports compatible CSV uploads through the sidebar.

### Important limitations

- The supplied records may be synthetic or sample data; they should not be interpreted as verified real-world player results.
- Hardware metrics are read from the dataset. GameStats does **not** currently monitor live CPU/GPU sensors.
- The application does not automatically retrieve live match statistics from GTA V, VALORANT or Counter-Strike.
- Correlation indicates statistical association, not proof of causation.
- Potentially invalid values should be investigated rather than silently treated as correct measurements.

---

## 🔍 Why GameStats?

Gaming generates data that can tell us more than just who won a match.

GameStats explores how player statistics, game modes and recorded hardware metrics can be analysed together. By combining interactive visualisation with data exploration, the project demonstrates how a Python analytics workflow can become an accessible application.

The goal is simple:

**Make gaming data easier to explore, understand and communicate.**

---

## 🛠️ Troubleshooting

| Issue | What to check |
|---|---|
| No dataset found | Confirm the expected CSV files are inside `data/`. |
| Missing Python module | Activate the virtual environment and install `requirements.txt`. |
| Dashboard fails to launch | Check the terminal for the complete error message. |
| Theme fonts do not load | Check internet access; system font fallbacks are available. |
| Cloud deployment fails | Verify the main file path, dependencies and committed datasets. |

---

## 👾 Project Details

**Project:** GameStats — Performance Intelligence  
**Category:** Gaming Analytics · Data Analysis · Data Visualisation  
**Built with:** Python · Pandas · Plotly · Streamlit

*Explore the data. Understand the patterns. Find the edge.*
