# dieselbrain ⛽🧠

**dieselbrain** is a Python-based data processing pipeline for parsing, cleaning, and analysing vehicle telemetry logs captured from a diesel engine via BimmerLink.

This project started as a personal experiment to explore how my car behaves under real driving conditions — and evolved into a complete data engineering and analysis pipeline. The log data comes with real-world messiness: inconsistent headers, non-uniform time intervals, encoding weirdness, and variable field presence. **dieselbrain** sorts all of this out and turns it into a proper dataset for analysis.

---

## 🚗 Data Source

The input data consists of `.csv` log files captured using an OBD logger with Bimmerlink connected to a diesel-powered BMW. Each file contains one driving session and includes time-series sensor readings like:

- Coolant temperature
- Boost pressure
- Exhaust gas temperatures (DPF, catalyst, etc.)
- DPF soot mass and regeneration status
- Fuel consumption and torque metrics
- Turbo speed, engine speed, gear position
- ...and more

Filenames encode the session timestamp like so:

Log-YYYY-MM-DD--HH-MM-SS.csv


---

## 🧱 Project Goals

- 🧹 **Clean** encoding issues (e.g., stray `Â`, inconsistent `°C`)
- 🔍 **Standardise** and align sensor fields across logs
- 🔁 **Reshape** into long-format time series per log
- 📊 **Enable** cross-log comparisons of boost, regen behaviour, load, etc.
- ⚡ **Build** a solid, extensible codebase in Python using PyCharm

---

## 🔧 Tooling

- 🐍 **Python 3.10+**
- 🧠 **PyCharm** (main IDE)
- 📚 **Pandas** for wrangling
- 📊 **Plotly / Seaborn** (planned)
- 🧪 **Jupyter Notebooks** for exploratory analysis (optional, not central)
- 🐚 bash (local shell), Git for Windows, GitHub

---

## 📁 Project Structure

dieselbrain/
├── logs/ # Raw log CSVs
├── scripts/ # Cleaning, normalisation, utilities
├── notebooks/ # Optional exploratory notebooks
├── dieselbrain/ # Main Python source code (TBD)
├── .gitattributes # Enforce LF line endings
├── .gitignore
└── README.md


---

## 📦 Features

- ✔️ Robust header union across logs
- ✔️ Handles ragged `Time` axes (non-uniform sampling)
- ✔️ Long-format dataset: ready for grouping, filtering, plotting
- ✔️ Padding with `NaN` for missing sensor readings
- ✔️ Git-tracked, clean line endings (`LF`) for full cross-platform sanity

---

## 🚧 Current Status

✅ Raw header cleaning and encoding fixes  
✅ Sensor union logic + normalisation  
🚧 Time-series alignment and grouping  
📊 Visualisation and summarisation coming soon

---

## 🧠 Why This Project?

Because things were getting messy. The logs came from my own car — and I wanted to make sense of things like DPF regeneration, turbo response, and torque trends. Along the way I built a proper data engineering pipeline using tooling I actually use day to day.

---

## 🛠️ Development Notes

Built in **PyCharm**, tested in **Cygwin**, targeting cross-platform usability (Mac/Linux/WSL safe).  

---

## 🛣️ Future Ideas

- [ ] Live plotting for boost, soot, regen etc.
- [ ] Live uploading of logs to a server and pushed to this repo
- [ ] Streamlit app to browse log sessions interactively
- [ ] ML model to predict regen events or torque curves
- [ ] Heatmap: which sensors are present in which logs?

---

## 👋 Author

**Benjamin Smith**  
Diesel enjoyer, log parser, software engineer.

---

## 📜 License

MIT License — use it, break it, do what thou wilt
