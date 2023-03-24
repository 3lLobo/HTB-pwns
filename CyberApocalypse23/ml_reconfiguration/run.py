import pandas as pd
import matplotlib.pyplot as plt


plt.style.use('dark_background')
plt.rcParams["font.family"] = "monospace"

def main():
  """Let's pwn!
  """
  df = pd.read_csv('points.csv', header=None)
  df.columns = ['temp', 'humid',]

  s_plot = df.plot\
    .scatter(x='temp', y='humid', s=1, c='Green', figsize=(11, 2), title='Temperature vs Humidity',)\
    .get_figure()

  s_plot.savefig('flag.png', bbox_inches='tight')

  print('Pwned! \nOpen flag.png to see the flag 🎌')


if __name__ == '__main__':
  main()
