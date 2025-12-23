"""
Hotel Booking Analysis
Visualization: Bookings by Market Segment

Purpose:
- Understand which market segments generate the highest number of bookings
"""

import pandas as pd
import matplotlib.pyplot as plt

# Load data
df = pd.read_csv("hotel_bookings_dashboard.csv")

# Aggregate data
segment_counts = df["market_segment_clean"].value_counts()

# Plot
plt.figure(figsize=(8, 5))
plt.bar(segment_counts.index, segment_counts.values)
plt.title("Bookings by Market Segment")
plt.xlabel("Market Segment")
plt.ylabel("Number of Bookings")
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()
