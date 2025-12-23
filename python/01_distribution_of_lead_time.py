"""
Hotel Booking Analysis
Visualization: Distribution of Lead Time

Purpose:
- Understand how far in advance customers make bookings
"""

import pandas as pd
import matplotlib.pyplot as plt

# Load data
df = pd.read_csv("../data/hotel_bookings_dashboard.csv")

# Plot
plt.figure(figsize=(8, 5))
plt.hist(df["lead_time"], bins=50)
plt.title("Distribution of Lead Time")
plt.xlabel("Lead Time (Days)")
plt.ylabel("Number of Bookings")
plt.tight_layout()
plt.show()