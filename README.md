# Cyclistic Bike Share Capstone

Case study analyzing Cyclistic bike share ride data to identify behavioral differences between annual members and casual riders, using SQL (BigQuery) and Power BI. The goal is to inform a marketing strategy for converting casual riders into annual members.

## Watch the Walkthrough

**[Watch the full narrated presentation on YouTube](https://youtu.be/ZV5e9gMn3MI)**

## Project Summary

- **Business task:** Determine how annual members and casual riders use Cyclistic bikes differently, to support a campaign aimed at converting casual riders into members.
- **Data source:** Cyclistic historical trip data, cleaned and combined in BigQuery.
- **Tools used:** SQL (Google BigQuery), Power BI, Excel.
- **Deliverable:** A presentation with visualizations and a data driven recommendation for the marketing team.

## Key Findings

- Out of 387.79K total riders, annual members make up 71.3 percent (276.49K) and casual riders make up 28.7 percent (111.3K).
- Casual riders average longer and more variable ride durations than members (mean 18.18 min vs 13.21 min).
- Both rider types favor electric bikes, with casual riders showing an even stronger preference (76.5 percent vs 69.1 percent for members).
- Several top stations overlap between members and casual riders, making them strong candidates for on-site conversion messaging.
- Ridership patterns shift significantly by season, with casual riders increasing weekend rides sharply from January to May.

## Visuals

![General Comparison: Annual Members vs Casual Riders](Cyclistic%20Images/Cyclistic%20Bike%20Share%20-%20Capstone%20%283%29.png)

Casual riders average longer and more variable ride durations than annual members.

> This suggests casual riders are using Cyclistic differently, likely for leisure or one off trips, while members show tighter, more consistent durations, consistent with routine commuting. That distinction is useful for marketing: messaging that emphasizes convenience and cost savings for frequent, predictable trips could be the hook that converts casual riders into members.

![Bike Type Preference](Cyclistic%20Images/Cyclistic%20Bike%20Share%20-%20Capstone%20%284%29.png)

Both rider types favor electric bikes, with casual riders showing an even stronger preference.

![Station Popularity](Cyclistic%20Images/Cyclistic%20Bike%20Share%20-%20Capstone%20%285%29.png)

Top stations differ between members and casual riders, but several stations overlap, making them strong conversion targets.

![Seasonal Comparison](Cyclistic%20Images/Cyclistic%20Bike%20Share%20-%20Capstone%20%286%29.png)

Ridership patterns shift significantly between January and May, especially for casual riders on weekends.

![Conclusion: Actionable Insights](Cyclistic%20Images/Cyclistic%20Bike%20Share%20-%20Capstone%20%287%29.png)

## Recommendation

- Prioritize high overlap stations for conversion messaging:
  - Wilton Ave & Belmont
  - Sheffield Ave & Fullerton
  - Ravenswood Ave & Lawrence
  - Paulina St & Division
- Highlight electric bike availability as a membership perk in campaign messaging.
- Emphasize convenience and cost savings for frequent, predictable trips, since this is the hook most likely to convert casual riders into members.
- Ramp up campaigns during warmer months, when casual ridership surges.
- Scale back winter marketing spend, since casual activity stays consistently low.

## Repository Contents

- `Cyclistic Bike Share - Capstone (1).pptx` — full presentation deck
- `Cyclistic Queries/` — SQL queries used for the analysis in BigQuery
- `Cyclistic Images/` — exported slide images used in this README
- Video walkthrough linked above

## About This Project

This project was completed as the capstone for the Google Data Analytics Certificate. It reflects the full analytics process: asking the right business question, preparing and cleaning the data, analyzing it in SQL, visualizing it in Power BI, and presenting findings with a clear recommendation.
