# ML Reconfiguration

A really easy one! 


## The Story

>As Pandora set out on her quest to find the ancient alien relic, she knew that the journey would be treacherous. The desert was vast and unforgiving, and the harsh conditions would put her cyborg body to the test. Pandora started by collecting data about the temperature and humidity levels in the desert. She used a scatter plot in an Orange Workspace file to visualize this data and identified the areas where the temperature was highest and the humidity was lowest. Using this information, she reconfigured her sensors to better withstand the extreme heat and conserve water. But, a second look at the data revealed something otherwordly, it seems that the relic's presence beneath the surface has scarred the land in a very peculiar way, can you see it?


## Setup

Here we start with a simple `zip` file containing there files:
- `analysis.ows`
- `points.csv`


### Dependencies

Install 2 python libs:
```bash
poetry install

### Run

Run the script:
```bash
poetry run python run.py
```

## The Writeup

The `points.csv` file contains data-points for the temperature and humidity in the desert.
Intuitively we want to visualize this data.

> `Pandas` is a great library for data analysis and exploration, leaning on the SQL.

We use it to process the data.

> `Matplotlib` is widely used for scientific data visualization and has integration with `Pandas`.

Nice, so we know what to use for the visualization 🦙

First up we 2 style settings:
- set the font to `mono` to have it look more hacky.
- switch to dark mode. Should be the default anyways!

Next we read in the data and specify the columns names.
Then we plot the data into a scatter plot, using the `temperature` as the x-axis and `humidity` as the y-axis.
The figure ratio is set to `11:2` to give enough horizontal space for the flag.

## Flag

Save the figure to `plot.png` and we're done!
Open the image and you'll see the flag, congrats 🎉





## OPEN QUESTIONS

- [ ] What is the `analysis.ows` file for?
- [ ] Which program is supposed to open `.ows` files?
  