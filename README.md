# Options & Volatility Dashboard

Streamlit Python webapp for options pricing and volatility analysis and such

## Live page

**[Access the app here](https://optionsandsuch.streamlit.app)** 

## Features

1. **Black-Scholes Calculator**: Calculate option prices and Greeks
2. **Implied Volatility Calculator**: Extract implied volatility from market prices  
3. **Volatility Surface**: Visualize 3D volatility surfaces

## Status

**Successfully deployed on Streamlit Community Cloud**  
**URL**: [optionsandsuch.streamlit.app](https://optionsandsuch.streamlit.app)  
**Status**: Ready for public use

## Local Development

### Installation

```bash
pip install -r requirements.txt
```

### Usage

```bash
streamlit run app.py
```

Open your browser to `http://localhost:8501` to access the dashboard.

## Tools Overview

- **Black-Scholes**: Classic option pricing with Delta, Gamma, Theta, and Vega
- **Implied Vol**: Reverse-engineer volatility from market option prices
- **Vol Surface**: Interactive 3D visualization of volatility across strikes and expiries
