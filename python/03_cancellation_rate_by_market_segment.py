"""
Hotel Booking Analysis
Visualization: Cancellation Rate by Market Segment

Purpose:
- Compare cancellation behavior across different market segments
"""

import pandas as pd
import matplotlib.pyplot as plt

# Load data
df = pd.read_csv("../data/hotel_bookings_dashboard.csv")

# Calculate cancellation rate
cancel_rate = (
    df.groupby("market_segment_clean")["is_canceled"]
      .mean()
      .sort_values(ascending=False)
)

# Plot
plt.figure(figsize=(8, 5))
plt.bar(cancel_rate.index, cancel_rate.values)
plt.title("Cancellation Rate by Market Segment")
plt.xlabel("Market Segment")
plt.ylabel("Cancellation Rate")
plt.xticks(rotation=45)
plt.ylim(0, 1)
plt.tight_layout()
plt.show()

