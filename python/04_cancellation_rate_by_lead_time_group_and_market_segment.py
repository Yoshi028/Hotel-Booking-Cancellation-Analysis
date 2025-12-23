"""
Hotel Booking Analysis
Visualization: Cancellation Rate by Lead Time Group and Market Segment

Purpose:
- Identify high-risk combinations of lead time and market segment
"""

import pandas as pd
import matplotlib.pyplot as plt

# Load data
df = pd.read_csv("hotel_bookings_dashboard.csv")

# Calculate cancellation rate
pivot_table = (
    df.groupby(["lead_time_group", "market_segment_clean"])["is_canceled"]
      .mean()
      .unstack()
)

# Plot
pivot_table.plot(
    kind="bar",
    figsize=(10, 6)
)

plt.title("Cancellation Rate by Lead Time Group and Market Segment")
plt.xlabel("Lead Time Group")
plt.ylabel("Cancellation Rate")
plt.ylim(0, 1)
plt.legend(title="Market Segment", bbox_to_anchor=(1.05, 1), loc="upper left")
plt.tight_layout()
plt.show()


