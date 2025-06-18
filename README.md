# Options Tools (and such)

Python webapp **intended** to be used for options pricing and volatility analysis.

## Features

1. **Black-Scholes Calculator**: Calculate option prices and Greeks
2. **Implied Volatility Calculator**: Extract implied volatility from market prices
3. **Volatility Surface**: Visualize 3D volatility surfaces

## Installation

```bash
pip install -r requirements.txt
```

## Usage

```bash
streamlit run app.py
```

Open your browser to `http://localhost:8501` to access the dashboard (cringe)

## Tools Overview

- **Black-Scholes**: Classic option pricing with Delta, Gamma, Theta, and Vega
- **Implied Vol**: Reverse-engineer volatility from market option prices
- **Vol Surface**: Interactive 3D visualization of volatility across strikes and expiries
