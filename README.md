# GameStats — Performance Intelligence

A cinematic Streamlit dashboard for gaming-session analytics and hardware metrics, with **32 curated themes across four collections**. Choose a collection and theme in the sidebar, then select one of two theme behaviours: **Palette only** changes colours while keeping the interface structure consistent; **Full experience** also changes typography, panel shape, spacing character, and other visual details by collection. The visual system uses softer accent colours, readable secondary text, restrained glow effects, subtle pop/hover feedback, and reduced-motion support to reduce eye strain. The Command Menu has a built-in ? guide explaining each section, how it works, and why to use it.

### Theme collections
- **Game Worlds (8):** Los Santos / GTA V, Protocol / VALORANT, Counter-Strike 2, Night City / Cyberpunk, The Outlands / Apex, Overworld / Minecraft, The Lands Between / Elden Ring, Red Dead / Frontier.
- **Neon & Sci-Fi (8):** Neon Noir, Synthwave Dusk, Arctic Cyber, Plasma Core, Deep Space, Holographic, Circuit Garden, Quantum Blue.
- **Earth & Luxe (8):** Moss & Stone, Sandstone, Forest Retreat, Terracotta Studio, Olive & Brass, Midnight Walnut, Desert Dusk, Slate & Sage.
- **Studio & Minimal (8):** Obsidian, Graphite, Ivory & Ink, Midnight Blue, Burgundy Velvet, Espresso, Moonstone, Coastal Mist.

Themes affect presentation only. The supplied dataset remains the same regardless of the selected theme. Web fonts load from Google Fonts when internet access is available; system fallbacks are included.
## Features
- Command Center with FPS, KDA, win rate, score, sessions, player count and hardware KPI cards
- Player rankings by score, KDA, FPS, kills, win rate or wins, plus a two-player comparison view
- Explainable signal briefing based on currently filtered data
- Broad sanity checks for FPS, win rate, CPU/GPU usage and GPU temperature; flagged values are not automatically changed
- Hardware Lab with FPS and temperature distributions and utilization comparisons
- Intel & Correlations with a correlation heatmap and score-by-mode analysis
- Data Explorer with text search, data-quality details and CSV exports
- Sidebar filters and compatible CSV upload
- Command Menu help popover explaining all five pages and shared controls
- Subtle hover highlights and micro-interactions, with reduced-motion support
- Robust default dataset discovery from `data/` and the project root

## Project structure
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

## Run on Windows 10
1. Install Python 3.10 or newer from https://www.python.org/downloads/. During setup, enable **Add Python to PATH**.
2. Extract this project folder.
3. Double-click `run_gamestats.bat`.
4. Wait for the app to open in your browser.

If needed, open Command Prompt in the project folder and run:
```bat
py -m venv .venv
.venv\Scripts\activate
py -m pip install -r requirements.txt
py -m streamlit run app.py
```

## Deploy with GitHub + Streamlit Community Cloud
1. Upload the project files and the complete `data/` folder to GitHub. Do **not** upload `.venv`.
2. In Streamlit Community Cloud, create an app from your repository, select branch `main`, and set the main file path to `app.py`.
3. Deploy. Streamlit installs dependencies from `requirements.txt`.

## Dataset behaviour
The app loads `data/gta5_cleaned_data.csv` first, then `data/game_stats.csv`. It also supports those filenames at the project root as a fallback. A CSV can also be uploaded from the sidebar.

The provided sample dataset contains 300 rows. Treat its readings as sample data; the app does not read live CPU/GPU sensors and does not currently connect to a game API.

## Troubleshooting
- **No dataset found:** ensure `data/gta5_cleaned_data.csv` or `data/game_stats.csv` is committed to GitHub inside `data/`.
- **ModuleNotFoundError:** confirm `requirements.txt` is committed and wait for Streamlit Cloud to install it.
- **App did not refresh:** open the Streamlit app menu and use reboot/restart if available, or wait for the latest GitHub commit to deploy.
