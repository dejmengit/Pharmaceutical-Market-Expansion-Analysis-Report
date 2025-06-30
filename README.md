**About the Project**
The World Happiness Report is an annual publication ranking 155+ countries by happiness levels, first released in 2012. Produced by the UN Sustainable Development Solutions Network, it has become a crucial benchmark for policymakers to evaluate national progress beyond economic indicators alone.


**Problem Statement:**
Governments and policymakers lack actionable insights about which specific factors most significantly impact national happiness levels and how to prioritize limited resources for maximum well-being improvement. 
With competing demands on budgets, decision-makers need data-driven guidance on whether to invest in economic growth, social programs, healthcare, or governance reforms to enhance citizen happiness.

**Key Questions:**
What are the most influential drivers of happiness across different regions?
How do developing and developed countries differ in their happiness profiles?
Which nations show unexpected happiness patterns (high residuals) that challenge conventional wisdom?

**Research Hypotheses**

**Primary Hypothesis**
"Economic factors (GDP) dominate happiness in developing nations, while social factors (freedom, generosity) matter more in developed countries"

**Secondary Hypotheses**
Regional Patterns Hypothesis:
"Nordic countries maintain high rankings due to balanced performance across all factors, not just social support"

Policy Effectiveness Hypothesis:
"Countries with improving corruption perceptions show faster happiness growth than those focusing only on GDP"

Cultural Residual Hypothesis:
"Latin American countries will show consistently positive residuals, suggesting unmeasured cultural influences"

Threshold Effect Hypothesis:
"GDP impacts happiness only up to $20,000/capita, after which other factors dominate"

This project analyzes the **World Happiness Report** data through a complete data pipeline:
- **Database design** (SQL schema)
- **ETL process** (Python data cleaning/loading)
- **Exploratory analysis** (SQL queries)
- **Visual storytelling** (Jupyter Notebook with insights)

**About the Dataset**
The World Happiness Report ranks countries by happiness levels based on Gallup World Poll data (2013-2017). Governments and organizations use these metrics to inform policy decisions.

**Key Metrics**
- **Happiness Score** (0-10 scale)
- Six contributing factors:
  - GDP per capita
  - Social support (Family)
  - Healthy life expectancy
  - Freedom to make life choices
  - Generosity
  - Perceptions of corruption
 

Business Case:
We are a pharmaceutical company seeking to expand our antidepressant sales in markets with stable governance (low corruption), strong economies (high GDP per capita), and robust social support systems — factors that correlate with better healthcare infrastructure and higher purchasing power. Using the World Happiness Report 2019 dataset, we will analyze these variables alongside overall happiness scores to identify countries where demand for mental health treatments may be high and market conditions favorable for growth.

Possible Hypothesis: 
"Countries with high GDP, low corruption, and strong social support—but middling happiness scores (5.0–6.5)—represent optimal markets for antidepressant sales due to unmet mental health needs despite favorable
socioeconomic conditions."
